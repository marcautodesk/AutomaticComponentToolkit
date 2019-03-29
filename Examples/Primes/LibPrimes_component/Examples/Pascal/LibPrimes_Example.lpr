(*++

Copyright (C) 2018 PrimeDevelopers

All rights reserved.

This file has been generated by the Automatic Component Toolkit (ACT) version 1.5.0-develop5.

Abstract: This is an autogenerated Pascal application that demonstrates the
 usage of the Pascal bindings of Prime Numbers Library

Interface version: 1.2.0

*)

program LibPrimesPascalTest;

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes, SysUtils, CustApp,
  Unit_LibPrimes
  { you can add units after this };

type

TLibPrimes_Example = class(TCustomApplication)
protected
  procedure DoRun; override;
  procedure TestLibPrimes ();
public
  constructor Create(TheOwner: TComponent); override;
  destructor Destroy; override;
end;


procedure TLibPrimes_Example.TestLibPrimes ();
var
  ALibPrimesWrapper: TLibPrimesWrapper;
  AMajor, AMinor, AMicro: Cardinal;
  APreReleaseInfo, ABuildInfo, AVersionString: string;
  ALibPath: string;
begin
  writeln ('loading DLL');
  ALibPath := ''; // TODO add the location of the shared library binary here
  ALibPrimesWrapper := TLibPrimesWrapper.Create (ALibPath + '/' + 'libprimes.dll');
  try
    writeln ('loading DLL Done');
    ALibPrimesWrapper.GetLibraryVersion(AMajor, AMinor, AMicro, APreReleaseInfo, ABuildInfo);
    AVersionString := Format('LibPrimes.version = %d.%d.%d', [AMajor, AMinor, AMicro]);
    if (APreReleaseInfo <> '') then
      AVersionString := AVersionString + '-' + APreReleaseInfo;
    if (ABuildInfo <> '') then
      AVersionString := AVersionString + '+' + ABuildInfo;
    writeln(AVersionString);
  finally
    FreeAndNil(ALibPrimesWrapper);
  end;
end;

procedure TLibPrimes_Example.DoRun;
begin
  try
    TestLibPrimes();
  except
    On E: Exception do
      writeln ('Fatal error: ', E.Message);
  end;
  Terminate
end;

constructor TLibPrimes_Example.Create(TheOwner: TComponent);
begin
  inherited Create(TheOwner);
  StopOnException:=True;
end;

destructor TLibPrimes_Example.Destroy;
begin
  inherited Destroy;
end;


var
  Application: TLibPrimes_Example;
begin
  Application:=TLibPrimes_Example.Create(nil);
  Application.Run;
  Application.Free;
end.
