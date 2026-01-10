#pragma once

#include <stdint.h>
#include "RegistersDef.h"

struct GameData;

struct ScreenDim
{
    inline static const uint16_t Width = 320;
    inline static const uint16_t Height = 240;
};
// ================== SpriteMeta ==================
struct SpriteMeta
{
    enum SpriteKind
    {
        Ship = 1,
        Bullet = 0
    };

    uint32_t spriteNb : 8;
    uint32_t xSize : 5;
    uint32_t ySize : 5;
    uint32_t xHalf : 5;
    uint32_t yHalf : 5;
    uint32_t kind : 1; // 1=ship, 0=bullet
    uint32_t spriteId : 3;

    SpriteMeta(uint8_t kindIn, uint8_t spriteIdIn, uint8_t spriteNbIn, uint8_t xSizeIn, uint8_t ySizeIn, uint8_t xHalfIn = 0)
        : spriteNb(spriteNbIn), xSize((xSizeIn > 0) ? xSizeIn - 1 : 0), ySize((ySizeIn > 0) ? ySizeIn - 1 : 0),
          xHalf(0), yHalf(0),
          kind(kindIn), spriteId(spriteIdIn)

    {
        if (xHalfIn != 0)
            xHalf = xHalfIn;
        else
            xHalf = xSizeIn / 2;

        yHalf = ySizeIn / 2;
    }
    uint32_t width() const
    {
        return xSize + 1;
    }
    uint32_t height() const
    {
        return ySize + 1;
    }
    SpriteKind spriteKind() const
    {
        return (kind == 1) ? Ship : Bullet;
    }
};

// ================== SpriteCatalog ==================
enum SpriteIds
{
    EmptySprite = 0,
    Enemy1 = 1,
    Enemy2 = 2,
    Enemy3 = 3,
    Enemy4 = 4,
    Enemy5 = 5,
    Bullet = 6,
    PlayerShip = 7,
    EnemiesStart = 1,
    EnemiesEnd = 5
};

inline uint8_t getSpriteId(SpriteIds id)
{
    return static_cast<uint8_t>(id);
}

struct SpriteCatalog
{
    static const int NumSprites = 8;
    SpriteMeta sprites[NumSprites] = {
        SpriteMeta(0, 0, 0, 0, 0),      // Empty sprite
        SpriteMeta(1, 1, 128, 24, 24),  // enemy type 1
        SpriteMeta(1, 2, 129, 24, 24),  // enemy type 2
        SpriteMeta(1, 3, 130, 24, 24),  // enemy type 3
        SpriteMeta(1, 4, 131, 24, 24),  // enemy type 4
        SpriteMeta(1, 5, 132, 24, 24),  // enemy type 5
        SpriteMeta(0, 0, 11, 5, 10, 3), // bullet
        SpriteMeta(1, 6, 133, 24, 24),  // player ship
    };

    const SpriteMeta &findSpriteMeta(uint8_t spriteNb) const
    {
        for (int i = 0; i < NumSprites; i++)
        {
            if (sprites[i].spriteNb == spriteNb)
            {
                return sprites[i];
            }
        }
        return sprites[0]; // Default return first sprite if not found
    }
    const SpriteMeta &getSpriteMeta(uint8_t spriteId) const
    {
        if (spriteId < NumSprites)
        {
            return sprites[spriteId];
        }
        return sprites[0]; // Default return first sprite if not found
    }
};

inline SpriteCatalog globalSpriteCatalog;

// ================== Sprite ==================
struct Sprite
{
    enum RelativePosition
    {
        Left = 0,
        Right,
        Above,
        Below,
        Overlapping
    };

    uint32_t y : 8; // 240
    uint32_t x : 9; // 320
    uint32_t spriteId : 3;
    int32_t yMove : 4;
    int32_t xMove : 4;
    uint32_t speed : 3; // const 5
    uint32_t isUsed : 1;

    Sprite() : x(0), y(0), spriteId(0), isUsed(0), speed(0) {}

    Sprite(uint16_t xIn, uint16_t yIn, uint8_t spriteIdIn, uint8_t speedIn = 5)
        : y(yIn),
          x(xIn),
          spriteId(spriteIdIn),
          yMove{},
          xMove{},
          speed(speedIn),
          isUsed(1)
    {
    }

    void print() const
    {
//        uint32_t addr1 = x + (y * ScreenDim::Width);
//        uint32_t a = addr();
//        uint32_t x = a % ScreenDim::Width;
//        uint32_t y = a / ScreenDim::Width;
//        printf("Sprite SpriteId: %d, x: %d, y: %d addr: %d\n", spriteId, x, y, a);
    }
    uint32_t shipValue() { return spriteId * 5; }

    uint32_t addr() const
    {
        return x + (y * ScreenDim::Width);
    }
    const SpriteMeta &meta() const
    {
        return globalSpriteCatalog.getSpriteMeta(spriteId);
    }

    static uint8_t spriteNb(uint8_t spriteId)
    {
        return globalSpriteCatalog.getSpriteMeta(spriteId).spriteNb;
    }
    uint8_t spriteNb() const
    {
        return meta().spriteNb;
    }

    uint32_t toSpriteReg() const
    {
        SPRITE_REG reg;
        reg.addr = addr();
        reg.pad = 0;
        reg.sprite_nb = spriteNb();

        return (*(uint32_t *)&reg);
    }

    int16_t xNew() const
    {
        return int16_t(x) + xMove;
    }
    int16_t yNew() const
    {
        return int16_t(y) + yMove;
    }
    uint16_t xCenter() const
    {
        return x + meta().xHalf;
    }
    uint16_t xMax() const
    {
        return x + meta().xSize;
    }
    uint16_t yCenter() const
    {
        return y + meta().yHalf;
    }
    uint16_t yMax() const
    {
        return y + meta().ySize;
    }
    uint8_t width() const
    {
        return meta().width();
    }
    uint8_t height() const
    {
        return meta().height();
    }

    RelativePosition relativePositionTo(const Sprite &other) const
    {
        if (xMax() < other.x)
            return Left;
        if (x > other.xMax())
            return Right;
        if (yMax() < other.y)
            return Above;
        if (y > other.yMax())
            return Below;
        return Overlapping;
    }

    bool isCollidingWith(const Sprite &other) const
    {
        return relativePositionTo(other) == Overlapping;
    }

    void calcXmove()
    {

        if (xMove > speed)
            xMove = speed;
        if (xMove < -speed)
            xMove = -speed;
        if (xMove == 0)
        {
            xMove = speed;
        }
    }
    void calcYmove()
    {
        if (yMove > speed)
            yMove = speed;
        if (yMove < -speed)
            yMove = -speed;
        if (yMove == 0)
        {
            yMove = speed;
        }
    }

    void updateNoCheck()
    {
        x += xMove;
        y += yMove;
    }
    // void update(bool reachedEndDied = false)
    // {
    //     int16_t xx = x;
    //     int16_t yy = y;
    //     xx += xMove;
    //     yy += yMove;
    //     if (xx < 0)
    //     {
    //         x = 0;
    //         xMove = 0;
    //         if (reachedEndDied)
    //         {
    //             isUsed = 0;
    //         }
    //         return;
    //     }
    //     if (xx > ScreenDim::Width - width())
    //     {
    //         x = ScreenDim::Width - width();
    //         xMove = 0;
    //         if (reachedEndDied)
    //         {
    //             isUsed = 0;
    //         }
    //         return;
    //     }
    //     if (yy < 0)
    //     {
    //         y = 0;
    //         yMove = 0;
    //         if (reachedEndDied)
    //         {
    //             isUsed = 0;
    //         }
    //         return;
    //     }
    //     if (yy > ScreenDim::Height - height())
    //     {
    //         y = ScreenDim::Height - height();
    //         yMove = 0;
    //         if (reachedEndDied)
    //         {
    //             isUsed = 0;
    //         }

    //         return;
    //     }
    //     x = xx;
    //     y = yy;
    // }
    void draw()
    {
    }
};

// ================== Player ==================
struct Player : public Sprite
{
    uint32_t lives : 4;
    uint32_t score : 16;

    Player() : Sprite(), lives(3), score(0) {}
};
