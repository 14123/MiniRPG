unit TestUnit2;
{

  Delphi DUnit Test Case
  ----------------------
  This unit contains a skeleton test case class generated by the Test Case Wizard.
  Modify the generated code to correctly setup and call the methods from the unit 
  being tested.

}

interface

uses
  TestFramework, SysUtils, Unit2, ExtCtrls, Windows, StdCtrls, Messages, jpeg, Controls,
  Classes, Dialogs, Forms, Buttons, ComCtrls, Variants, Graphics, Gauges;

type
  // Test methods for class TForm2

  TestTForm2 = class(TTestCase)
  strict private
    FForm2: TForm2;
  public
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure Testendoffight1;
    procedure Testendoffight2;
    procedure Testendoffight3;
    procedure Testendoffight4;
  end;

implementation

procedure TestTForm2.SetUp;
begin
  FForm2 := TForm2.Create(nil);
end;

procedure TestTForm2.TearDown;
begin
  FForm2.Free;
  FForm2 := nil;
end;

procedure TestTForm2.Testendoffight1;
var
  ReturnValue: Integer;
  hp: Integer;
  hpp: Integer;
begin
  hpp := 10;
  hp := 10;
  // TODO: Setup method call parameters
  ReturnValue := FForm2.endoffight(hpp,hp);
  // TODO: Validate method results
  CheckEquals(0, ReturnValue , ReturnValue);
end;

procedure TestTForm2.Testendoffight2;
var
  ReturnValue: Integer;
  hp: Integer;
  hpp: Integer;
begin
  hpp := 10;
  hp := 0;
  ReturnValue := FForm2.endoffight(hpp, hp);
  CheckEquals(2,ReturnValue , 'qwe');
end;

procedure TestTForm2.Testendoffight3;
var
  ReturnValue: Integer;
  hp: Integer;
  hpp: Integer;
begin
  hpp := 0;
  hp := 10;
  ReturnValue := FForm2.endoffight(hpp, hp);
  CheckEquals(1,ReturnValue , 'sssadg');
end;

procedure TestTForm2.Testendoffight4;
var
  ReturnValue: Integer;
  hp: Integer;
  hpp: Integer;
begin
  hpp := -50;
  hp := -50;
  ReturnValue := FForm2.endoffight(hpp, hp);
  CheckEquals(3, ReturnValue , 'agdvz');
end;

initialization
  // Register any test cases with the test runner
  RegisterTest(TestTForm2.Suite);
end.


