/*++

Copyright (C) 2020 ADSK

All rights reserved.

Abstract: This is a stub class definition of CZoo

*/

#include "rtti_zoo.hpp"
#include "rtti_interfaceexception.hpp"

// Include custom headers here.


using namespace RTTI::Impl;

/*************************************************************************************************************************
 Class definition of CZoo 
**************************************************************************************************************************/

IAnimalIterator * CZoo::Iterator()
{
	throw ERTTIInterfaceException(RTTI_ERROR_NOTIMPLEMENTED);
}

