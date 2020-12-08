'''++

Copyright (C) 2020 ADSK

All rights reserved.

This file has been generated by the Automatic Component Toolkit (ACT) version 1.7.0-develop.

Abstract: This is an autogenerated Python file in order to allow an easy
 use of RTTI

Interface version: 1.0.0

'''


import ctypes
import platform
import enum
import os

name = "rtti"

'''Definition of domain specific exception
'''
class ERTTIException(Exception):
	def __init__(self, code, message = ''):
		self._code = code
		self._message = message
	
	def __str__(self):
		if self._message:
			return 'RTTIException ' + str(self._code) + ': '+ str(self._message)
		return 'RTTIException ' + str(self._code)

'''Definition of binding API version
'''
class BindingVersion(enum.IntEnum):
	MAJOR = 1
	MINOR = 0
	MICRO = 0

'''Definition Error Codes
'''
class ErrorCodes(enum.IntEnum):
	SUCCESS = 0
	NOTIMPLEMENTED = 1
	INVALIDPARAM = 2
	INVALIDCAST = 3
	BUFFERTOOSMALL = 4
	GENERICEXCEPTION = 5
	COULDNOTLOADLIBRARY = 6
	COULDNOTFINDLIBRARYEXPORT = 7
	INCOMPATIBLEBINARYVERSION = 8

'''Definition of Function Table
'''
class FunctionTable:
	rtti_getversion = None
	rtti_getlasterror = None
	rtti_implementsinterface = None
	rtti_releaseinstance = None
	rtti_acquireinstance = None
	rtti_injectcomponent = None
	rtti_getsymbollookupmethod = None
	rtti_createzoo = None
	rtti_tiger_roar = None
	rtti_animaliterator_getnextanimal = None
	rtti_zoo_iterator = None


'''Wrapper Class Implementation
'''
class Wrapper:

	def __init__(self, libraryName = None, symbolLookupMethodAddress = None):
		ending = ''
		if platform.system() == 'Windows':
			ending = 'dll'
		elif platform.system() == 'Linux':
			ending = 'so'
		elif platform.system() == 'Darwin':
			ending = 'dylib'
		else:
			raise ERTTIException(ErrorCodes.COULDNOTLOADLIBRARY)
		
		if (not libraryName) and (not symbolLookupMethodAddress):
			libraryName = os.path.join(os.path.dirname(os.path.realpath(__file__)),'rtti')
		
		if libraryName is not None:
			path = libraryName + '.' + ending
			try:
				self.lib = ctypes.CDLL(path)
			except Exception as e:
				raise ERTTIException(ErrorCodes.COULDNOTLOADLIBRARY, str(e) + '| "'+path + '"' )
			
			self._loadFunctionTable()
		elif symbolLookupMethodAddress is not None:
				self.lib = FunctionTable()
				self._loadFunctionTableFromMethod(symbolLookupMethodAddress)
		else:
			raise ERTTIException(ErrorCodes.COULDNOTLOADLIBRARY, str(e))
		
		self._checkBinaryVersion()
	
	def _loadFunctionTableFromMethod(self, symbolLookupMethodAddress):
		try:
			symbolLookupMethodType = ctypes.CFUNCTYPE(ctypes.c_int32, ctypes.c_char_p, ctypes.POINTER(ctypes.c_void_p))
			symbolLookupMethod = symbolLookupMethodType(int(symbolLookupMethodAddress))
			
			methodAddress = ctypes.c_void_p()
			
			err = symbolLookupMethod(ctypes.c_char_p(str.encode("rtti_getversion")), methodAddress)
			if err != 0:
				raise ERTTIException(ErrorCodes.COULDNOTLOADLIBRARY, str(err))
			methodType = ctypes.CFUNCTYPE(ctypes.c_int32, ctypes.POINTER(ctypes.c_uint32), ctypes.POINTER(ctypes.c_uint32), ctypes.POINTER(ctypes.c_uint32))
			self.lib.rtti_getversion = methodType(int(methodAddress.value))

			err = symbolLookupMethod(ctypes.c_char_p(str.encode("rtti_getlasterror")), methodAddress)
			if err != 0:
				raise ERTTIException(ErrorCodes.COULDNOTLOADLIBRARY, str(err))
			methodType = ctypes.CFUNCTYPE(ctypes.c_int32, ctypes.c_void_p, ctypes.c_uint64, ctypes.POINTER(ctypes.c_uint64), ctypes.c_char_p, ctypes.POINTER(ctypes.c_bool))
			self.lib.rtti_getlasterror = methodType(int(methodAddress.value))

			err = symbolLookupMethod(ctypes.c_char_p(str.encode("rtti_implementsinterface")), methodAddress)
			if err != 0:
				raise ERTTIException(ErrorCodes.COULDNOTLOADLIBRARY, str(err))
			methodType = ctypes.CFUNCTYPE(ctypes.c_int32, ctypes.c_void_p, ctypes.c_char_p, ctypes.POINTER(ctypes.c_bool))
			self.lib.rtti_implementsinterface = methodType(int(methodAddress.value))

			err = symbolLookupMethod(ctypes.c_char_p(str.encode("rtti_releaseinstance")), methodAddress)
			if err != 0:
				raise ERTTIException(ErrorCodes.COULDNOTLOADLIBRARY, str(err))
			methodType = ctypes.CFUNCTYPE(ctypes.c_int32, ctypes.c_void_p)
			self.lib.rtti_releaseinstance = methodType(int(methodAddress.value))
			
			err = symbolLookupMethod(ctypes.c_char_p(str.encode("rtti_acquireinstance")), methodAddress)
			if err != 0:
				raise ERTTIException(ErrorCodes.COULDNOTLOADLIBRARY, str(err))
			methodType = ctypes.CFUNCTYPE(ctypes.c_int32, ctypes.c_void_p)
			self.lib.rtti_acquireinstance = methodType(int(methodAddress.value))
			
			err = symbolLookupMethod(ctypes.c_char_p(str.encode("rtti_injectcomponent")), methodAddress)
			if err != 0:
				raise ERTTIException(ErrorCodes.COULDNOTLOADLIBRARY, str(err))
			methodType = ctypes.CFUNCTYPE(ctypes.c_int32, ctypes.c_char_p, ctypes.c_void_p)
			self.lib.rtti_injectcomponent = methodType(int(methodAddress.value))
			
			err = symbolLookupMethod(ctypes.c_char_p(str.encode("rtti_getsymbollookupmethod")), methodAddress)
			if err != 0:
				raise ERTTIException(ErrorCodes.COULDNOTLOADLIBRARY, str(err))
			methodType = ctypes.CFUNCTYPE(ctypes.c_int32, ctypes.POINTER(ctypes.c_void_p))
			self.lib.rtti_getsymbollookupmethod = methodType(int(methodAddress.value))
			
			err = symbolLookupMethod(ctypes.c_char_p(str.encode("rtti_createzoo")), methodAddress)
			if err != 0:
				raise ERTTIException(ErrorCodes.COULDNOTLOADLIBRARY, str(err))
			methodType = ctypes.CFUNCTYPE(ctypes.c_int32, ctypes.POINTER(ctypes.c_void_p))
			self.lib.rtti_createzoo = methodType(int(methodAddress.value))
			
			err = symbolLookupMethod(ctypes.c_char_p(str.encode("rtti_tiger_roar")), methodAddress)
			if err != 0:
				raise ERTTIException(ErrorCodes.COULDNOTLOADLIBRARY, str(err))
			methodType = ctypes.CFUNCTYPE(ctypes.c_int32, ctypes.c_void_p)
			self.lib.rtti_tiger_roar = methodType(int(methodAddress.value))
			
			err = symbolLookupMethod(ctypes.c_char_p(str.encode("rtti_animaliterator_getnextanimal")), methodAddress)
			if err != 0:
				raise ERTTIException(ErrorCodes.COULDNOTLOADLIBRARY, str(err))
			methodType = ctypes.CFUNCTYPE(ctypes.c_int32, ctypes.c_void_p, ctypes.POINTER(ctypes.c_void_p))
			self.lib.rtti_animaliterator_getnextanimal = methodType(int(methodAddress.value))
			
			err = symbolLookupMethod(ctypes.c_char_p(str.encode("rtti_zoo_iterator")), methodAddress)
			if err != 0:
				raise ERTTIException(ErrorCodes.COULDNOTLOADLIBRARY, str(err))
			methodType = ctypes.CFUNCTYPE(ctypes.c_int32, ctypes.c_void_p, ctypes.POINTER(ctypes.c_void_p))
			self.lib.rtti_zoo_iterator = methodType(int(methodAddress.value))
			
		except AttributeError as ae:
			raise ERTTIException(ErrorCodes.COULDNOTFINDLIBRARYEXPORT, ae.args[0])
		
	def _loadFunctionTable(self):
		try:
			self.lib.rtti_getversion.restype = ctypes.c_int32
			self.lib.rtti_getversion.argtypes = [ctypes.POINTER(ctypes.c_uint32), ctypes.POINTER(ctypes.c_uint32), ctypes.POINTER(ctypes.c_uint32)]
			
			self.lib.rtti_getlasterror.restype = ctypes.c_int32
			self.lib.rtti_getlasterror.argtypes = [ctypes.c_void_p, ctypes.c_uint64, ctypes.POINTER(ctypes.c_uint64), ctypes.c_char_p, ctypes.POINTER(ctypes.c_bool)]

			self.lib.rtti_implementsinterface.restype = ctypes.c_int32
			self.lib.rtti_implementsinterface.argtypes = [ctypes.c_void_p, ctypes.c_char_p, ctypes.POINTER(ctypes.c_bool)]

			self.lib.rtti_releaseinstance.restype = ctypes.c_int32
			self.lib.rtti_releaseinstance.argtypes = [ctypes.c_void_p]
			
			self.lib.rtti_acquireinstance.restype = ctypes.c_int32
			self.lib.rtti_acquireinstance.argtypes = [ctypes.c_void_p]
			
			self.lib.rtti_injectcomponent.restype = ctypes.c_int32
			self.lib.rtti_injectcomponent.argtypes = [ctypes.c_char_p, ctypes.c_void_p]
			
			self.lib.rtti_getsymbollookupmethod.restype = ctypes.c_int32
			self.lib.rtti_getsymbollookupmethod.argtypes = [ctypes.POINTER(ctypes.c_void_p)]
			
			self.lib.rtti_createzoo.restype = ctypes.c_int32
			self.lib.rtti_createzoo.argtypes = [ctypes.POINTER(ctypes.c_void_p)]
			
			self.lib.rtti_tiger_roar.restype = ctypes.c_int32
			self.lib.rtti_tiger_roar.argtypes = [ctypes.c_void_p]
			
			self.lib.rtti_animaliterator_getnextanimal.restype = ctypes.c_int32
			self.lib.rtti_animaliterator_getnextanimal.argtypes = [ctypes.c_void_p, ctypes.POINTER(ctypes.c_void_p)]
			
			self.lib.rtti_zoo_iterator.restype = ctypes.c_int32
			self.lib.rtti_zoo_iterator.argtypes = [ctypes.c_void_p, ctypes.POINTER(ctypes.c_void_p)]
			
		except AttributeError as ae:
			raise ERTTIException(ErrorCodes.COULDNOTFINDLIBRARYEXPORT, ae.args[0])
	
	def _checkBinaryVersion(self):
		nMajor, nMinor, _ = self.GetVersion()
		if (nMajor != BindingVersion.MAJOR) or (nMinor < BindingVersion.MINOR):
			raise ERTTIException(ErrorCodes.INCOMPATIBLEBINARYVERSION)
	
	def checkError(self, instance, errorCode):
		if errorCode != ErrorCodes.SUCCESS.value:
			if instance:
				if instance._wrapper != self:
					raise ERTTIException(ErrorCodes.INVALIDCAST, 'invalid wrapper call')
			message,_ = self.GetLastError(instance)
			raise ERTTIException(errorCode, message)
	
	def GetVersion(self):
		pMajor = ctypes.c_uint32()
		pMinor = ctypes.c_uint32()
		pMicro = ctypes.c_uint32()
		self.checkError(None, self.lib.rtti_getversion(pMajor, pMinor, pMicro))
		
		return pMajor.value, pMinor.value, pMicro.value
	
	def GetLastError(self, InstanceObject):
		InstanceHandle = None
		if InstanceObject:
			InstanceHandle = InstanceObject._handle
		else:
			raise ERTTIException(ErrorCodes.INVALIDPARAM, 'Invalid return/output value')
		nErrorMessageBufferSize = ctypes.c_uint64(0)
		nErrorMessageNeededChars = ctypes.c_uint64(0)
		pErrorMessageBuffer = ctypes.c_char_p(None)
		pHasError = ctypes.c_bool()
		self.checkError(None, self.lib.rtti_getlasterror(InstanceHandle, nErrorMessageBufferSize, nErrorMessageNeededChars, pErrorMessageBuffer, pHasError))
		nErrorMessageBufferSize = ctypes.c_uint64(nErrorMessageNeededChars.value)
		pErrorMessageBuffer = (ctypes.c_char * (nErrorMessageNeededChars.value))()
		self.checkError(None, self.lib.rtti_getlasterror(InstanceHandle, nErrorMessageBufferSize, nErrorMessageNeededChars, pErrorMessageBuffer, pHasError))
		
		return pErrorMessageBuffer.value.decode(), pHasError.value

	def ImplementsInterface(self, InstanceObject, ClassName):
		InstanceHandle = None
		if InstanceObject:
			InstanceHandle = InstanceObject._handle
		else:
			return False

		pImplementsInterface = ctypes.c_bool()
		pClassName = ctypes.c_char_p(str.encode(ClassName))

		self.checkError(None, self.lib.rtti_implementsinterface(InstanceHandle, pClassName, pImplementsInterface))

		return pImplementsInterface.value

	def ReleaseInstance(self, InstanceObject):
		InstanceHandle = None
		if InstanceObject:
			InstanceHandle = InstanceObject._handle
		else:
			raise ERTTIException(ErrorCodes.INVALIDPARAM, 'Invalid return/output value')
		self.checkError(None, self.lib.rtti_releaseinstance(InstanceHandle))
		
	
	def AcquireInstance(self, InstanceObject):
		InstanceHandle = None
		if InstanceObject:
			InstanceHandle = InstanceObject._handle
		else:
			raise ERTTIException(ErrorCodes.INVALIDPARAM, 'Invalid return/output value')
		self.checkError(None, self.lib.rtti_acquireinstance(InstanceHandle))
		
	
	def InjectComponent(self, NameSpace, SymbolAddressMethod):
		pNameSpace = ctypes.c_char_p(str.encode(NameSpace))
		pSymbolAddressMethod = ctypes.c_void_p(SymbolAddressMethod)
		self.checkError(None, self.lib.rtti_injectcomponent(pNameSpace, pSymbolAddressMethod))
		
		bNameSpaceFound = False
		if not bNameSpaceFound:
			raise ERTTIException(ErrorCodes.COULDNOTLOADLIBRARY, "Unknown namespace " + NameSpace)
		
	
	def GetSymbolLookupMethod(self):
		pSymbolLookupMethod = ctypes.c_void_p()
		self.checkError(None, self.lib.rtti_getsymbollookupmethod(pSymbolLookupMethod))
		
		return pSymbolLookupMethod.value
	
	def CreateZoo(self):
		InstanceHandle = ctypes.c_void_p()
		self.checkError(None, self.lib.rtti_createzoo(InstanceHandle))
		if InstanceHandle:
			InstanceObject = Zoo(InstanceHandle, self)
		else:
			raise ERTTIException(ErrorCodes.INVALIDCAST, 'Invalid return/output value')
		
		return InstanceObject
	


''' Class Implementation for Base
'''
class Base:
	@staticmethod
	def ClassName():
		return "Base"

	def __init__(self, handle, wrapper):
		if not handle or not wrapper:
			raise ERTTIException(ErrorCodes.INVALIDPARAM)
		self._handle = handle
		self._wrapper = wrapper
	
	def __del__(self):
		self._wrapper.ReleaseInstance(self)

	@classmethod
	def cast(cls, instance):
		if instance and instance._wrapper.ImplementsInterface(instance, cls.ClassName()):
			return Tiger(instance._handle, instance._wrapper)
		return None

''' Class Implementation for Animal
'''
class Animal(Base):
	@staticmethod
	def ClassName():
		return "Animal"

	def __init__(self, handle, wrapper):
		Base.__init__(self, handle, wrapper)


''' Class Implementation for Mammal
'''
class Mammal(Animal):
	@staticmethod
	def ClassName():
		return "Mammal"

	def __init__(self, handle, wrapper):
		Animal.__init__(self, handle, wrapper)


''' Class Implementation for Reptile
'''
class Reptile(Animal):
	@staticmethod
	def ClassName():
		return "Reptile"

	def __init__(self, handle, wrapper):
		Animal.__init__(self, handle, wrapper)


''' Class Implementation for Giraffe
'''
class Giraffe(Mammal):
	@staticmethod
	def ClassName():
		return "Giraffe"

	def __init__(self, handle, wrapper):
		Mammal.__init__(self, handle, wrapper)


''' Class Implementation for Tiger
'''
class Tiger(Mammal):
	@staticmethod
	def ClassName():
		return "Tiger"

	def __init__(self, handle, wrapper):
		Mammal.__init__(self, handle, wrapper)
	def Roar(self):
		self._wrapper.checkError(self, self._wrapper.lib.rtti_tiger_roar(self._handle))
		
	


''' Class Implementation for Snake
'''
class Snake(Reptile):
	@staticmethod
	def ClassName():
		return "Snake"

	def __init__(self, handle, wrapper):
		Reptile.__init__(self, handle, wrapper)


''' Class Implementation for Turtle
'''
class Turtle(Reptile):
	@staticmethod
	def ClassName():
		return "Turtle"

	def __init__(self, handle, wrapper):
		Reptile.__init__(self, handle, wrapper)


''' Class Implementation for AnimalIterator
'''
class AnimalIterator(Base):
	@staticmethod
	def ClassName():
		return "AnimalIterator"

	def __init__(self, handle, wrapper):
		Base.__init__(self, handle, wrapper)
	def GetNextAnimal(self):
		AnimalHandle = ctypes.c_void_p()
		self._wrapper.checkError(self, self._wrapper.lib.rtti_animaliterator_getnextanimal(self._handle, AnimalHandle))
		if AnimalHandle:
			AnimalObject = Animal(AnimalHandle, self._wrapper)
		else:
			AnimalObject = None
		
		return AnimalObject
	


''' Class Implementation for Zoo
'''
class Zoo(Base):
	@staticmethod
	def ClassName():
		return "Zoo"

	def __init__(self, handle, wrapper):
		Base.__init__(self, handle, wrapper)
	def Iterator(self):
		IteratorHandle = ctypes.c_void_p()
		self._wrapper.checkError(self, self._wrapper.lib.rtti_zoo_iterator(self._handle, IteratorHandle))
		if IteratorHandle:
			IteratorObject = AnimalIterator(IteratorHandle, self._wrapper)
		else:
			raise ERTTIException(ErrorCodes.INVALIDCAST, 'Invalid return/output value')
		
		return IteratorObject
	
		