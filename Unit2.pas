unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, jpeg, Gauges, ComCtrls,
  Vcl.Imaging.pngimage;

type
  TForm2 = class(TForm)
    img1: TImage;
    btn1: TBitBtn;
    btn2: TBitBtn;
    btn3: TBitBtn;
    btn4: TBitBtn;
    btn5: TBitBtn;
    btn6: TBitBtn;
    img6: TImage;
    lbl1: TLabel;
    lbl2: TLabel;
    pb2: TProgressBar;
    img2: TImage;
    pb1: TProgressBar;
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private

  public
    hpp,hp:Integer;
    procedure fight(att,attp:Integer);
    function endoffight(hpp,hp:Integer): Integer;
    procedure newfight();
  end;

var
  att:Byte;
  attp,agip,strp,intp:Byte;
  Form2: TForm2;
  w:Boolean;


implementation

uses Unit1;

{$R *.dfm}

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  form1.Enabled:=true;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  //фон
   Brush.Bitmap := TBitMap.Create;
   Brush.Bitmap.LoadFromFile('im\fon.bmp');
   agip:=20;
   strp:=20;
   intp:=20;
end;

procedure TForm2.newfight();
begin
   hp:=Form1.str*5;
   hpp:=strp*5;
   pb1.Max:=hp;
   pb2.Max:=hpp;
end;

function randomatt(): Byte ;
begin
  Randomize;
  attp:=1+Random(3);
  Result:=attp;
end;

procedure TForm2.fight(att,attp:Integer);
var q: Integer;
begin
  hp:=hp-attp;
  pb1.Position:=hp;
  hpp:=hpp-att;
  pb2.Position:=hpp;
  att:=0;
  attp:=0;
  q := endoffight(hpp,hp);
  if ( q > 0) then
   begin
      Form1.Enabled:=True;
      Form2.Close;
   end;

end;

function TForm2.endoffight(hpp,hp:Integer): Integer;
begin
  if (hpp<=0) and (hp > 0) then
  begin
    Result := 1;
    Exit;
  end;
  if (hp<=0) and (hpp > 0) then
  begin
    Result := 2;
    Exit;
  end;
  if (hp <=0) and (hpp <= 0) then
  begin
    Result := 3;
    Exit;
  end;
  Result := 0;
end;

procedure TForm2.btn1Click(Sender: TObject);
begin
  attp:=randomatt;
  if (attp<> 2)then
    begin
      att:=form1.agi;
    end;
    lbl2.Caption:=IntToStr(attp);
  if ((attp)=2)then
    if ((attp)=1)then
      begin
        attp:=agip;
      end
    else
      begin
        attp:=2*strp;
      end;
  fight(att,attp);
end;

procedure TForm2.btn2Click(Sender: TObject);
begin
  attp:=randomatt;
  if (attp<> 3)then
    begin
      att:=form1.str;
    end;
    lbl2.Caption:=IntToStr(attp);
  if ((attp)=2)then
    if ((attp)=3)then
      begin
        attp:=2*agip;
      end
    else
      begin
        attp:=strp;
      end;
  fight(att,attp);
end;

procedure TForm2.btn3Click(Sender: TObject);
begin
  attp:=randomatt;
  if (attp<> 1)then
    begin
      att:=form1.int;
    end;
    lbl2.Caption:=IntToStr(attp);
  if ((attp)=1)then
    if ((attp)=3)then
      begin
        attp:=intp;
      end
    else
      begin
        attp:=2*agip;
      end;
  fight(att,attp);
end;



end.
