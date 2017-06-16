unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, jpeg, ComCtrls, PNGImage;

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
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    wall1: TImage;
    forest1: TImage;
    forest1d2: TImage;
    forest1d3: TImage;
    location2: TImage;
    castle2d1: TImage;
    castle2d2: TImage;
    location3: TImage;
    door2d1: TImage;
    npc2d1: TImage;
    sword1: TImage;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    ListBox1: TListBox;
    wall3d1: TImage;
    wall3d2: TImage;
    Label6: TLabel;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Button10: TButton;
    enemy3d1: TImage;
    InventSword1: TImage;
    Label5: TLabel;
    img2r: TImage;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btn2Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
  private
    fight :integer;
    procedure jumplevel();
    procedure quest();
    procedure newhero();
    procedure loadloc1();
    procedure endhistory();
  public
    int, agi, str: integer;
    function checkBarrier1(x, y, q: integer): Integer;
    function checkBarrier2(x, y, q: integer): Integer;
    function checkBarrier3(x, y, q: integer): Integer;
  end;

var
  Form1: TForm1;


implementation

uses Unit2;


var
  x,y:array [1..2] of Byte;
  setlocation : integer;
  skills: Byte;
//  xwall,ywall:array [1..2] of Byte;

{$R *.dfm}





procedure TForm1.FormCreate(Sender: TObject);
var
  S:string;
begin
  //фон
   fight := 0;
   setlocation := 1;
   Brush.Bitmap := TBitMap.Create;
   Brush.Bitmap.LoadFromFile('im\fon.bmp');
   S:=ExtractFilePath(Application.ExeName);
   location1.Picture.LoadFromFile(s+'im\forest1.jpg');
   location2.Picture.LoadFromFile(s+'im\location2.bmp');
   location3.Picture.LoadFromFile(s+'im\location3.jpg');
   img2.Picture.LoadFromFile(s+'im\herol.png');
   img2r.Picture.LoadFromFile(s+'im\heror.png');
   npc2d1.Picture.LoadFromFile(s+'im\npc1.png');
   enemy3d1.Picture.LoadFromFile(s+'im\enemy.png');
   sword1.Picture.LoadFromFile(s+'im\sword1.png');
   //wall1.Picture.LoadFromFile(s+'im\wall1.jpg');
   //forest1.Picture.LoadFromFile(s+'im\forest1.jpg');
   //forest1d2.Picture.LoadFromFile(s+'im\location1.jpg');
   //forest1d3.Picture.LoadFromFile(s+'im\forest1.jpg');
   castle2d1.Picture.LoadFromFile(s+'im\castle1.jpg');
   castle2d2.Picture.LoadFromFile(s+'im\castle1.jpg');
   door2d1.Picture.LoadFromFile(s+'im\wall1.jpg');
   InventSword1.Picture.LoadFromFile(s+'im\sword1.png');
//   wall3d1.Picture.LoadFromFile(s+'im\wall1.jpg');
//   wall3d2.Picture.LoadFromFile(s+'im\wall1.jpg');

end;



procedure TForm1.FormKeyPress(Sender: TObject; var Key: Char); 
var a:Integer; 
begin 
if (fight = 0) then 
begin 
case key of 
'W','w', 'Ц', 'ц': 
begin 
if (setlocation = 1) then 
a := checkBarrier1(img2.Left, img2.Top, 1 ); 
if (setlocation = 2) then 
a := checkBarrier2(img2.Left, img2.Top, 1 ); 
if (setlocation = 3) then 
a := checkBarrier3(img2.Left, img2.Top, 1 ); 
if (a = 1) then 
begin 
if y[1]<>0 then 
begin 
img2.Top:=img2.Top - 10; 
img2r.Top:=img2r.Top - 10; 
y[1]:=y[1]-1; 
end; 
end; 
end; 
'A','a', 'Ф', 'ф': 
begin 
if (setlocation = 1) then 
a := checkBarrier1(img2.Left , img2.Top, 2 ); 
if (setlocation = 2) then 
a := checkBarrier2(img2.Left, img2.Top, 2 ); 
if (setlocation = 3) then 
a := checkBarrier3(img2.Left, img2.Top, 2 ); 
if(a = 1) then 
begin 
if x[1]<>0 then 
begin 
img2.Left:=img2.Left - 10; 
img2r.Left:=img2r.Left - 10; 
img2.Visible := True; 
img2r.Visible := False; 
x[1]:=x[1]-1; 
end; 
end; 
end; 
'S','s', 'Ы', 'ы': 
begin 
if (setlocation = 1) then 
a := checkBarrier1(img2.Left , img2.Top, 3 ); 
if (setlocation = 2) then 
a := checkBarrier2(img2.Left, img2.Top, 3 ); 
if (setlocation = 3) then 
a := checkBarrier3(img2.Left, img2.Top, 3 ); 
if(a = 1) then 
begin 
if y[1]<>33 then 
begin 
img2.Top:=img2.Top + 10; 
img2r.Top:=img2r.Top + 10; 
y[1]:=y[1]+1; 
end; 
end; 
end; 
'D','d', 'в', 'В': 
begin 
if (setlocation = 1) then 
a := checkBarrier1(img2.Left , img2.Top, 4 ); 
if (setlocation = 2) then 
a := checkBarrier2(img2.Left, img2.Top, 4 ); 
if (setlocation = 3) then 
a := checkBarrier3(img2.Left, img2.Top, 4 ); 
if(a = 1) then 
begin 
if x[1]<>65 then 
begin 
img2.Left :=img2.Left + 10; 
img2r.Left :=img2r.Left + 10; 
img2.Visible := False; 
img2r.Visible := True; 
x[1]:=x[1]+1; 
end; 
end; 
end; 
end; 
jumplevel(); 
quest; 
Form1.Refresh; 
end; 
if (fight = 1) then 
endhistory(); 
end;



procedure TForm1.btn2Click(Sender: TObject);
var Key:Char;
begin
  Key := 'W';
  FormKeyPress(Sender,  Key);
end;

procedure TForm1.btn5Click(Sender: TObject);
var Key:Char;
begin
  Key := 'S';
  FormKeyPress(Sender,  Key);
end;

procedure TForm1.btn6Click(Sender: TObject);
var Key:Char;
begin
  Key := 'D';
  FormKeyPress(Sender,  Key);
end;

procedure TForm1.btn4Click(Sender: TObject);
var Key:Char;
begin
  Key := 'A';
  FormKeyPress(Sender,  Key);
end;

function TForm1.checkBarrier1(x, y, q: integer): Integer;
begin
  case q of
    1:
    begin
      if ((y - 10> forest1.Top + forest1.Height) or (y + img2.Height < forest1.Top)  or  (x  >= forest1.Left + forest1.Width) or (x + img2.Width < forest1.Left)) then
         if ( (y - 10> wall1.Top + wall1.Height) or (y + img2.Height < wall1.Top)  or  (x  > wall1.Left + wall1.Width) or (x + img2.Width < wall1.Left) ) then
           if ((y - 10> forest1d2.Top + forest1d2.Height) or (y + img2.Height < forest1d2.Top)  or  (x  > forest1d2.Left + forest1d2.Width) or (x + img2.Width < forest1d2.Left)) then
              if ((y - 10> forest1d3.Top + forest1d3.Height) or (y + img2.Height < forest1d3.Top)  or  (x  > forest1d3.Left + forest1d3.Width) or (x + img2.Width < forest1d3.Left)) then
         begin
            result := 1;
            Exit;
         end;
      result := 0;
      Exit;
    end;
    2:
    begin
      if ( (y > wall1.Top + wall1.Height) or (y + img2.Height < wall1.Top) or  (x - 10 > wall1.Left + wall1.Width) or (x + img2.Width < wall1.Left + 1) ) then
        if ( (y > forest1.Top + forest1.Height) or (y + img2.Height < forest1.Top)  or  (x - 10  > forest1.Left + forest1.Width) or (x + img2.Width < forest1.Left +1) ) then
          if ( (y > forest1d2.Top + forest1d2.Height) or (y + img2.Height < forest1d2.Top)  or  (x - 10  > forest1d2.Left + forest1d2.Width) or (x + img2.Width < forest1d2.Left +1) ) then
            if ( (y > forest1d3.Top + forest1d3.Height) or (y + img2.Height < forest1d3.Top)  or  (x - 10  > forest1d3.Left + forest1d3.Width) or (x + img2.Width < forest1d3.Left +1) ) then
        begin
            result := 1;
            Exit;
         end;
      result := 0;
      Exit;
    end;
    3:
    begin
      if ( (y > wall1.Top + wall1.Height) or (y + 10 + img2.Height < wall1.Top) or  (x > wall1.Left + wall1.Width) or (x + img2.Width < wall1.Left + 1) ) then
        if (  (y > forest1.Top + forest1.Height) or (y + img2.Height + 10 < forest1.Top)  or  (x  > forest1.Left + forest1.Width) or (x + img2.Width < forest1.Left +1) ) then
          if (  (y > forest1d2.Top + forest1d2.Height) or (y + img2.Height + 10 < forest1d2.Top)  or  (x  > forest1d2.Left + forest1d2.Width) or (x + img2.Width < forest1d2.Left +1) ) then
            if (  (y > forest1d3.Top + forest1d3.Height) or (y + img2.Height + 10 < forest1d3.Top)  or  (x  > forest1d3.Left + forest1d3.Width) or (x + img2.Width < forest1d3.Left +1) ) then
         begin
            result := 1;
            Exit;
         end;
      result := 0;
      Exit;
    end;
    4:
    begin
      if ( (y > wall1.Top + wall1.Height) or (y + img2.Height < wall1.Top) or  (x > wall1.Left + wall1.Width) or (x + img2.Width + 10 < wall1.Left) ) then
        if ( (y > forest1.Top + forest1.Height) or (y + img2.Height < forest1.Top)  or  (x  > forest1.Left + forest1.Width) or (x + img2.Width + 10 < forest1.Left ) ) then
          if ( (y > forest1d2.Top + forest1d2.Height) or (y + img2.Height < forest1d2.Top)  or  (x  > forest1d2.Left + forest1d2.Width) or (x + img2.Width + 10 < forest1d2.Left ) ) then
            if ( (y > forest1d3.Top + forest1d3.Height) or (y + img2.Height < forest1d3.Top)  or  (x  > forest1d3.Left + forest1d3.Width) or (x + img2.Width + 10 < forest1d3.Left ) ) then
          begin
            result := 1;
            Exit;
          end;
      result := 0;
      Exit;
    end;
  end;
end;

function TForm1.checkBarrier2(x, y, q: integer): Integer;
begin
  case q of
    1:
    begin
      if ((y - 10> castle2d1.Top + castle2d1.Height) or (y + img2.Height < castle2d1.Top)  or  (x  > castle2d1.Left + castle2d1.Width) or (x + img2.Width < castle2d1.Left)) then
         if ( (y - 10> castle2d2.Top + castle2d2.Height) or (y + img2.Height < castle2d2.Top)  or  (x  > castle2d2.Left + castle2d2.Width) or (x + img2.Width < castle2d2.Left) ) then
          if (door2d1.Visible = false) or ( (y - 10> door2d1.Top + door2d1.Height) or (y + img2.Height < door2d1.Top)  or  (x  > door2d1.Left + door2d1.Width) or (x + img2.Width < door2d1.Left) ) then
            if (npc2d1.Visible = false) or ( (y - 10> npc2d1.Top + npc2d1.Height) or (y + img2.Height < npc2d1.Top)  or  (x  > npc2d1.Left + npc2d1.Width) or (x + img2.Width < npc2d1.Left) ) then
         begin
            result := 1;
            Exit;
         end;
      result := 0;
      Exit;
    end;
    2:
    begin
      if ( (y > castle2d1.Top + castle2d1.Height) or (y + img2.Height < castle2d1.Top) or  (x - 10 > castle2d1.Left + castle2d1.Width) or (x + img2.Width < castle2d1.Left + 1) ) then
        if ( (y > castle2d2.Top + castle2d2.Height) or (y + img2.Height < castle2d2.Top)  or  (x - 10  > castle2d2.Left + castle2d2.Width) or (x + img2.Width < castle2d2.Left +1) ) then
          if (door2d1.Visible = false) or  ( (y > door2d1.Top + door2d1.Height) or (y + img2.Height < door2d1.Top)  or  (x - 10  > door2d1.Left + door2d1.Width) or (x + img2.Width < door2d1.Left +1) ) then
            if (npc2d1.Visible = false) or ( (y > npc2d1.Top + npc2d1.Height) or (y + img2.Height < npc2d1.Top)  or  (x - 10  > npc2d1.Left + npc2d1.Width) or (x + img2.Width < npc2d1.Left +1) ) then
        begin
            result := 1;
            Exit;
        end;
      result := 0;
      Exit;
    end;
    3:
    begin
      if ( (y > castle2d1.Top + castle2d1.Height) or (y + 10 + img2.Height < castle2d1.Top) or  (x > castle2d1.Left + castle2d1.Width) or (x + img2.Width < castle2d1.Left + 1) ) then
        if (  (y > castle2d2.Top + castle2d2.Height) or (y + img2.Height + 10 < castle2d2.Top)  or  (x  > castle2d2.Left + castle2d2.Width) or (x + img2.Width < castle2d2.Left +1) ) then
          if  (door2d1.Visible = false) or (  (y > door2d1.Top + door2d1.Height) or (y + img2.Height + 10 < door2d1.Top)  or  (x  > door2d1.Left + door2d1.Width) or (x + img2.Width < door2d1.Left +1) )  then
            if (npc2d1.Visible = false) or (  (y > npc2d1.Top + npc2d1.Height) or (y + img2.Height + 10 < npc2d1.Top)  or  (x  > npc2d1.Left + npc2d1.Width) or (x + img2.Width < npc2d1.Left +1) ) then
        begin
            result := 1;
            Exit;
        end;
      result := 0;
      Exit;
    end;
    4:
    begin
      if ( (y > castle2d1.Top + castle2d1.Height) or (y + img2.Height < castle2d1.Top) or  (x > castle2d1.Left + castle2d1.Width) or (x + img2.Width + 10 < castle2d1.Left) ) then
        if ( (y > castle2d2.Top + castle2d2.Height) or (y + img2.Height < castle2d2.Top)  or  (x  > castle2d2.Left + castle2d2.Width) or (x + img2.Width + 10 < castle2d2.Left ) ) then
          if (door2d1.Visible = false) or ( (y > door2d1.Top + door2d1.Height) or (y + img2.Height < door2d1.Top)  or  (x  > door2d1.Left + door2d1.Width) or (x + img2.Width + 10 < door2d1.Left ) ) then
            if (npc2d1.Visible = false) or ( (y > npc2d1.Top + npc2d1.Height) or (y + img2.Height < npc2d1.Top)  or  (x  > npc2d1.Left + npc2d1.Width) or (x + img2.Width + 10 < npc2d1.Left ) ) then
        begin
            result := 1;
            Exit;
        end;
      result := 0;
      Exit;
    end;
  end;
end;

function TForm1.checkBarrier3(x, y, q: integer): Integer;
begin
  case q of
    1:
    begin
      if ((y - 10> wall3d1.Top + wall3d1.Height) or (y + img2.Height < wall3d1.Top)  or  (x  > wall3d1.Left + wall3d1.Width) or (x + img2.Width < wall3d1.Left)) then
        if ((y - 10> wall3d2.Top + wall3d2.Height) or (y + img2.Height < wall3d2.Top)  or  (x  > wall3d2.Left + wall3d2.Width) or (x + img2.Width < wall3d2.Left)) then
         begin
            result := 1;
            Exit;
         end;
      result := 0;
      Exit;
    end;
    2:
    begin
      if ( (y > wall3d1.Top + wall3d1.Height) or (y + img2.Height < wall3d1.Top) or  (x - 10 > wall3d1.Left + wall3d1.Width) or (x + img2.Width < wall3d1.Left + 1) ) then
        if ( (y > wall3d2.Top + wall3d2.Height) or (y + img2.Height < wall3d2.Top) or  (x - 10 > wall3d2.Left + wall3d2.Width) or (x + img2.Width < wall3d2.Left + 1) ) then
        begin
            result := 1;
            Exit;
        end;
      result := 0;
      Exit;
    end;
    3:
    begin
      if ( (y > wall3d1.Top + wall3d1.Height) or (y + 10 + img2.Height < wall3d1.Top) or  (x > wall3d1.Left + wall3d1.Width) or (x + img2.Width < wall3d1.Left + 1) ) then
        if ( (y > wall3d2.Top + wall3d2.Height) or (y + 10 + img2.Height < wall3d2.Top) or  (x > wall3d2.Left + wall3d2.Width) or (x + img2.Width < wall3d2.Left + 1) ) then
        begin
            result := 1;
            Exit;
        end;
      result := 0;
      Exit;
    end;
    4:
    begin
      if ( (y > wall3d1.Top + wall3d1.Height) or (y + img2.Height < wall3d1.Top) or  (x > wall3d1.Left + wall3d1.Width) or (x + img2.Width + 10 < wall3d1.Left) ) then
        if ( (y > wall3d2.Top + wall3d2.Height) or (y + img2.Height < wall3d2.Top) or  (x > wall3d2.Left + wall3d2.Width) or (x + img2.Width + 10 < wall3d2.Left) ) then
        begin
            result := 1;
            Exit;
        end;
      result := 0;
      Exit;
    end;
  end;
end;



procedure TForm1.jumplevel();
begin
  if (setlocation = 1) then
    if (img2.Left + (img2.Width div 2) > 664) then
      if (img2.Top + img2.Height < wall1.Top) then
      begin
        location1.Visible := False;
        wall1.Visible := False;
        forest1.Visible := False;
        forest1d2.Visible := False;
        forest1d3.Visible := False;
        sword1.Visible := False;
        location2.Visible := True;
        castle2d1.Visible := True;
        castle2d2.Visible := True;
        if (npc2d1.Hint <> '3') then
        begin
          npc2d1.Visible := True;
          door2d1.Visible := True;
        end;
        img2.Left := 100;
        x[1] := img2.Left div 10;
        img2r.Left := img2.Left;
        location2.SendToBack;
        castle2d1.BringToFront;
        castle2d2.BringToFront;
        setlocation := 2;
      end;
  if (setlocation = 2) then
  begin
    if (img2.Left < 40) then
      if (img2.Top + img2.Height < wall1.Top)  then
      begin
        Label6.Visible := False;
        location2.Visible := False;
        castle2d1.Visible := False;
        castle2d2.Visible := False;
        door2d1.Visible := False;
        if (npc2d1.Hint = '0') or (npc2d1.Hint = '1') or (npc2d1.Hint = '2') then
          npc2d1.Visible := False;
        location1.Visible := True;
        wall1.Visible := True;
        forest1.Visible := True;
        forest1d2.Visible := True;
        if (npc2d1.Hint = '1')  then
        begin
          Label1.Visible := False;
          sword1.Visible := True;
        end;
        img2.Left := 620;
        img2r.Left := img2.Left;
        x[1] := img2.Left div 10;
        setlocation := 1;
      end;
    if (img2.Left + (img2.Width div 2) > 660) then
      if (img2.Top + img2.Height < castle2d2.Top) and (img2.Top > castle2d1.Top + castle2d1.Height) then
      begin
        Label6.Visible := False;
        location2.Visible := False;
        castle2d1.Visible := False;
        castle2d2.Visible := False;
        door2d1.Visible := False;
        if (npc2d1.Hint = '0') or (npc2d1.Hint = '1') or (npc2d1.Hint = '2') then
          npc2d1.Visible := False;
        location3.Visible := True;
        wall3d1.Visible := True;
        wall3d2.Visible := True;
        enemy3d1.Visible := True;
        img2.Left := 100;
        img2r.Left := img2.Left;
        x[1] := img2.Left div 10;
        setlocation := 3;
      end;
  end;
  if (setlocation = 3) then
  begin
    if (img2.Left < 40) then
      if (img2.Top + img2.Height < castle2d2.Top) and (img2.Top > castle2d1.Top + castle2d1.Height) then
      begin
        location3.Visible := False;
        wall3d1.Visible := False;
        wall3d2.Visible := False;
        enemy3d1.Visible := False;
        location2.Visible := True;
        castle2d1.Visible := True;
        castle2d2.Visible := True;
        if (npc2d1.Hint = '0') or (npc2d1.Hint = '1') or (npc2d1.Hint = '2') then
          npc2d1.Visible := True;
        img2.Left := 600;
        img2r.Left := img2.Left;
        x[1] := img2.Left div 10;
        setlocation := 2;
      end;
  end;
end;

procedure TForm1.quest();
begin
  if (npc2d1.Hint <> '3') then
  begin
    if (npc2d1.Hint = '1') then
    if (img2.Top + img2.Height > sword1.Top) and (img2.Left < sword1.Left + sword1.Width) then
    begin
      sword1.Visible := False;
      InventSword1.Visible := True;
      sword1.Hint := '1';
      npc2d1.Hint := '2';
    end;
    if (setlocation = 2)  then
    if (npc2d1.Left - ( img2.Left + img2.Width) < 100) and (( abs( ( npc2d1.Top + npc2d1.Height ) - img2.Top) < 100  ) or ( abs( npc2d1.Top - (img2.Top + img2.Height)) < 100  ) ) then
    begin
      if (npc2d1.Hint = '0') then
      begin
        Label1.BringToFront;
        Label1.Visible := True;
        npc2d1.Hint := '1';
      end;
      if (npc2d1.Hint = '2') then
      begin
        if (sword1.Hint = '1')then
        begin
          npc2d1.Hint := '3';
          npc2d1.Visible := False;
          door2d1.Visible := False;
          Label6.Visible := True;
        end;
      end;
    end;
  end;
  if (setlocation = 3) then
    if (w = false) and (enemy3d1.Left - ( img2.Left + img2.Width) < 50) and (( abs( ( enemy3d1.Top + enemy3d1.Height ) - img2.Top) < 80  ) or ( abs( enemy3d1.Top - (img2.Top + img2.Height)) < 80  ) ) then
      begin
        fight := 1;
        Form1.Enabled:=False;
        form2.Show;
        Form2.newfight();
        endhistory();
      end;
end;

procedure TForm1.endhistory();
begin
  if (Form2.endoffight(form2.hpp,form2.hp) = 1) then
  begin
    location3.Visible := False;
    location2.Visible := True;
    enemy3d1.Visible := False;
    img2r.Top := 30;
    img2r.Left := 300;
    img2r.Enabled := False;
    Label11.Caption := 'Вы победили! Жители вашей деревни вскоре вернутся';
    Label12.Caption := 'в родные места, и ваш подвиг ещё долго будут помнить.';
    Application.ProcessMessages;
    sleep(5000);
    Form1.Close();
  end;
  if (Form2.endoffight(form2.hpp,form2.hp) = 2) then
  begin
    location3.Visible := False;
    location2.Visible := True;
    enemy3d1.Top := 30;
    enemy3d1.Left := 300;
    img2r.Visible := False;
    Label11.Caption := 'Вы погибли...';
    Application.ProcessMessages;
    sleep(3000);
    Form1.Close();
  end;
  if (Form2.endoffight(form2.hpp,form2.hp) = 3) then
  begin
    enemy3d1.Visible := False;
    img2r.Visible := False;
    location3.Visible := False;
    location2.Visible := True;
    sword1.Visible := True;
    sword1.Top := 30;
    sword1.Left := 300;
    Label11.Caption := 'Вы победили, но погибли в бою... Ваш народ будет помнить о вас...';
    Application.ProcessMessages;
    sleep(3000);
    Form1.Close();
  end;


end;

procedure TForm1.loadloc1();
begin
  location1.Visible := True;
  forest1.Visible := True;
  forest1d2.Visible := True;
  forest1d3.Visible := True;
  wall1.Visible := True;
  if (npc2d1.Hint = '1') then
    sword1.Visible := True;
  if (npc2d1.Hint = '2') or (npc2d1.Hint = '3') then
    InventSword1.Visible := True;
  img2.Visible := True;
  img2.Top := location1.Height div 2;
  img2.Left := location1.Width div 2;
  img2r.Top := img2.Top;
  img2r.Left := img2.Left;
  x[1]:=img2.Left div 10;
  y[1]:=img2.Top div 10;
  Button1.Visible := False;
  Button2.Visible := False;
  Button3.Visible := False;
  Label7.Visible := False;
  Label8.Visible := False;
  Label9.Visible := False;
  Label10.Visible := False;
  Button4.Visible := False;
  Button5.Visible := False;
  Button6.Visible := False;
  Button7.Visible := False;
  Button8.Visible := False;
  Button9.Visible := False;
  Button10.Visible := False;
  Label5.Caption := 'Инвентарь';
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  newhero();
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  ListBox1.Items.Clear;
  ListBox1.Items.Add(sword1.Hint);
  ListBox1.Items.Add(npc2d1.Hint);
  ListBox1.Items.Add(IntToStr(str));
  ListBox1.Items.Add(IntToStr(agi));
  ListBox1.Items.Add(IntToStr(int));
  ListBox1.Items.SaveToFile('1.conf');
  Form1.Close;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
 if FileExists('1.conf') then
   begin
     ListBox1.Items.LoadFromFile('1.conf');
     sword1.Hint := ListBox1.Items[0];
     npc2d1.Hint := ListBox1.Items[1];
     str := StrToInt(ListBox1.Items[2]);
     agi := StrToInt(ListBox1.Items[3]);
     int := StrToInt(ListBox1.Items[4]);
     if (agi =0) or (int = 0) or (str = 0) then
     begin
       agi := 10;
       str := 10;
       int := 10;
     end;
     loadloc1;
     Label2.Caption := 'Сила: ' + IntToStr(str);
     Label3.Caption := 'Ловкость: ' + IntToStr(agi);
     Label4.Caption := 'Интелект: ' + IntToStr(int);
     Label13.Visible := False;
     Label14.Visible := False;
   end
   else
    newhero();
end;



procedure TForm1.Button3Click(Sender: TObject);
begin
  Form1.Close;
end;

procedure TForm1.newhero();
begin
  Button1.Visible := False;
  Button2.Visible := False;
  Button3.Visible := False;
  Label7.Visible := True;
  Label8.Visible := True;
  Label9.Visible := True;
  Button5.Visible := True;
  Button7.Visible := True;
  Button9.Visible := True;
  Button10.Visible := True;
  img2.Visible := True;
  skills := 30;
  str := 10;
  agi := 10;
  int := 10;
  Label7.Caption := Label7.Caption + IntToStr(str);
  Label8.Caption := Label8.Caption + IntToStr(agi);
  Label9.Caption := Label9.Caption + IntToStr(int);
  Label10.Caption := Label10.Caption + IntToStr(skills);
  Label13.Visible := False;
  Label14.Visible := False;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  if (str > 10) then
  begin
    str := str - 1;
    skills := skills + 1;
    Button5.Visible := True;
    Button7.Visible := True;
    Button9.Visible := True;
    if (str = 10) then
      Button4.Visible := False;
  end;
  Label7.Caption := 'Сила: ' + IntToStr(str);
  Label10.Caption := 'Оставшиеся очки: ' + IntToStr(skills);
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  if (agi > 10) then
  begin
    agi := agi - 1;
    skills := skills + 1;
    Button5.Visible := True;
    Button7.Visible := True;
    Button9.Visible := True;
    if (agi = 10) then
      Button6.Visible := False;
  end;
  Label8.Caption := 'Ловкость: ' + IntToStr(agi);
  Label10.Caption := 'Оставшиеся очки: ' + IntToStr(skills);
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  if (int > 10) then
  begin
    int := int - 1;
    skills := skills + 1;
    Button5.Visible := True;
    Button7.Visible := True;
    Button9.Visible := True;
    if (int = 10) then
      Button8.Visible := False;
  end;
  Label9.Caption := 'Интелект: ' + IntToStr(int);
  Label10.Caption := 'Оставшиеся очки: ' + IntToStr(skills);
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  if (skills > 0) then
  begin
    str := str + 1;
    skills := skills - 1;
    Button4.Visible := True;
    if (skills = 0) then
    begin
      Button5.Visible := False;
      Button7.Visible := False;
      Button9.Visible := False;
    end;
    Label7.Caption := 'Сила: ' + IntToStr(str);
    Label10.Caption := 'Оставшиеся очки: ' + IntToStr(skills);
  end;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  if (skills > 0) then
  begin
    agi := agi + 1;
    skills := skills - 1;
    Button6.Visible := True;
    if (skills = 0) then
    begin
      Button5.Visible := False;
      Button7.Visible := False;
      Button9.Visible := False;
    end;
    Label8.Caption := 'Ловкость: ' + IntToStr(agi);
    Label10.Caption := 'Оставшиеся очки: ' + IntToStr(skills);
  end;
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
  if (skills > 0) then
  begin
    int := int + 1;
    skills := skills - 1;
    Button8.Visible := True;
    if (skills = 0) then
    begin
      Button5.Visible := False;
      Button7.Visible := False;
      Button9.Visible := False;
    end;
    Label9.Caption := 'Интелект: ' + IntToStr(int);
    Label10.Caption := 'Оставшиеся очки: ' + IntToStr(skills);
  end;
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
  Label2.Caption := 'Сила: ' + IntToStr(str);
  Label3.Caption := 'Ловкость: ' + IntToStr(agi);
  Label4.Caption := 'Интелект: ' + IntToStr(int);
 loadloc1;
end;

end.
