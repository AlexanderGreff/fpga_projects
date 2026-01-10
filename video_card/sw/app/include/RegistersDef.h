#ifndef REGISTERDEF_H__
#define REGISTERDEF_H__

#include <stdint.h>

// ================== HDMI_TEXT_STRUCT ==================

struct HDMI_TEXT_STRUCT
{
    uint32_t FRAME_COUNT;
    uint32_t FC_X_Y;
    uint32_t FRAME_TICK;
    uint32_t CLOCK_TICK;
    uint32_t SPRITE;
    uint32_t STATUS;
    uint32_t SWITCHES;
};

// ================== FC_DRAWX_DRAWY ==================

struct FC_DRAWX_DRAWY
{
    uint32_t drawY : 10;
    uint32_t drawX : 10;
    uint32_t frame_count : 12;
};

// ================== SPRITE_REG ==================

struct SPRITE_REG
{
    uint32_t addr : 17;
    uint32_t pad : 7;
    uint32_t sprite_nb : 8;
};

struct DirectorIO
{
    //inputs
    uint32_t frame_count;
    uint32_t switches;
    uint8_t  keycode[6];

    //outputs
    uint8_t segments7_changed;
    uint8_t leds_changed;
    uint32_t segments7;
    uint32_t leds;
};



#endif // REGISTERDEF_H__
