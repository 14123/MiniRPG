unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, jpeg, Gauges, ComCtrls;

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
    pb1: TProgressBar;
    pb2: TProgressBar;
    img2: TImage;
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    procedure fight(att,attp:Integer);
  public
    { Public declarations }
  end;

var
  att,agi,str,int:Byte;
  attp,agip,strp,intp:Byte;
  hpp,hp:Integer;
  Form2: TForm2;


implementation

uses Unit1;

{$R *.dfm}

procedure TForm2.FormCreate(Sender: TObject);
begin
  //фон
   Brush.Bitmap := TBitMap.Create;
   Brush.Bitmap.LoadFromFile('im\fon.bmp');
   agip:=20;
   strp:=20;
   intp:=20;
   hp:=str*5;
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
begin
  hp:=hp-attp;
  pb1.Position:=hp;
  hpp:=hpp-att;
  pb2.Position:=hpp;
  att:=0;
  attp:=0;
  if (hpp<=0) then
    begin
      w:=True;
      Form2.Close;
    end;
  if (hp<=0)then
    begin
      hp:=str*5;
      hpp:=strp*5;
    end;
end;


procedure TForm2.btn1Click(Sender: TObject);
begin
  attp:=randomatt;
  if (attp<> 2)then
    begin
      att:=agi;
    end;
    lbl2.Caption:=IntToStr(attp);
  if ((attp)=2)then
    if ((attp)=1)then
      begin
        attp:=agi;
      end
    else
      begin
        attp:=2*str;
      end;
  fight(att,attp);
end;

procedure TForm2.btn2Click(Sender: TObject);
begin
  attp:=randomatt;
  if (attp<> 3)then
    begin
      att:=str;
    end;
    lbl2.Caption:=IntToStr(attp);
  if ((attp)=2)then
    if ((attp)=3)then
      begin
        attp:=2*agi;
      end
    else
      begin
        attp:=str;
      end;
  fight(att,attp);
end;

procedure TForm2.btn3Click(Sender: TObject);
begin
  attp:=randomatt;
  if (attp<> 1)then
    begin
      att:=int;
    end;
    lbl2.Caption:=IntToStr(attp);
  if ((attp)=1)then
    if ((attp)=3)then
      begin
        attp:=int;
      end
    else
      begin
        attp:=2*agi;
      end;
  fight(att,attp);
end;



end.
