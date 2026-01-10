

#include "xparameters.h"
#include "hdmi_text_controller.h"
#include <stdint.h>
#include <string.h>

#if 0
 // replace with new code Start
#include "SpriteInfo.hpp"

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

uint32_t SpriteInfo::getX() const
{
    return drawX;
}

// replace with new code End


extern "C" uint32_t call_cpp(struct DirectorIO* directorIo)
{
    SpriteInfo sprite;
    sprite.drawX = 123;
    uint32_t x = sprite.getX();

    return x + a;
}

#else

// ================== Director entry point ==================
#include "CallCpp_c.h"
#include "CallCpp.hpp"
#include "GameRecord.hpp"

// extern "C" uint32_t call_cpp(struct DirectorIO* directorIo)
// {
//     director.io = *directorIo;
//     director.onStartOfFrame(directorIo);
//     director.writeOutputs(directorIo);
//
//     return 0;
// }

#endif



