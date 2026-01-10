#pragma once

#include "GameRecord.hpp"

// ================== Director entry point ==================

extern "C" uint32_t call_cpp(struct DirectorIO* directorIo)
{
    director.io = *directorIo;
    director.onStartOfFrame(directorIo);
    director.writeOutputs(directorIo);

    return 0;
}
