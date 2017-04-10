unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, jpeg;

type
  TForm1 = class(TForm)
    pnl1: TPanel;
    img1: TImage;
    img2: TImage;
    pnl2: TPanel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

var
  x,y:array [1..2] of Byte;

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var
  S:string;
begin
   S:=ExtractFilePath(Application.ExeName);
   img1.Picture.LoadFromFile(s+'1.jpg');
end;



procedure TForm1.FormKeyPress(Sender: TObject; var Key: Char);
begin
  case key of
  'W','w':
      begin
        img2.Top:=img2.Top - 10;
        y[1]:=y[1]+10;
      end;
  'A','a':
      begin
        img2.Left:=img2.Left - 10;
        x[1]:=x[1]-10;
      end;
  'S','s':
      begin
        img2.Top:=img2.Top + 10;
        x[1]:=x[1]-10;
      end;
  'D','d':
      begin
        img2.Left :=img2.Left + 10;
        y[1]:=y[1]-10;
      end;
  end;
  Form1.Refresh;

end;



end.
