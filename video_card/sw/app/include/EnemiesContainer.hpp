#pragma once

#include "MissilesContainer.hpp"

struct GameData;

// ================== EnemiesContainer ==================
struct ShipSpacing
{
    uint32_t leftSpace{};
    uint32_t rightSpace{};
    uint32_t nbShips{};
    uint32_t shipWidth{};
    uint32_t spaceBetweenShips{};
};

struct EnemiesContainer
{
    SpriteContainer<30> sprites;
    GameData *gameData{};
    uint32_t fcCountPrev{};
    uint8_t spriteIndexMap[6] = {1, 2, 3, 4, 5, 2}; // to get odd even ship id
    int8_t xMaxCum{20};
    int8_t xCum{20};
    int8_t xSpeed{1};
    int8_t yMaxCum{20};
    int8_t yCum{20};
    int8_t ySpeed{1};

    EnemiesContainer(GameData *gameDataIn)
        : gameData(gameDataIn)
    {
    }
    void update()
    {
        // if (hardware.fcCount > (fcCountPrev + 3))
        {
            fcCountPrev == hardware.fcCount;
            int8_t xmove = xMove();
            int8_t ymove = yMove();

            for (uint32_t i = 0; i < sprites.size; ++i)
            {
                Sprite &sprite{sprites[i]};
                if (sprite.isUsed)
                {
                    if (sprite.spriteId % 2 == 0)    // even ship
                    {
                        sprite.xMove = xmove;   
                    }
                    else                             // odd ship
                    {
                        sprite.xMove = xmove;
                        sprite.yMove = ymove;
                    }
                    sprite.updateNoCheck();
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
    int8_t xMove()
    {
        int8_t xCumCur = xCum;
        int8_t xMove = xSpeed;
        xCum += xSpeed;
        if (xCum >= xMaxCum)
        {
            xCum = xMaxCum;
            xSpeed = -xSpeed;
            xMove = xCum - xCumCur;
        }
        else if (xCum <= 0) 
        {
            xCum = 0;
            xSpeed = -xSpeed;
            xMove = -xCumCur;
        }
        return xMove;
    }
    int8_t yMove()
    {
        int8_t yCumCur = yCum;
        int8_t yMove = ySpeed;
        yCum += ySpeed;
        if (yCum >= yMaxCum)
        {
            yCum = yMaxCum;
            ySpeed = -ySpeed;
            yMove = yCum - yCumCur;
        }
        else if (yCum <= 0) 
        {
            yCum = 0;
            ySpeed = -ySpeed;
            yMove = -yCumCur;
        }
        return yMove;
    }



    bool addEnemy(uint16_t xIn, uint16_t yIn, uint8_t spriteIdIn, uint8_t speedIn = 5)
    {
        Sprite sprite(xIn, yIn, spriteIdIn, speedIn);
        return sprites.addSprite(sprite);
    }
    bool addEnemies(uint16_t xIn, uint16_t yIn, uint8_t nbShips, uint8_t spriteIdOffset = 0, uint8_t xOffset = 0)
    {
        bool res = true;
        uint32_t x = xIn;
        ShipSpacing info = calcSpacing(nbShips);
        x += info.leftSpace + xOffset;
        if (info.spaceBetweenShips == 0)
        {
            return false;
        }
        for (uint32_t i = 0; i < nbShips; ++i)
        {
            uint32_t spriteIdIndex = (i + spriteIdOffset) % (EnemiesEnd + 1);
            uint8_t spriteId = spriteIndexMap[spriteIdIndex];
            res |= addEnemy(x, yIn, spriteId);
            x += info.spaceBetweenShips + info.shipWidth;
        }
        return res;
    }
    ShipSpacing calcSpacing(uint32_t nbShips, uint32_t leftSpace = 20, uint32_t rightSpace = 20, uint32_t shipWidth = 24)
    {
        ShipSpacing info;
        info.leftSpace = leftSpace;
        info.rightSpace = rightSpace;
        info.nbShips = nbShips;
        info.shipWidth = shipWidth;
        uint32_t useableWidth = ScreenDim::Width - (leftSpace + rightSpace);
        uint32_t spacePerShip = useableWidth / nbShips;
        uint32_t spaceUsedByShips = shipWidth * nbShips;

        if (spaceUsedByShips < useableWidth)
        {
            uint32_t spaceLeft = useableWidth - spaceUsedByShips;
            if (nbShips > 1)
            {
                info.spaceBetweenShips = spaceLeft / (nbShips - 1);
            }
        }
        return info;
    }
};
