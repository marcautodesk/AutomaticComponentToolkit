/*++

Copyright (C) 2019 PrimeDevelopers

All rights reserved.

This file has been generated by the Automatic Component Toolkit (ACT) version 1.6.0-develop.

Abstract: This is an autogenerated C++-Header file in order to allow an easy
 use of Prime Numbers Library

Interface version: 1.2.0

*/

#ifndef __LIBPRIMES_DYNAMICHEADER_CPPTYPES
#define __LIBPRIMES_DYNAMICHEADER_CPPTYPES

#include "libprimes_types.hpp"


/*************************************************************************************************************************
 Class definition for Base
**************************************************************************************************************************/

/*************************************************************************************************************************
 Class definition for Calculator
**************************************************************************************************************************/

/**
* Returns the current value of this Calculator
*
* @param[in] pCalculator - Calculator instance.
* @param[out] pValue - The current value of this Calculator
* @return error code or 0 (success)
*/
typedef LibPrimesResult (*PLibPrimesCalculator_GetValuePtr) (LibPrimes_Calculator pCalculator, LibPrimes_uint64 * pValue);

/**
* Sets the value to be factorized
*
* @param[in] pCalculator - Calculator instance.
* @param[in] nValue - The value to be factorized
* @return error code or 0 (success)
*/
typedef LibPrimesResult (*PLibPrimesCalculator_SetValuePtr) (LibPrimes_Calculator pCalculator, LibPrimes_uint64 nValue);

/**
* Performs the specific calculation of this Calculator
*
* @param[in] pCalculator - Calculator instance.
* @return error code or 0 (success)
*/
typedef LibPrimesResult (*PLibPrimesCalculator_CalculatePtr) (LibPrimes_Calculator pCalculator);

/**
* Sets the progress callback function
*
* @param[in] pCalculator - Calculator instance.
* @param[in] pProgressCallback - The progress callback
* @return error code or 0 (success)
*/
typedef LibPrimesResult (*PLibPrimesCalculator_SetProgressCallbackPtr) (LibPrimes_Calculator pCalculator, LibPrimes::ProgressCallback pProgressCallback);

/*************************************************************************************************************************
 Class definition for FactorizationCalculator
**************************************************************************************************************************/

/**
* Returns the prime factors of this number (without multiplicity)
*
* @param[in] pFactorizationCalculator - FactorizationCalculator instance.
* @param[in] nPrimeFactorsBufferSize - Number of elements in buffer
* @param[out] pPrimeFactorsNeededCount - will be filled with the count of the written elements, or needed buffer size.
* @param[out] pPrimeFactorsBuffer - PrimeFactor buffer of The prime factors of this number
* @return error code or 0 (success)
*/
typedef LibPrimesResult (*PLibPrimesFactorizationCalculator_GetPrimeFactorsPtr) (LibPrimes_FactorizationCalculator pFactorizationCalculator, const LibPrimes_uint64 nPrimeFactorsBufferSize, LibPrimes_uint64* pPrimeFactorsNeededCount, LibPrimes::sPrimeFactor * pPrimeFactorsBuffer);

/*************************************************************************************************************************
 Class definition for SieveCalculator
**************************************************************************************************************************/

/**
* Returns all prime numbers lower or equal to the sieve's value
*
* @param[in] pSieveCalculator - SieveCalculator instance.
* @param[in] nPrimesBufferSize - Number of elements in buffer
* @param[out] pPrimesNeededCount - will be filled with the count of the written elements, or needed buffer size.
* @param[out] pPrimesBuffer - uint64 buffer of The primes lower or equal to the sieve's value
* @return error code or 0 (success)
*/
typedef LibPrimesResult (*PLibPrimesSieveCalculator_GetPrimesPtr) (LibPrimes_SieveCalculator pSieveCalculator, const LibPrimes_uint64 nPrimesBufferSize, LibPrimes_uint64* pPrimesNeededCount, LibPrimes_uint64 * pPrimesBuffer);

/*************************************************************************************************************************
 Global functions
**************************************************************************************************************************/

/**
* retrieves the binary version of this library.
*
* @param[out] pMajor - returns the major version of this library
* @param[out] pMinor - returns the minor version of this library
* @param[out] pMicro - returns the micro version of this library
* @return error code or 0 (success)
*/
typedef LibPrimesResult (*PLibPrimesGetVersionPtr) (LibPrimes_uint32 * pMajor, LibPrimes_uint32 * pMinor, LibPrimes_uint32 * pMicro);

/**
* Returns the last error recorded on this object
*
* @param[in] pInstance - Instance Handle
* @param[in] nErrorMessageBufferSize - size of the buffer (including trailing 0)
* @param[out] pErrorMessageNeededChars - will be filled with the count of the written bytes, or needed buffer size.
* @param[out] pErrorMessageBuffer -  buffer of Message of the last error, may be NULL
* @param[out] pHasError - Is there a last error to query
* @return error code or 0 (success)
*/
typedef LibPrimesResult (*PLibPrimesGetLastErrorPtr) (LibPrimes_Base pInstance, const LibPrimes_uint32 nErrorMessageBufferSize, LibPrimes_uint32* pErrorMessageNeededChars, char * pErrorMessageBuffer, bool * pHasError);

/**
* Releases the memory of an Instance
*
* @param[in] pInstance - Instance Handle
* @return error code or 0 (success)
*/
typedef LibPrimesResult (*PLibPrimesReleaseInstancePtr) (LibPrimes_Base pInstance);

/**
* Creates a new FactorizationCalculator instance
*
* @param[out] pInstance - New FactorizationCalculator instance
* @return error code or 0 (success)
*/
typedef LibPrimesResult (*PLibPrimesCreateFactorizationCalculatorPtr) (LibPrimes_FactorizationCalculator * pInstance);

/**
* Creates a new SieveCalculator instance
*
* @param[out] pInstance - New SieveCalculator instance
* @return error code or 0 (success)
*/
typedef LibPrimesResult (*PLibPrimesCreateSieveCalculatorPtr) (LibPrimes_SieveCalculator * pInstance);

/**
* Handles Library Journaling
*
* @param[in] pFileName - Journal FileName
* @return error code or 0 (success)
*/
typedef LibPrimesResult (*PLibPrimesSetJournalPtr) (const char * pFileName);

/**
* Returns the last error recorded on this object
*
* @param[in] pInstance - Instance Handle
* @param[in] nErrorMessageBufferSize - size of the buffer (including trailing 0)
* @param[out] pErrorMessageNeededChars - will be filled with the count of the written wchar_t, or needed buffer size.
* @param[out] pErrorMessageBuffer -  buffer of Message of the last error, may be NULL
* @param[out] pHasError - Is there a last error to query
* @return error code or 0 (success)
*/
typedef LibPrimesResult (*PLibPrimesGetLastError_UTF16Ptr) (LibPrimes_Base pInstance, const LibPrimes_uint32 nErrorMessageBufferSize, LibPrimes_uint32* pErrorMessageNeededChars, wchar_t * pErrorMessageBuffer, bool * pHasError);

/**
* Handles Library Journaling
*
* @param[in] pFileName - Journal FileName
* @return error code or 0 (success)
*/
typedef LibPrimesResult (*PLibPrimesSetJournal_UTF16Ptr) (const wchar_t * pFileName);

/*************************************************************************************************************************
 Function Table Structure
**************************************************************************************************************************/

typedef struct {
	void * m_LibraryHandle;
	PLibPrimesCalculator_GetValuePtr m_Calculator_GetValue;
	PLibPrimesCalculator_SetValuePtr m_Calculator_SetValue;
	PLibPrimesCalculator_CalculatePtr m_Calculator_Calculate;
	PLibPrimesCalculator_SetProgressCallbackPtr m_Calculator_SetProgressCallback;
	PLibPrimesFactorizationCalculator_GetPrimeFactorsPtr m_FactorizationCalculator_GetPrimeFactors;
	PLibPrimesSieveCalculator_GetPrimesPtr m_SieveCalculator_GetPrimes;
	PLibPrimesGetVersionPtr m_GetVersion;
	PLibPrimesGetLastErrorPtr m_GetLastError;
	PLibPrimesReleaseInstancePtr m_ReleaseInstance;
	PLibPrimesCreateFactorizationCalculatorPtr m_CreateFactorizationCalculator;
	PLibPrimesCreateSieveCalculatorPtr m_CreateSieveCalculator;
	PLibPrimesSetJournalPtr m_SetJournal;
	PLibPrimesGetLastError_UTF16Ptr m_GetLastError_UTF16;
	PLibPrimesSetJournal_UTF16Ptr m_SetJournal_UTF16;
} sLibPrimesDynamicWrapperTable;

#endif // __LIBPRIMES_DYNAMICHEADER_CPPTYPES

