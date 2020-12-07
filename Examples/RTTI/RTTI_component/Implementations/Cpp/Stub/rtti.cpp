/*++

Copyright (C) 2020 ADSK

All rights reserved.

This file has been generated by the Automatic Component Toolkit (ACT) version 1.7.0-develop.

Abstract: This is an autogenerated C++ implementation file in order to allow easy
development of RTTI. It needs to be generated only once.

Interface version: 1.0.0

*/

#include "rtti_abi.hpp"
#include "rtti_interfaces.hpp"
#include "rtti_interfaceexception.hpp"

using namespace RTTI;
using namespace RTTI::Impl;

void CWrapper::GetVersion(RTTI_uint32 & nMajor, RTTI_uint32 & nMinor, RTTI_uint32 & nMicro)
{
	nMajor = RTTI_VERSION_MAJOR;
	nMinor = RTTI_VERSION_MINOR;
	nMicro = RTTI_VERSION_MICRO;
}

bool CWrapper::GetLastError(IBase* pInstance, std::string & sErrorMessage)
{
	if (pInstance) {
		return pInstance->GetLastErrorMessage (sErrorMessage);
	} else {
		return false;
	}
}

void CWrapper::ReleaseInstance(IBase* pInstance)
{
	IBase::ReleaseBaseClassInterface(pInstance);
}

void CWrapper::AcquireInstance(IBase* pInstance)
{
	IBase::AcquireBaseClassInterface(pInstance);
}

IZoo * CWrapper::CreateZoo()
{
	throw ERTTIInterfaceException(RTTI_ERROR_NOTIMPLEMENTED);
}


