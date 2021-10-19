(*++

Copyright (C) 2020 ADSK

All rights reserved.

This file has been generated by the Automatic Component Toolkit (ACT) version 1.7.0-develop.

Abstract: This is an autogenerated Pascal implementation file in order to allow easy
development of RTTI. It needs to be generated only once.

Interface version: 1.0.0

*)

{$MODE DELPHI}
Unit rtti_impl;

interface

uses
	rtti_types,
	rtti_exception,
	rtti_interfaces,
	rtti_impl_zoo,
	rtti_impl_base,
	rtti_impl_animal,
	rtti_impl_giraffe,
	rtti_impl_mammal,
	rtti_impl_reptile,
	rtti_impl_snake,
	rtti_impl_tiger,
	rtti_impl_turtle,
	Classes,
	sysutils;

type
	TRTTIWrapper = class(TObject)
		public
			class procedure GetVersion(out AMajor: Cardinal; out AMinor: Cardinal; out AMicro: Cardinal);
			class function GetLastError(AInstance: TObject; out AErrorMessage: String): Boolean;
			class procedure ReleaseInstance(AInstance: TObject);
			class procedure AcquireInstance(AInstance: TObject);
			class function CreateZoo(): TObject;
	end;


implementation

class procedure TRTTIWrapper.GetVersion(out AMajor: Cardinal; out AMinor: Cardinal; out AMicro: Cardinal);
begin
	AMajor := RTTI_VERSION_MAJOR;
	AMinor := RTTI_VERSION_MINOR;
	AMicro := RTTI_VERSION_MICRO;
end;

class function TRTTIWrapper.GetLastError(AInstance: TObject; out AErrorMessage: String): Boolean;
begin
	if AInstance <> nil then
	begin
			Result := (AInstance as TRTTIBase).GetLastErrorMessage(AErrorMessage);
	end;
end;

class procedure TRTTIWrapper.ReleaseInstance(AInstance: TObject);
begin
	(AInstance as IRTTIBase).DecRefCount(); 
end;

class procedure TRTTIWrapper.AcquireInstance(AInstance: TObject);
begin
	(AInstance as IRTTIBase).IncRefCount(); 
end;

class function TRTTIWrapper.CreateZoo(): TObject;
begin
	Result := TRTTIZoo.Create();
	(Result as TRTTIZoo).Animals.Add(TRTTIGiraffe.Create('Gerald Giraffe'));
	(Result as TRTTIZoo).Animals.Add(TRTTITiger.Create('Timmy Tiger'));
	(Result as TRTTIZoo).Animals.Add(TRTTITiger.Create('Tony Tiger'));
	(Result as TRTTIZoo).Animals.Add(TRTTISnake.Create('Sebastian Snake'));
	(Result as TRTTIZoo).Animals.Add(TRTTITurtle.Create('Tobias Turtle'));
	(Result as TRTTIZoo).Animals.Add(TRTTITurtle.Create('Theo Turtle'));
	(Result as TRTTIZoo).Animals.Add(TRTTITurtle.Create('Tomás Turtle'));
	(Result as TRTTIZoo).Animals.Add(TRTTISnake.Create('Slytherin Snake'));
	(Result as TRTTIZoo).Animals.Add(TRTTITiger.Create('Travis Tiger'));
	(Result as TRTTIZoo).Animals.Add(TRTTIGiraffe.Create('Gary Giraffe'));
end;


end.