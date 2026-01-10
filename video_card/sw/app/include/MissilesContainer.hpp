#pragma once

#include "SpriteContainer.hpp"

//#define SoftwareEmulation

// ================== HardwareHandler ==================

#ifdef SoftwareEmulation
struct HardwareHandler
{
    DirectorIO *directorIo{nullptr};
    uint32_t fcCount{};

    bool sendSprite(Sprite &sprite)
    {
        sprite.print();
        return sendSprite(sprite.toSpriteReg());
    }
    bool sendSprite(uint32_t reg)
    {
        SPRITE_REG* spriteReg = (SPRITE_REG*) &reg;
        uint32_t x = spriteReg->addr % ScreenDim::Width;
        uint32_t y = spriteReg->addr / ScreenDim::Width;
        // printf("Sending sprite: %d addr: %d, x: %d, y: %d \n", spriteReg->sprite_nb, spriteReg->addr, x, y);
        waitForStatusReady();
        return true;
    }
    void waitForStatusReady()
    {
    }
};
#else

struct HardwareHandler
{
    DirectorIO *directorIo{nullptr};
    uint32_t fcCount{};

    bool sendSprite(Sprite &sprite)
    {
        sprite.print();
        return sendSprite(sprite.toSpriteReg());
    }
    bool sendSprite(uint32_t reg)
    {
        // SPRITE_REG* spriteReg = (SPRITE_REG*) &reg;
        // uint32_t x = spriteReg->addr % ScreenDim::Width;
        // uint32_t y = spriteReg->addr / ScreenDim::Width;
        // printf("Sending sprite: %d addr: %d, x: %d, y: %d \n", spriteReg->sprite_nb, spriteReg->addr, x, y);

        hdmi_ctrl->SPRITE = reg;
        waitForStatusReady();
        return true;
    }
    void waitForStatusReady()
    {
        // Implementation to wait for hardware status ready
          while (hdmi_ctrl->STATUS != 0);
    }
};

#endif

inline HardwareHandler hardware;

// ================== PlayerState ==================
struct PlayerStats
{
    uint32_t score;
    uint32_t lives;
    uint32_t level;

    PlayerStats() : score(0), lives(3), level(1) {}
};

struct PlayerState
{
    Sprite sprite;
    PlayerStats stats;
    GameData *gameData{};
    const uint16_t xMax = ScreenDim::Width -  sprite.width();

    PlayerState(GameData *gameDataIn)
        : sprite(160, 200, getSpriteId(PlayerShip)),
          stats(),
          gameData(gameDataIn)
    {
        sprite.isUsed = 1;
        sprite.speed = 3;
        sprite.xMove = sprite.speed;
    }
    void update()
    {
        if (sprite.xNew() > xMax) 
        {
            sprite.x = xMax;
            sprite.xMove = -sprite.speed;
            return;
        }
        else if (sprite.xNew() < 0) 
        {
            sprite.x = 0;
            sprite.xMove = sprite.speed;
            return;
        }
        sprite.updateNoCheck();
    }

    void draw()
    {
    	hardware.sendSprite(sprite);
    }
};

// ================== MissilesContainer ==================

struct MissilesContainer
{
    SpriteContainer<500> sprites;
    GameData *gameData{};

    MissilesContainer(GameData *gameDataIn)
        : gameData(gameDataIn)
    {
    }
    bool addMissile(uint16_t xIn, uint16_t yIn, uint8_t spriteIdIn, uint8_t speedIn = 3)
    {
        Sprite sprite(xIn, yIn, spriteIdIn, speedIn);
        return sprites.addSprite(sprite);
    }
    void update()
    {
        for (uint32_t i = 0; i < sprites.size; ++i)
        {
            Sprite &sprite{sprites[i]};
            if (sprite.isUsed)
            {
                sprite.yMove = -sprite.speed;
                int16_t y = sprite.y + sprite.yMove;
                if (y > 0)
                {
                    sprite.updateNoCheck();
                }
                else
                {
                    sprite.isUsed = 0;
                }
            }
        }
    }
    void draw()
    {
        for (uint32_t i = 0; i < sprites.size; ++i)
        {
            Sprite &sprite{sprites[i]};
            if (sprite.isUsed)
            {
                hardware.sendSprite(sprite); 
            }
        }
    }
};

