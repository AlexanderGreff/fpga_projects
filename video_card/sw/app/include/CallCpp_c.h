#ifndef CALLCPP_C_H
#define CALLCPP_C_H

#include <stdint.h>
#include "RegistersDef.h"

#ifdef __cplusplus
extern "C" {
#endif

extern uint32_t call_cpp(struct DirectorIO* directorIo);

#ifdef __cplusplus
}
#endif

#endif // CALLCPP_C_H
