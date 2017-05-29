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
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    wall0: TImage;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btn2Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
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
 // xwall,ywall:array [1..2] of Byte;

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var
  S:string;
begin
  //фон
   Brush.Bitmap := TBitMap.Create;
   Brush.Bitmap.LoadFromFile('im\Fon.bmp');


   S:=ExtractFilePath(Application.ExeName);
   img1.Picture.LoadFromFile(s+'im\1.jpg');
 //  wall0.Picture.LoadFromFile(s+'im\wall0.jpg');
   x[1]:=img2.Left div 10;
   y[1]:=img2.Top div 10;
   Label1.Caption:='Left:';
        Label2.Caption:='Top:';
        Label1.Caption:=Label1.Caption+IntToStr(img2.left);
        Label2.Caption:=Label2.Caption+IntToStr(img2.top);
        Label3.Caption:='X:';
        Label4.Caption:='Y:';
        Label3.Caption:=Label3.Caption+IntToStr(x[1]);
        Label4.Caption:=Label4.Caption+IntToStr(y[1]);

end;



procedure TForm1.FormKeyPress(Sender: TObject; var Key: Char);
begin
  case key of
  'W','w', 'Ц', 'ц':
      begin
        if y[1]<>0 then
          begin
            img2.Top:=img2.Top - 10;
            y[1]:=y[1]-1;
          end;

        Label1.Caption:='Left:';
        Label2.Caption:='Top:';
        Label1.Caption:=Label1.Caption+IntToStr(img2.left);
        Label2.Caption:=Label2.Caption+IntToStr(img2.top);
        Label3.Caption:='X:';
        Label4.Caption:='Y:';
        Label3.Caption:=Label3.Caption+IntToStr(x[1]);
        Label4.Caption:=Label4.Caption+IntToStr(y[1]);
      end;
  'A','a', 'Ф', 'ф':
      begin
        if x[1]<>0 then
          begin
            img2.Left:=img2.Left - 10;
            x[1]:=x[1]-1;
          end;
        Label1.Caption:='Left:';
        Label2.Caption:='Top:';
        Label1.Caption:=Label1.Caption+IntToStr(img2.left);
        Label2.Caption:=Label2.Caption+IntToStr(img2.top);
        Label3.Caption:='X:';
        Label4.Caption:='Y:';
        Label3.Caption:=Label3.Caption+IntToStr(x[1]);
        Label4.Caption:=Label4.Caption+IntToStr(y[1]);
      end;
  'S','s', 'Ы', 'ы':
      begin
      if y[1]<>33 then
          begin
            img2.Top:=img2.Top + 10;
            y[1]:=y[1]+1;
          end;
        Label1.Caption:='Left:';
        Label2.Caption:='Top:';
        Label1.Caption:=Label1.Caption+IntToStr(img2.left);
        Label2.Caption:=Label2.Caption+IntToStr(img2.top);
        Label3.Caption:='X:';
        Label4.Caption:='Y:';
        Label3.Caption:=Label3.Caption+IntToStr(x[1]);
        Label4.Caption:=Label4.Caption+IntToStr(y[1]);
      end;
  'D','d', 'в', 'В':
      begin
        if x[1]<>65 then
          begin
            img2.Left :=img2.Left + 10;
            x[1]:=x[1]+1;
          end;
        Label1.Caption:='Left:';
        Label2.Caption:='Top:';
        Label1.Caption:=Label1.Caption+IntToStr(img2.left);
        Label2.Caption:=Label2.Caption+IntToStr(img2.top);
        Label3.Caption:='X:';
        Label4.Caption:='Y:';
        Label3.Caption:=Label3.Caption+IntToStr(x[1]);
        Label4.Caption:=Label4.Caption+IntToStr(y[1]);
      end;
  end;
  Form1.Refresh;

end;



procedure TForm1.btn2Click(Sender: TObject);
begin
  if y[1]<>0 then
          begin
            img2.Top:=img2.Top - 10;
            y[1]:=y[1]-1;
          end;


end;

procedure TForm1.btn5Click(Sender: TObject);
begin
   if y[1]<>33 then
          begin
            img2.Top:=img2.Top + 10;
            y[1]:=y[1]+1;
          end;
end;

procedure TForm1.btn6Click(Sender: TObject);
begin
        if x[1]<>65 then
          begin
            img2.Left :=img2.Left + 10;
            x[1]:=x[1]+1;
          end;
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
        if x[1]<>0 then
          begin
            img2.Left:=img2.Left - 10;
            x[1]:=x[1]-1;
          end;
end;

end.
