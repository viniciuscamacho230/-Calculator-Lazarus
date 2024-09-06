unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnAdd: TButton;
    btnSubtract: TButton;
    btnMultiply: TButton;
    btnDivide: TButton;
    btnEqual: TButton;
    btnClear: TButton;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    btn7: TButton;
    btn8: TButton;
    btn9: TButton;
    btn0: TButton;
    btnDecimal: TButton;
    edtDisplay: TEdit;
    procedure btn0Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure btn9Click(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure btnDecimalClick(Sender: TObject);
    procedure btnDivideClick(Sender: TObject);
    procedure btnEqualClick(Sender: TObject);
    procedure btnMultiplyClick(Sender: TObject);
    procedure btnSubtractClick(Sender: TObject);
  private
    { Private declarations }
    FFirstNumber: Double;
    FSecondNumber: Double;
    FOperator: Char;
    procedure UpdateDisplay(Value: string);
    function GetDisplayValue: Double;
    procedure SetDisplayValue(Value: Double);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.UpdateDisplay(Value: string);
begin
  edtDisplay.Text := Value;
end;

function TForm1.GetDisplayValue: Double;
begin
  Result := StrToFloatDef(edtDisplay.Text, 0);
end;

procedure TForm1.SetDisplayValue(Value: Double);
begin
  edtDisplay.Text := FloatToStr(Value);
end;

procedure TForm1.btn0Click(Sender: TObject);
begin
  if edtDisplay.Text = '0' then
    edtDisplay.Text := '0'
  else
    edtDisplay.Text := edtDisplay.Text + '0';
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  if edtDisplay.Text = '0' then
    edtDisplay.Text := '1'
  else
    edtDisplay.Text := edtDisplay.Text + '1';
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  if edtDisplay.Text = '0' then
    edtDisplay.Text := '2'
  else
    edtDisplay.Text := edtDisplay.Text + '2';
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
  if edtDisplay.Text = '0' then
    edtDisplay.Text := '3'
  else
    edtDisplay.Text := edtDisplay.Text + '3';
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
  if edtDisplay.Text = '0' then
    edtDisplay.Text := '4'
  else
    edtDisplay.Text := edtDisplay.Text + '4';
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
  if edtDisplay.Text = '0' then
    edtDisplay.Text := '5'
  else
    edtDisplay.Text := edtDisplay.Text + '5';
end;

procedure TForm1.btn6Click(Sender: TObject);
begin
  if edtDisplay.Text = '0' then
    edtDisplay.Text := '6'
  else
    edtDisplay.Text := edtDisplay.Text + '6';
end;

procedure TForm1.btn7Click(Sender: TObject);
begin
  if edtDisplay.Text = '0' then
    edtDisplay.Text := '7'
  else
    edtDisplay.Text := edtDisplay.Text + '7';
end;

procedure TForm1.btn8Click(Sender: TObject);
begin
  if edtDisplay.Text = '0' then
    edtDisplay.Text := '8'
  else
    edtDisplay.Text := edtDisplay.Text + '8';
end;

procedure TForm1.btn9Click(Sender: TObject);
begin
  if edtDisplay.Text = '0' then
    edtDisplay.Text := '9'
  else
    edtDisplay.Text := edtDisplay.Text + '9';
end;

procedure TForm1.btnAddClick(Sender: TObject);
begin
  FFirstNumber := GetDisplayValue;
  FOperator := '+';
  edtDisplay.Text := '0';
end;

procedure TForm1.btnSubtractClick(Sender: TObject);
begin
  FFirstNumber := GetDisplayValue;
  FOperator := '-';
  edtDisplay.Text := '0';
end;

procedure TForm1.btnMultiplyClick(Sender: TObject);
begin
  FFirstNumber := GetDisplayValue;
  FOperator := '*';
  edtDisplay.Text := '0';
end;

procedure TForm1.btnDivideClick(Sender: TObject);
begin
  FFirstNumber := GetDisplayValue;
  FOperator := '/';
  edtDisplay.Text := '0';
end;

procedure TForm1.btnDecimalClick(Sender: TObject);
begin
  if Pos(',', edtDisplay.Text) = 0 then
    edtDisplay.Text := edtDisplay.Text + ',';
end;

procedure TForm1.btnClearClick(Sender: TObject);
begin
  edtDisplay.Text := '0';
  FFirstNumber := 0;
  FSecondNumber := 0;
  FOperator := #0;
end;

procedure TForm1.btnEqualClick(Sender: TObject);
begin
  FSecondNumber := GetDisplayValue;
  case FOperator of
    '+': SetDisplayValue(FFirstNumber + FSecondNumber);
    '-': SetDisplayValue(FFirstNumber - FSecondNumber);
    '*': SetDisplayValue(FFirstNumber * FSecondNumber);
    '/': if FSecondNumber <> 0 then
           SetDisplayValue(FFirstNumber / FSecondNumber)
         else
           UpdateDisplay('Error');
  end;
  FFirstNumber := GetDisplayValue;
  FOperator := #0;
end;

end.

