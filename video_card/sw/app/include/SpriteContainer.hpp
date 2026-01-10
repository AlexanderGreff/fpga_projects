#pragma once

#include "SpriteRecord.hpp"

// ================== SpriteContainer ==================

template <uint32_t N>
class SpriteContainer
{
    Sprite sprites[N];
public:

    static constexpr uint32_t size{N};

public:
    SpriteContainer()
    {
        for (uint32_t i = 0; i < N; i++)
        {
            sprites[i] = Sprite();
        }
    }

    Sprite &operator[](uint32_t i)
    {
        return sprites[i];
    }
    const Sprite &operator[](uint32_t i) const
    {
        return sprites[i];
    }
    Sprite &getSprite(int index)
    {
        return sprites[index];
    }
    void clear()
    {
        for (uint32_t i = 0; i < N; i++)
        {
            sprites[i].isUsed = 0;
        }
    }
    bool addSprite(const Sprite &sprite)
    {
        for (uint32_t i = 0; i < N; i++)
        {
            if (sprites[i].isUsed == 0)
            {
                sprites[i] = sprite;
                sprites[i].isUsed = 1;
                return true;
            }
        }
        return false; // No space
    }
    bool isUsed(int index) const
    {
        if (index >= 0 && index < N)
        {
            return sprites[index].isUsed != 0;
        }
        return false;
    }
    bool contains(const Sprite &sprite) const
    {
        for (uint32_t i = 0; i < N; i++)
        {
            if (sprites[i].isUsed &&
                sprites[i].x == sprite.x &&
                sprites[i].y == sprite.y &&
                sprites[i].spriteId == sprite.spriteId)
            {
                return true;
            }
        }
        return false;
    }
    int8_t findFirstSpite(const Sprite &sprite) const
    {
        for (uint32_t i = 0; i < N; i++)
        {
            if (sprites[i].isUsed &&
                sprites[i].x == sprite.x &&
                sprites[i].y == sprite.y &&
                sprites[i].spriteId == sprite.spriteId)
            {
                return i;
            }
        }
        return -1;
    }
    void removeSprite(int index)
    {
        if (index >= 0 && index < N)
        {
            sprites[index].isUsed = 0;
        }
    }
    int countUsedSprites() const
    {
        int count = 0;
        for (uint32_t i = 0; i < N; i++)
        {
            if (sprites[i].isUsed)
            {
                count++;
            }
        }
        return count;
    }
    bool isFull() const
    {
        for (uint32_t i = 0; i < N; i++)
        {
            if (sprites[i].isUsed == 0)
            {
                return false;
            }
        }
        return true;
    }
};
