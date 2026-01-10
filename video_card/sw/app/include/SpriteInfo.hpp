#pragma once

#include <stdint.h>

class SpriteInfo
{
public:
    uint32_t drawY : 8; // 240
    uint32_t drawX : 9; // 320
    uint32_t spriteNb : 8;
    uint32_t isUsed : 1;
    uint32_t pad : 6;

    uint32_t getX() const;
};
