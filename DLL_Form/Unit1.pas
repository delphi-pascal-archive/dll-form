unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   end;
var
  Form1: TForm1;

implementation

 function ShowModalForm:Integer;
 external 'DLLFORM';

 procedure ShowForm(Appl, Form: THandle);
 external 'DLLFORM';

 procedure FreeForm;
 external 'DLLFROM';

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
 ShowForm(Application.Handle, Self.Handle);
end;

end.
