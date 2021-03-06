unit UnitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.DBCtrls, Vcl.Mask, Data.DB, Vcl.Grids, Vcl.DBGrids, System.ImageList,
  Vcl.ImgList, Vcl.Imaging.pngimage;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    TabSheet1: TTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    ComboBox1: TComboBox;
    Edit5: TEdit;
    ComboBox2: TComboBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBMemo1: TDBMemo;
    DBEdit7: TDBEdit;
    DBGrid1: TDBGrid;
    Label16: TLabel;
    txtBusca: TEdit;
    BtInserir: TButton;
    btCancelar: TButton;
    BtDeletar: TButton;
    BtSalvar: TButton;
    DBEdit8: TDBEdit;
    Button1: TButton;
    Image1: TImage;
    procedure txtBuscaChange(Sender: TObject);
    procedure BtInserirClick(Sender: TObject);
    procedure BtSalvarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure BtDeletarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses UnitDM;

procedure TForm1.btCancelarClick(Sender: TObject);
begin
  dm.tbClientes.Cancel;
end;

procedure TForm1.BtDeletarClick(Sender: TObject);
begin

  if Application.MessageBox('Deseja realmente deletar o usuario?','Aten??o',MB_ICONQUESTION+MB_YESNO)= mrYES then


begin
  dm.tbClientes.Delete;
end;

end;

procedure TForm1.BtInserirClick(Sender: TObject);
begin
  DM.tbClientes.append;
end;

procedure TForm1.BtSalvarClick(Sender: TObject);
begin
  dm.tbClientes.Post;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
 dm.tbClientes.Edit;
end;

procedure TForm1.txtBuscaChange(Sender: TObject);
begin
  DM.tbClientes.Locate('nome', txtBusca.Text,[LoPartialKey]);
end;

end.
