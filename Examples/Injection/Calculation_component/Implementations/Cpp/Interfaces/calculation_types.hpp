/*++

Copyright (C) 2019 Calculation developers

All rights reserved.

This file has been generated by the Automatic Component Toolkit (ACT) version 1.6.0-RC1.

Abstract: This is an autogenerated C++-Header file with basic types in
order to allow an easy use of Calculation library

Interface version: 1.0.0

*/

#ifndef __CALCULATION_TYPES_HEADER_CPP
#define __CALCULATION_TYPES_HEADER_CPP


/*************************************************************************************************************************
 Scalar types definition
**************************************************************************************************************************/

#ifdef CALCULATION_USELEGACYINTEGERTYPES

typedef unsigned char Calculation_uint8;
typedef unsigned short Calculation_uint16 ;
typedef unsigned int Calculation_uint32;
typedef unsigned long long Calculation_uint64;
typedef char Calculation_int8;
typedef short Calculation_int16;
typedef int Calculation_int32;
typedef long long Calculation_int64;

#else // CALCULATION_USELEGACYINTEGERTYPES

#include <stdint.h>

typedef uint8_t Calculation_uint8;
typedef uint16_t Calculation_uint16;
typedef uint32_t Calculation_uint32;
typedef uint64_t Calculation_uint64;
typedef int8_t Calculation_int8;
typedef int16_t Calculation_int16;
typedef int32_t Calculation_int32;
typedef int64_t Calculation_int64 ;

#endif // CALCULATION_USELEGACYINTEGERTYPES

typedef float Calculation_single;
typedef double Calculation_double;

/*************************************************************************************************************************
 General type definitions
**************************************************************************************************************************/

typedef Calculation_int32 CalculationResult;
typedef void * CalculationHandle;
typedef void * Calculation_pvoid;

/*************************************************************************************************************************
 Version for Calculation
**************************************************************************************************************************/

#define CALCULATION_VERSION_MAJOR 1
#define CALCULATION_VERSION_MINOR 0
#define CALCULATION_VERSION_MICRO 0
#define CALCULATION_VERSION_PRERELEASEINFO ""
#define CALCULATION_VERSION_BUILDINFO ""

/*************************************************************************************************************************
 Error constants for Calculation
**************************************************************************************************************************/

#define CALCULATION_SUCCESS 0
#define CALCULATION_ERROR_NOTIMPLEMENTED 1
#define CALCULATION_ERROR_INVALIDPARAM 2
#define CALCULATION_ERROR_INVALIDCAST 3
#define CALCULATION_ERROR_BUFFERTOOSMALL 4
#define CALCULATION_ERROR_GENERICEXCEPTION 5
#define CALCULATION_ERROR_COULDNOTLOADLIBRARY 6
#define CALCULATION_ERROR_COULDNOTFINDLIBRARYEXPORT 7
#define CALCULATION_ERROR_INCOMPATIBLEBINARYVERSION 8

/*************************************************************************************************************************
 Declaration of handle classes 
**************************************************************************************************************************/

typedef CalculationHandle Calculation_Base;
typedef CalculationHandle Calculation_Calculator;

namespace Calculation {

} // namespace Calculation;

// define legacy C-names for enums, structs and function types

#endif // __CALCULATION_TYPES_HEADER_CPP