unit DLL;

interface

uses
 Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Buttons;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  CallForm: THandle;
  public
  { Public declarations }
  end;

  function ShowModalForm: Integer;
  procedure ShowForm(Appl, Form: THandle);
  procedure FreeForm;

var
  Form1: TForm1;

implementation

{$R *.dfm}
function ShowModalForm:Integer;
begin
 Form1:= TForm1.Create(Application);
 Result := form1.ShowModal;
 Form1.Free;
end;

procedure ShowForm(Appl, Form: THandle);
begin
 Application.Handle := Appl;
 Form1:=TForm1.Create(Application);
 Form1.Show;
end;

procedure FreeForm;
begin
 Form1.Free;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 SendMessage(CallForm, wm_User, 0, 0);
end;

end.
