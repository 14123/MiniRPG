unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, jpeg;

type
  TForm1 = class(TForm)
    pnl1: TPanel;
    img1: TImage;
    lbl1: TLabel;
    img2: TImage;
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
  'W','w':begin
        img2.Top:=img2.Top - 10;
      end;
  'A','a':begin
        img2.Left:=img2.Left - 10;
      end;
  'S','s':begin
        img2.Top:=img2.Top + 10;
      end;
  'D','d':begin
        img2.Left :=img2.Left + 10;
      end;
  end;
  Form1.Refresh;

end;

end.
