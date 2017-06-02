unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, jpeg;

type
  TForm1 = class(TForm)
    pnl1: TPanel;
    location1: TImage;
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
<<<<<<< HEAD
    wall1: TImage;
    Label5: TLabel;
    forest1: TImage;
    forest1d2: TImage;
    forest1d3: TImage;
    location2: TImage;
    castle2d1: TImage;
    castle2d2: TImage;
    location3: TImage;
    btn7: TButton;
     procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btn2Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
  private
    function checkBarrier1(x, y, q: integer): Boolean;
    function checkBarrier2(x, y, q: integer): Boolean;
    procedure jumplevel();
  public
    { Public declarations }
  end;

var
  w:Boolean;
  Form1: TForm1;

implementation

uses Unit2;

var
  x,y:array [1..2] of Byte;
  setlocation : integer;
//  xwall,ywall:array [1..2] of Byte;

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var
  S:string;
begin
  //���
   setlocation := 1;
   Brush.Bitmap := TBitMap.Create;

   Brush.Bitmap.LoadFromFile('im\fon.bmp');
   w:=False;

   S:=ExtractFilePath(Application.ExeName);
   location1.Picture.LoadFromFile(s+'im\location1.jpg');
   location2.Picture.LoadFromFile(s+'im\location2.jpg'); 
   location3.Picture.LoadFromFile(s+'im\location3.jpg');
   img2.Picture.LoadFromFile(s+'im\hero.jpg');
   wall1.Picture.LoadFromFile(s+'im\wall1.jpg');
   forest1.Picture.LoadFromFile(s+'im\forest1.jpg');
   forest1d2.Picture.LoadFromFile(s+'im\location1.jpg');
   forest1d3.Picture.LoadFromFile(s+'im\forest1.jpg');
   castle2d1.Picture.LoadFromFile(s+'im\castle1.jpg');
   castle2d2.Picture.LoadFromFile(s+'im\castle1.jpg');
   img2.Top := location1.Height div 2;
   img2.Left := location1.Width div 2;
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
  'W','w', '�', '�':
  begin
        if (setlocation = 1) then
          a := checkBarrier1(img2.Left, img2.Top, 1 );
        if (setlocation = 2) then
          a := checkBarrier2(img2.Left, img2.Top, 1 );
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
          jumplevel();
       end;
  end;
  'A','a', '�', '�':
  begin
     if (setlocation = 1) then
      a := checkBarrier1(img2.Left , img2.Top, 2 );
     if (setlocation = 2) then
      a := checkBarrier2(img2.Left, img2.Top, 2 );
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
        jumplevel();
      end;
  end;
  'S','s', '�', '�':
  begin
    if (setlocation = 1) then
      a := checkBarrier1(img2.Left , img2.Top, 3 );
    if (setlocation = 2) then
      a := checkBarrier2(img2.Left, img2.Top, 3 );
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
        jumplevel();
      end;
  end;
  'D','d', '�', '�':
   begin
    if (setlocation = 1) then
      a := checkBarrier1(img2.Left , img2.Top, 4 );
    if (setlocation = 2) then
      a := checkBarrier2(img2.Left, img2.Top, 4 );
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
        jumplevel();
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


function TForm1.checkBarrier1(x, y, q: integer): Boolean;
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
      Exit;
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
      Exit;
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
      Exit;
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
      Exit;
    end;
  end;
end;

function TForm1.checkBarrier2(x, y, q: integer): Boolean;
begin
  case q of
    1:
    begin
      if ((y - 10> castle2d1.Top + castle2d1.Height) or (y + img2.Height < castle2d1.Top)  or  (x  > castle2d1.Left + castle2d1.Width) or (x + img2.Width < castle2d1.Left)) then
         if ( (y - 10> castle2d2.Top + castle2d2.Height) or (y + img2.Height < castle2d2.Top)  or  (x  > castle2d2.Left + castle2d2.Width) or (x + img2.Width < castle2d2.Left) ) then
         begin
            result := True;
            Exit;
         end;
      result := False;
      Exit;
    end;
    2:
    begin
      if ( (y > castle2d1.Top + castle2d1.Height) or (y + img2.Height < castle2d1.Top) or  (x - 10 > castle2d1.Left + castle2d1.Width) or (x + img2.Width < castle2d1.Left + 1) ) then
        if ( (y > castle2d2.Top + castle2d2.Height) or (y + img2.Height < castle2d2.Top)  or  (x - 10  > castle2d2.Left + castle2d2.Width) or (x + img2.Width < castle2d2.Left +1) ) then
        begin
            result := True;
            Exit;
        end;
      result := False;
      Exit;
    end;
    3:
    begin
      if ( (y > castle2d1.Top + castle2d1.Height) or (y + 10 + img2.Height < castle2d1.Top) or  (x > castle2d1.Left + castle2d1.Width) or (x + img2.Width < castle2d1.Left + 1) ) then
        if (  (y > castle2d2.Top + castle2d2.Height) or (y + img2.Height + 10 < castle2d2.Top)  or  (x  > castle2d2.Left + castle2d2.Width) or (x + img2.Width < castle2d2.Left +1) ) then
        begin
            result := True;
            Exit;
        end;
      result := False;
      Exit;
    end;
    4:
    begin
      if ( (y > castle2d1.Top + castle2d1.Height) or (y + img2.Height < castle2d1.Top) or  (x > castle2d1.Left + castle2d1.Width) or (x + img2.Width + 10 < castle2d1.Left) ) then
        if ( (y > castle2d2.Top + castle2d2.Height) or (y + img2.Height < castle2d2.Top)  or  (x  > castle2d2.Left + castle2d2.Width) or (x + img2.Width + 10 < castle2d2.Left ) ) then
        begin
            result := True;
            Exit;
        end;
      result := False;
      Exit;
    end;
  end;
end;

procedure TForm1.jumplevel( );
begin
  if (setlocation = 1) then
    if (img2.Left + (img2.Width div 2) > 664) then
      if (img2.Top + img2.Height < wall1.Top) and (img2.Top > forest1d2.Top + forest1d2.Height) then
      begin
        location1.Visible := False;
        wall1.Visible := False;
        forest1.Visible := False;
        forest1d2.Visible := False;
        forest1d3.Visible := False;
        location2.Visible := True;
        castle2d1.Visible := True;
        castle2d2.Visible := True;
        img2.Left := 100;
        x[1] := img2.Left div 10;
        location2.SendToBack;
        castle2d1.BringToFront;
        castle2d2.BringToFront;
        setlocation := 2;
      end;
  if (setlocation = 2) then
  begin
    if (img2.Left < 40) then
      if (img2.Top + img2.Height < wall1.Top) and (img2.Top > forest1d2.Top + forest1d2.Height) then
      begin
        location2.Visible := False;
        castle2d1.Visible := False;
        castle2d2.Visible := False;
        location1.Visible := True;
        wall1.Visible := True;
        forest1.Visible := True;
        forest1d2.Visible := True;
        img2.Left := 620;
        x[1] := img2.Left div 10;
        setlocation := 1;
      end;
    if (img2.Left + (img2.Width div 2) > 660) then
      if (img2.Top + img2.Height < castle2d2.Top) and (img2.Top > castle2d1.Top + castle2d1.Height) then
      begin
        location2.Visible := False;
        castle2d1.Visible := False;
        castle2d2.Visible := False;
        location3.Visible := True;
        img2.Left := 100;
        x[1] := img2.Left div 10;
        setlocation := 3;
      end;
  end;
  if (setlocation = 3) then
  begin
    if (img2.Left < 40) then
      if (img2.Top + img2.Height < castle2d2.Top) and (img2.Top > castle2d1.Top + castle2d1.Height) then
      begin
        location3.Visible := false;
        location2.Visible := True;
        castle2d1.Visible := True;
        castle2d2.Visible := True;
        img2.Left := 600;
        x[1] := img2.Left div 10;
        setlocation := 2;
      end;
  end;
end;


procedure TForm1.btn7Click(Sender: TObject);
begin
  form2.Show;
end;


end.
