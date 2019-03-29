(*++

Copyright (C) 2018 PrimeDevelopers

All rights reserved.

This file has been generated by the Automatic Component Toolkit (ACT) version 1.5.0-develop5.

Abstract: This is an autogenerated Pascal export implementation file in order to allow easy
development of Prime Numbers Library. The functions in this file need to be implemented. It needs to be generated only once.

Interface version: 1.2.0

*)

{$MODE DELPHI}
unit libprimes_exports;

interface

uses
	libprimes_impl,
	libprimes_types,
	libprimes_interfaces,
	libprimes_exception,
	Classes,
	sysutils;

(*************************************************************************************************************************
 Class export definition of Base 
**************************************************************************************************************************)

(*************************************************************************************************************************
 Class export definition of Calculator 
**************************************************************************************************************************)

(**
* Returns the current value of this Calculator
*
* @param[in] pCalculator - Calculator instance.
* @param[out] pValue - The current value of this Calculator
* @return error code or 0 (success)
*)
function libprimes_calculator_getvalue (pCalculator: TLibPrimesHandle; pValue: PQWord): TLibPrimesResult; cdecl;

(**
* Returns the current value of this Calculator
*
* @param[in] pCalculator - Calculator instance.
* @param[out] pValue - The current value of this Calculator
* @return error code or 0 (success)
*)
function libprimes_calculator_getself (pCalculator: TLibPrimesHandle; pValue: PLibPrimesHandle): TLibPrimesResult; cdecl;

(**
* Sets the value to be factorized
*
* @param[in] pCalculator - Calculator instance.
* @param[in] nValue - The value to be factorized
* @return error code or 0 (success)
*)
function libprimes_calculator_setvalue (pCalculator: TLibPrimesHandle; nValue: QWord): TLibPrimesResult; cdecl;

(**
* Performs the specific calculation of this Calculator
*
* @param[in] pCalculator - Calculator instance.
* @return error code or 0 (success)
*)
function libprimes_calculator_calculate (pCalculator: TLibPrimesHandle): TLibPrimesResult; cdecl;

(**
* Sets the progress callback function
*
* @param[in] pCalculator - Calculator instance.
* @param[in] pProgressCallback - The progress callback
* @return error code or 0 (success)
*)
function libprimes_calculator_setprogresscallback (pCalculator: TLibPrimesHandle; pProgressCallback: PLibPrimes_ProgressCallback): TLibPrimesResult; cdecl;

(*************************************************************************************************************************
 Class export definition of FactorizationCalculator 
**************************************************************************************************************************)

(**
* Returns the prime factors of this number (without multiplicity)
*
* @param[in] pFactorizationCalculator - FactorizationCalculator instance.
* @param[in] nPrimeFactorsCount - Number of elements in buffer
* @param[out] pPrimeFactorsNeededCount - will be filled with the count of the written elements, or needed buffer size.
* @param[out] pPrimeFactorsBuffer - PrimeFactor buffer of The prime factors of this number
* @return error code or 0 (success)
*)
function libprimes_factorizationcalculator_getprimefactors (pFactorizationCalculator: TLibPrimesHandle; nPrimeFactorsCount: QWord; pPrimeFactorsNeededCount: PQWord; pPrimeFactorsBuffer: PLibPrimesPrimeFactor): TLibPrimesResult; cdecl;

(*************************************************************************************************************************
 Class export definition of SieveCalculator 
**************************************************************************************************************************)

(**
* Returns all prime numbers lower or equal to the sieve's value
*
* @param[in] pSieveCalculator - SieveCalculator instance.
* @param[in] nPrimesCount - Number of elements in buffer
* @param[out] pPrimesNeededCount - will be filled with the count of the written elements, or needed buffer size.
* @param[out] pPrimesBuffer - uint64 buffer of The primes lower or equal to the sieve's value
* @return error code or 0 (success)
*)
function libprimes_sievecalculator_getprimes (pSieveCalculator: TLibPrimesHandle; nPrimesCount: QWord; pPrimesNeededCount: PQWord; pPrimesBuffer: PQWord): TLibPrimesResult; cdecl;

(*************************************************************************************************************************
 Global function export definition
**************************************************************************************************************************)

(**
* Returns the last error recorded on this object
*
* @param[in] pInstance - Instance Handle
* @param[in] nErrorMessageBufferSize - size of the buffer (including trailing 0)
* @param[out] pErrorMessageNeededChars - will be filled with the count of the written bytes, or needed buffer size.
* @param[out] pErrorMessageBuffer -  buffer of Message of the last error, may be NULL
* @param[out] pHasError - Is there a last error to query
* @return error code or 0 (success)
*)
function libprimes_getlasterror (pInstance: TLibPrimesHandle; nErrorMessageBufferSize: Cardinal; pErrorMessageNeededChars: PCardinal; pErrorMessageBuffer: PAnsiChar; pHasError: PByte): TLibPrimesResult; cdecl;

(**
* Releases the memory of an Instance
*
* @param[in] pInstance - Instance Handle
* @return error code or 0 (success)
*)
function libprimes_releaseinstance (pInstance: TLibPrimesHandle): TLibPrimesResult; cdecl;

(**
* retrieves the binary version of this library.
*
* @param[out] pMajor - returns the major version of this library
* @param[out] pMinor - returns the minor version of this library
* @param[out] pMicro - returns the micro version of this library
* @param[in] nPreReleaseInfoBufferSize - size of the buffer (including trailing 0)
* @param[out] pPreReleaseInfoNeededChars - will be filled with the count of the written bytes, or needed buffer size.
* @param[out] pPreReleaseInfoBuffer -  buffer of returns pre-release info of this library (if this is a pre-release binary), may be NULL
* @param[in] nBuildInfoBufferSize - size of the buffer (including trailing 0)
* @param[out] pBuildInfoNeededChars - will be filled with the count of the written bytes, or needed buffer size.
* @param[out] pBuildInfoBuffer -  buffer of returns build-information of this library (optional), may be NULL
* @return error code or 0 (success)
*)
function libprimes_getlibraryversion (pMajor: PCardinal; pMinor: PCardinal; pMicro: PCardinal; nPreReleaseInfoBufferSize: Cardinal; pPreReleaseInfoNeededChars: PCardinal; pPreReleaseInfoBuffer: PAnsiChar; nBuildInfoBufferSize: Cardinal; pBuildInfoNeededChars: PCardinal; pBuildInfoBuffer: PAnsiChar): TLibPrimesResult; cdecl;

(**
* Creates a new FactorizationCalculator instance
*
* @param[out] pInstance - New FactorizationCalculator instance
* @return error code or 0 (success)
*)
function libprimes_createfactorizationcalculator (pInstance: PLibPrimesHandle): TLibPrimesResult; cdecl;

(**
* Creates a new SieveCalculator instance
*
* @param[out] pInstance - New SieveCalculator instance
* @return error code or 0 (success)
*)
function libprimes_createsievecalculator (pInstance: PLibPrimesHandle): TLibPrimesResult; cdecl;

(**
* Handles Library Journaling
*
* @param[in] pFileName - Journal FileName
* @return error code or 0 (success)
*)
function libprimes_setjournal (pFileName: PAnsiChar): TLibPrimesResult; cdecl;

implementation

function libprimes_calculator_getvalue (pCalculator: TLibPrimesHandle; pValue: PQWord): TLibPrimesResult; cdecl;
var
	ResultValue: QWord;
	ObjectCalculator: TObject;
	IntfCalculator: ILibPrimesCalculator;
begin
	try
		if not Assigned (pValue) then
			raise ELibPrimesException.Create (LIBPRIMES_ERROR_INVALIDPARAM);
		if not Assigned (pCalculator) then
			raise ELibPrimesException.Create (LIBPRIMES_ERROR_INVALIDPARAM);

		ObjectCalculator := TObject (pCalculator);
		if Supports (ObjectCalculator, ILibPrimesCalculator) then begin
			IntfCalculator := ObjectCalculator as ILibPrimesCalculator;
			ResultValue := IntfCalculator.GetValue();

			pValue^ := ResultValue;
		end else
			raise ELibPrimesException.Create (LIBPRIMES_ERROR_INVALIDCAST);

		Result := LIBPRIMES_SUCCESS;
	except
		On E: ELibPrimesException do begin
			Result := HandleLibPrimesException(ObjectCalculator , E);
		end;
		On E: Exception do begin
			Result := HandleStdException(ObjectCalculator , E);
		end
		else begin
			Result := HandleUnhandledException(ObjectCalculator);
		end;
	end;
end;

function libprimes_calculator_getself (pCalculator: TLibPrimesHandle; pValue: PLibPrimesHandle): TLibPrimesResult; cdecl;
var
	ResultValue: TObject;
	ObjectCalculator: TObject;
	IntfCalculator: ILibPrimesCalculator;
begin
	try
		if not Assigned(pValue) then
			raise ELibPrimesException.Create (LIBPRIMES_ERROR_INVALIDPARAM);
		if not Assigned (pCalculator) then
			raise ELibPrimesException.Create (LIBPRIMES_ERROR_INVALIDPARAM);

		ObjectCalculator := TObject (pCalculator);
		if Supports (ObjectCalculator, ILibPrimesCalculator) then begin
			IntfCalculator := ObjectCalculator as ILibPrimesCalculator;
			ResultValue := IntfCalculator.GetSelf();

			pValue^ := ResultValue;
		end else
			raise ELibPrimesException.Create (LIBPRIMES_ERROR_INVALIDCAST);

		Result := LIBPRIMES_SUCCESS;
	except
		On E: ELibPrimesException do begin
			Result := HandleLibPrimesException(ObjectCalculator , E);
		end;
		On E: Exception do begin
			Result := HandleStdException(ObjectCalculator , E);
		end
		else begin
			Result := HandleUnhandledException(ObjectCalculator);
		end;
	end;
end;

function libprimes_calculator_setvalue (pCalculator: TLibPrimesHandle; nValue: QWord): TLibPrimesResult; cdecl;
var
	ObjectCalculator: TObject;
	IntfCalculator: ILibPrimesCalculator;
begin
	try
		if not Assigned (pCalculator) then
			raise ELibPrimesException.Create (LIBPRIMES_ERROR_INVALIDPARAM);

		ObjectCalculator := TObject (pCalculator);
		if Supports (ObjectCalculator, ILibPrimesCalculator) then begin
			IntfCalculator := ObjectCalculator as ILibPrimesCalculator;
			IntfCalculator.SetValue(nValue);

		end else
			raise ELibPrimesException.Create (LIBPRIMES_ERROR_INVALIDCAST);

		Result := LIBPRIMES_SUCCESS;
	except
		On E: ELibPrimesException do begin
			Result := HandleLibPrimesException(ObjectCalculator , E);
		end;
		On E: Exception do begin
			Result := HandleStdException(ObjectCalculator , E);
		end
		else begin
			Result := HandleUnhandledException(ObjectCalculator);
		end;
	end;
end;

function libprimes_calculator_calculate (pCalculator: TLibPrimesHandle): TLibPrimesResult; cdecl;
var
	ObjectCalculator: TObject;
	IntfCalculator: ILibPrimesCalculator;
begin
	try
		if not Assigned (pCalculator) then
			raise ELibPrimesException.Create (LIBPRIMES_ERROR_INVALIDPARAM);

		ObjectCalculator := TObject (pCalculator);
		if Supports (ObjectCalculator, ILibPrimesCalculator) then begin
			IntfCalculator := ObjectCalculator as ILibPrimesCalculator;
			IntfCalculator.Calculate();

		end else
			raise ELibPrimesException.Create (LIBPRIMES_ERROR_INVALIDCAST);

		Result := LIBPRIMES_SUCCESS;
	except
		On E: ELibPrimesException do begin
			Result := HandleLibPrimesException(ObjectCalculator , E);
		end;
		On E: Exception do begin
			Result := HandleStdException(ObjectCalculator , E);
		end
		else begin
			Result := HandleUnhandledException(ObjectCalculator);
		end;
	end;
end;

function libprimes_calculator_setprogresscallback (pCalculator: TLibPrimesHandle; pProgressCallback: PLibPrimes_ProgressCallback): TLibPrimesResult; cdecl;
var
	ObjectCalculator: TObject;
	IntfCalculator: ILibPrimesCalculator;
begin
	try
		if not Assigned (pCalculator) then
			raise ELibPrimesException.Create (LIBPRIMES_ERROR_INVALIDPARAM);

		ObjectCalculator := TObject (pCalculator);
		if Supports (ObjectCalculator, ILibPrimesCalculator) then begin
			IntfCalculator := ObjectCalculator as ILibPrimesCalculator;
			IntfCalculator.SetProgressCallback(pProgressCallback);

		end else
			raise ELibPrimesException.Create (LIBPRIMES_ERROR_INVALIDCAST);

		Result := LIBPRIMES_SUCCESS;
	except
		On E: ELibPrimesException do begin
			Result := HandleLibPrimesException(ObjectCalculator , E);
		end;
		On E: Exception do begin
			Result := HandleStdException(ObjectCalculator , E);
		end
		else begin
			Result := HandleUnhandledException(ObjectCalculator);
		end;
	end;
end;

function libprimes_factorizationcalculator_getprimefactors (pFactorizationCalculator: TLibPrimesHandle; nPrimeFactorsCount: QWord; pPrimeFactorsNeededCount: PQWord; pPrimeFactorsBuffer: PLibPrimesPrimeFactor): TLibPrimesResult; cdecl;
var
	ObjectFactorizationCalculator: TObject;
	IntfFactorizationCalculator: ILibPrimesFactorizationCalculator;
begin
	try
		if ((not Assigned (pPrimeFactorsNeededCount)) and (not Assigned(pPrimeFactorsBuffer))) then
			raise ELibPrimesException.Create (LIBPRIMES_ERROR_INVALIDPARAM);
		if not Assigned (pFactorizationCalculator) then
			raise ELibPrimesException.Create (LIBPRIMES_ERROR_INVALIDPARAM);

		ObjectFactorizationCalculator := TObject (pFactorizationCalculator);
		if Supports (ObjectFactorizationCalculator, ILibPrimesFactorizationCalculator) then begin
			IntfFactorizationCalculator := ObjectFactorizationCalculator as ILibPrimesFactorizationCalculator;
			IntfFactorizationCalculator.GetPrimeFactors(nPrimeFactorsCount, pPrimeFactorsNeededCount, pPrimeFactorsBuffer);

		end else
			raise ELibPrimesException.Create (LIBPRIMES_ERROR_INVALIDCAST);

		Result := LIBPRIMES_SUCCESS;
	except
		On E: ELibPrimesException do begin
			Result := HandleLibPrimesException(ObjectFactorizationCalculator , E);
		end;
		On E: Exception do begin
			Result := HandleStdException(ObjectFactorizationCalculator , E);
		end
		else begin
			Result := HandleUnhandledException(ObjectFactorizationCalculator);
		end;
	end;
end;

function libprimes_sievecalculator_getprimes (pSieveCalculator: TLibPrimesHandle; nPrimesCount: QWord; pPrimesNeededCount: PQWord; pPrimesBuffer: PQWord): TLibPrimesResult; cdecl;
var
	ObjectSieveCalculator: TObject;
	IntfSieveCalculator: ILibPrimesSieveCalculator;
begin
	try
		if ((not Assigned (pPrimesNeededCount)) and (not Assigned(pPrimesBuffer))) then
			raise ELibPrimesException.Create (LIBPRIMES_ERROR_INVALIDPARAM);
		if not Assigned (pSieveCalculator) then
			raise ELibPrimesException.Create (LIBPRIMES_ERROR_INVALIDPARAM);

		ObjectSieveCalculator := TObject (pSieveCalculator);
		if Supports (ObjectSieveCalculator, ILibPrimesSieveCalculator) then begin
			IntfSieveCalculator := ObjectSieveCalculator as ILibPrimesSieveCalculator;
			IntfSieveCalculator.GetPrimes(nPrimesCount, pPrimesNeededCount, pPrimesBuffer);

		end else
			raise ELibPrimesException.Create (LIBPRIMES_ERROR_INVALIDCAST);

		Result := LIBPRIMES_SUCCESS;
	except
		On E: ELibPrimesException do begin
			Result := HandleLibPrimesException(ObjectSieveCalculator , E);
		end;
		On E: Exception do begin
			Result := HandleStdException(ObjectSieveCalculator , E);
		end
		else begin
			Result := HandleUnhandledException(ObjectSieveCalculator);
		end;
	end;
end;

function libprimes_getlasterror (pInstance: TLibPrimesHandle; nErrorMessageBufferSize: Cardinal; pErrorMessageNeededChars: PCardinal; pErrorMessageBuffer: PAnsiChar; pHasError: PByte): TLibPrimesResult; cdecl;
var
	ObjectInstance: TObject;
	ResultErrorMessage: String;
	LenErrorMessage: Cardinal;
	ResultHasError: Boolean;
begin
	try
		ObjectInstance := TObject (pInstance);
		if (not Supports (ObjectInstance, ILibPrimesBase)) then
			raise ELibPrimesException.Create (LIBPRIMES_ERROR_INVALIDCAST);
		
		if ((not Assigned (pErrorMessageBuffer)) and (not Assigned(pErrorMessageNeededChars))) then
			raise ELibPrimesException.Create (LIBPRIMES_ERROR_INVALIDPARAM);
		if not Assigned (pHasError) then
			raise ELibPrimesException.Create (LIBPRIMES_ERROR_INVALIDPARAM);

		ResultHasError := TLibPrimesWrapper.GetLastError(ObjectInstance, ResultErrorMessage);

		LenErrorMessage := Length (ResultErrorMessage);
		if Assigned(pErrorMessageNeededChars) then
			pErrorMessageNeededChars^ := LenErrorMessage;
		if Assigned(pErrorMessageBuffer) then begin
			if (LenErrorMessage >= nErrorMessageBufferSize) then
				raise ELibPrimesException.Create (LIBPRIMES_ERROR_BUFFERTOOSMALL);
			Move (PAnsiChar (ResultErrorMessage)^, pErrorMessageBuffer^, LenErrorMessage + 1);
		end;
		pHasError^ := Ord (ResultHasError);
		Result := LIBPRIMES_SUCCESS;
	except
		On E: ELibPrimesException do begin
			Result := E.ErrorCode;
		end
		else begin
			Result := LIBPRIMES_ERROR_GENERICEXCEPTION;
		end
	end;
end;

function libprimes_releaseinstance (pInstance: TLibPrimesHandle): TLibPrimesResult; cdecl;
var
	ObjectInstance: TObject;
begin
	try
		ObjectInstance := TObject (pInstance);
		if (not Supports (ObjectInstance, ILibPrimesBase)) then
			raise ELibPrimesException.Create (LIBPRIMES_ERROR_INVALIDCAST);
		

		TLibPrimesWrapper.ReleaseInstance(ObjectInstance);

		Result := LIBPRIMES_SUCCESS;
	except
		On E: ELibPrimesException do begin
			Result := E.ErrorCode;
		end
		else begin
			Result := LIBPRIMES_ERROR_GENERICEXCEPTION;
		end
	end;
end;

function libprimes_getlibraryversion (pMajor: PCardinal; pMinor: PCardinal; pMicro: PCardinal; nPreReleaseInfoBufferSize: Cardinal; pPreReleaseInfoNeededChars: PCardinal; pPreReleaseInfoBuffer: PAnsiChar; nBuildInfoBufferSize: Cardinal; pBuildInfoNeededChars: PCardinal; pBuildInfoBuffer: PAnsiChar): TLibPrimesResult; cdecl;
var
	ResultPreReleaseInfo: String;
	LenPreReleaseInfo: Cardinal;
	ResultBuildInfo: String;
	LenBuildInfo: Cardinal;
begin
	try
		if (not Assigned (pMajor)) then
			raise ELibPrimesException.Create (LIBPRIMES_ERROR_INVALIDPARAM);

		if (not Assigned (pMinor)) then
			raise ELibPrimesException.Create (LIBPRIMES_ERROR_INVALIDPARAM);

		if (not Assigned (pMicro)) then
			raise ELibPrimesException.Create (LIBPRIMES_ERROR_INVALIDPARAM);

		if ((not Assigned (pPreReleaseInfoBuffer)) and (not Assigned(pPreReleaseInfoNeededChars))) then
			raise ELibPrimesException.Create (LIBPRIMES_ERROR_INVALIDPARAM);
		if ((not Assigned (pBuildInfoBuffer)) and (not Assigned(pBuildInfoNeededChars))) then
			raise ELibPrimesException.Create (LIBPRIMES_ERROR_INVALIDPARAM);

		TLibPrimesWrapper.GetLibraryVersion(pMajor^, pMinor^, pMicro^, ResultPreReleaseInfo, ResultBuildInfo);

		LenPreReleaseInfo := Length (ResultPreReleaseInfo);
		if Assigned(pPreReleaseInfoNeededChars) then
			pPreReleaseInfoNeededChars^ := LenPreReleaseInfo;
		if Assigned(pPreReleaseInfoBuffer) then begin
			if (LenPreReleaseInfo >= nPreReleaseInfoBufferSize) then
				raise ELibPrimesException.Create (LIBPRIMES_ERROR_BUFFERTOOSMALL);
			Move (PAnsiChar (ResultPreReleaseInfo)^, pPreReleaseInfoBuffer^, LenPreReleaseInfo + 1);
		end;
		LenBuildInfo := Length (ResultBuildInfo);
		if Assigned(pBuildInfoNeededChars) then
			pBuildInfoNeededChars^ := LenBuildInfo;
		if Assigned(pBuildInfoBuffer) then begin
			if (LenBuildInfo >= nBuildInfoBufferSize) then
				raise ELibPrimesException.Create (LIBPRIMES_ERROR_BUFFERTOOSMALL);
			Move (PAnsiChar (ResultBuildInfo)^, pBuildInfoBuffer^, LenBuildInfo + 1);
		end;
		Result := LIBPRIMES_SUCCESS;
	except
		On E: ELibPrimesException do begin
			Result := E.ErrorCode;
		end
		else begin
			Result := LIBPRIMES_ERROR_GENERICEXCEPTION;
		end
	end;
end;

function libprimes_createfactorizationcalculator (pInstance: PLibPrimesHandle): TLibPrimesResult; cdecl;
var
	ResultInstance: TObject;
begin
	try
		if not Assigned(pInstance) then
			raise ELibPrimesException.Create (LIBPRIMES_ERROR_INVALIDPARAM);

		ResultInstance := TLibPrimesWrapper.CreateFactorizationCalculator();

		pInstance^ := ResultInstance;
		Result := LIBPRIMES_SUCCESS;
	except
		On E: ELibPrimesException do begin
			Result := E.ErrorCode;
		end
		else begin
			Result := LIBPRIMES_ERROR_GENERICEXCEPTION;
		end
	end;
end;

function libprimes_createsievecalculator (pInstance: PLibPrimesHandle): TLibPrimesResult; cdecl;
var
	ResultInstance: TObject;
begin
	try
		if not Assigned(pInstance) then
			raise ELibPrimesException.Create (LIBPRIMES_ERROR_INVALIDPARAM);

		ResultInstance := TLibPrimesWrapper.CreateSieveCalculator();

		pInstance^ := ResultInstance;
		Result := LIBPRIMES_SUCCESS;
	except
		On E: ELibPrimesException do begin
			Result := E.ErrorCode;
		end
		else begin
			Result := LIBPRIMES_ERROR_GENERICEXCEPTION;
		end
	end;
end;

function libprimes_setjournal (pFileName: PAnsiChar): TLibPrimesResult; cdecl;
begin
	try
		if (not Assigned (pFileName)) then
			raise ELibPrimesException.Create (LIBPRIMES_ERROR_INVALIDPARAM);

		TLibPrimesWrapper.SetJournal(StrPas (pFileName));

		Result := LIBPRIMES_SUCCESS;
	except
		On E: ELibPrimesException do begin
			Result := E.ErrorCode;
		end
		else begin
			Result := LIBPRIMES_ERROR_GENERICEXCEPTION;
		end
	end;
end;


end.

