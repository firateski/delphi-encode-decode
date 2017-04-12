unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IdCoder, IdCoder3to4, IdCoderMIME, IdBaseComponent,xpman;

type
  TForm1 = class(TForm)
    encoder: TIdEncoderMIME;
    decoder: TIdDecoderMIME;
    Edit1: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Button2: TButton;
    Edit2: TEdit;
    Label2: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin

edit3.Text := encoder.Encode( edit1.Text );

end;

procedure TForm1.Button2Click(Sender: TObject);
begin

edit4.Text := decoder.DecodeString( edit2.Text );

end;

end.
