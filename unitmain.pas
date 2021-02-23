unit unitMain;

{$mode delphi}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls;

type

  { TFormMain }

  TFormMain = class(TForm)
    PaintBox: TPaintBox;
    Timer: TTimer;
    procedure PaintBoxPaint(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
  private
    Time: Double;
  public

  end;

var
  FormMain: TFormMain;

implementation

{$R *.lfm}

{ TFormMain }

procedure TFormMain.TimerTimer(Sender: TObject);
begin
  Time := Time + 0.09;
  PaintBox.Invalidate;
end;

procedure TFormMain.PaintBoxPaint(Sender: TObject);
var
  Size: Integer;
begin
  Size := Trunc(Sin(Time) * 70);
  PaintBox.Canvas.Ellipse(Rect(
    PaintBox.Width div 2 - Size,// x1
    PaintBox.Height div 2 - Size,// y1
    PaintBox.Width div 2 + Size,// x2
    PaintBox.Height div 2 + Size// y2
  ));
end;

end.

