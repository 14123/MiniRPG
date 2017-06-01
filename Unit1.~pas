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
    wall1: TImage;
    Label5: TLabel;
    forest1: TImage;
    forest1d2: TImage;
    forest1d3: TImage;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btn2Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
  private
    function checkBarrier(x, y, q:integer): Boolean;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

var
  x,y:array [1..2] of Byte;
//  xwall,ywall:array [1..2] of Byte;

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var
  S:string;
begin
  //фон
   Brush.Bitmap := TBitMap.Create;
   Brush.Bitmap.LoadFromFile('im\Fon.bmp');
   S:=ExtractFilePath(Application.ExeName);
   img1.Picture.LoadFromFile(s+'im\location1.jpg');
   img2.Picture.LoadFromFile(s+'im\hero.jpg');
   wall1.Picture.LoadFromFile(s+'im\wall1.jpg');
   forest1.Picture.LoadFromFile(s+'im\forest1.jpg');
   forest1d2.Picture.LoadFromFile(s+'im\location1.jpg');
   forest1d3.Picture.LoadFromFile(s+'im\forest1.jpg');
   img2.Top := img1.Height div 2;
   img2.Left := img1.Width div 2;
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
var a:Boolean;
begin
  case key of
  'W','w', 'Ц', 'ц':
  begin
        a := checkBarrier(img2.Left, img2.Top, 1 );
        if (a) then
        begin
          if y[1]<>0 then
          begin
            img2.Top:=img2.Top - 10;
            y[1]:=y[1]-1;
          end;
          Label1.Caption :='Left:';
          Label2.Caption :='Top:';
          Label1.Caption := Label1.Caption + IntToStr(img2.left);
          Label2.Caption := Label2.Caption + IntToStr(img2.top);
          Label3.Caption :='X:';
          Label4.Caption :='Y:';
          Label3.Caption := Label3.Caption + IntToStr(x[1]);
          Label4.Caption := Label4.Caption + IntToStr(y[1]);
       end;
  end;
  'A','a', 'Ф', 'ф':
  begin
     // if ( (img2.Top > wall1.Top + wall1.Height) or (img2.Top + img2.Height < wall1.Top) ) or  ((img2.Left - 10 > wall1.Left + wall1.Width) or (img2.Left + img2.Width < wall1.Left + 1)) then
     a := checkBarrier(img2.Left , img2.Top, 2 );
     if(a) then
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
  end;
  'S','s', 'Ы', 'ы':
  begin
    //  if ( (img2.Top > wall1.Top + wall1.Height) or (img2.Top + 10 + img2.Height < wall1.Top) ) or  ((img2.Left > wall1.Left + wall1.Width) or (img2.Left + img2.Width < wall1.Left + 1)) then
    a := checkBarrier(img2.Left , img2.Top, 3 );
    if(a) then
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
  end;
  'D','d', 'в', 'В':
   begin
    //  if ( (img2.Top > wall1.Top + wall1.Height) or (img2.Top + img2.Height < wall1.Top) ) or  ((img2.Left > wall1.Left + wall1.Width) or (img2.Left + img2.Width + 10 < wall1.Left)) then
    a := checkBarrier(img2.Left , img2.Top, 4 );
    if(a) then
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

function TForm1.checkBarrier(x, y, q: integer): Boolean;
begin
  case q of
    1:
    begin
      if ((y - 10> forest1.Top + forest1.Height) or (y + img2.Height < forest1.Top)  or  (x  > forest1.Left + forest1.Width) or (x + img2.Width < forest1.Left)) then
         if ( (y - 10> wall1.Top + wall1.Height) or (y + img2.Height < wall1.Top)  or  (x  > wall1.Left + wall1.Width) or (x + img2.Width < wall1.Left) ) then
           if ((y - 10> forest1d2.Top + forest1d2.Height) or (y + img2.Height < forest1d2.Top)  or  (x  > forest1d2.Left + forest1d2.Width) or (x + img2.Width < forest1d2.Left)) then
              if ((y - 10> forest1d3.Top + forest1d3.Height) or (y + img2.Height < forest1d3.Top)  or  (x  > forest1d3.Left + forest1d3.Width) or (x + img2.Width < forest1d3.Left)) then
         begin
            result := True;
            Exit;
         end;
      result := False;
    end;
    2:
    begin
      if ( (y > wall1.Top + wall1.Height) or (y + img2.Height < wall1.Top) or  (x - 10 > wall1.Left + wall1.Width) or (x + img2.Width < wall1.Left + 1) ) then
        if ( (y > forest1.Top + forest1.Height) or (y + img2.Height < forest1.Top)  or  (x - 10  > forest1.Left + forest1.Width) or (x + img2.Width < forest1.Left +1) ) then
          if ( (y > forest1d2.Top + forest1d2.Height) or (y + img2.Height < forest1d2.Top)  or  (x - 10  > forest1d2.Left + forest1d2.Width) or (x + img2.Width < forest1d2.Left +1) ) then
            if ( (y > forest1d3.Top + forest1d3.Height) or (y + img2.Height < forest1d3.Top)  or  (x - 10  > forest1d3.Left + forest1d3.Width) or (x + img2.Width < forest1d3.Left +1) ) then
        begin
            result := True;
            Exit;
         end;
      result := False;
    end;
    3:
    begin
      if ( (y > wall1.Top + wall1.Height) or (y + 10 + img2.Height < wall1.Top) or  (x > wall1.Left + wall1.Width) or (x + img2.Width < wall1.Left + 1) ) then
        if (  (y > forest1.Top + forest1.Height) or (y + img2.Height + 10 < forest1.Top)  or  (x  > forest1.Left + forest1.Width) or (x + img2.Width < forest1.Left +1) ) then
          if (  (y > forest1d2.Top + forest1d2.Height) or (y + img2.Height + 10 < forest1d2.Top)  or  (x  > forest1d2.Left + forest1d2.Width) or (x + img2.Width < forest1d2.Left +1) ) then
            if (  (y > forest1d3.Top + forest1d3.Height) or (y + img2.Height + 10 < forest1d3.Top)  or  (x  > forest1d3.Left + forest1d3.Width) or (x + img2.Width < forest1d3.Left +1) ) then
         begin
            result := True;
            Exit;
         end;
      result := False;
    end;
    4:
    begin
      if ( (y > wall1.Top + wall1.Height) or (y + img2.Height < wall1.Top) or  (x > wall1.Left + wall1.Width) or (x + img2.Width + 10 < wall1.Left) ) then
        if ( (y > forest1.Top + forest1.Height) or (y + img2.Height < forest1.Top)  or  (x  > forest1.Left + forest1.Width) or (x + img2.Width + 10 < forest1.Left ) ) then
          if ( (y > forest1d2.Top + forest1d2.Height) or (y + img2.Height < forest1d2.Top)  or  (x  > forest1d2.Left + forest1d2.Width) or (x + img2.Width + 10 < forest1d2.Left ) ) then
            if ( (y > forest1d3.Top + forest1d3.Height) or (y + img2.Height < forest1d3.Top)  or  (x  > forest1d3.Left + forest1d3.Width) or (x + img2.Width + 10 < forest1d3.Left ) ) then
          begin
            result := True;
            Exit;
          end;
      result := False;
    end;
  end;
end;

end.
