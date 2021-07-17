unit fmRespStringGrid;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, dmRespStringGrid,
  Data.Bind.Controls, System.Rtti, FMX.Grid.Style, FMX.ScrollBox, FMX.Grid,
  Fmx.Bind.Navigator, Data.Bind.EngExt, Fmx.Bind.DBEngExt, Data.Bind.Components,
  System.Bindings.Outputs, Fmx.Bind.Editors, Fmx.Bind.Grid, Data.Bind.Grid,
  Data.Bind.DBScope, FMX.Memo.Types, FMX.Memo;

type
  TfRespStringGrid = class(TForm)
    gpMain: TGridPanelLayout;
    pnGridHead: TPanel;
    Label1: TLabel;
    loPopGrid: TLayout;
    gpDataControl: TGridPanelLayout;
    cbOpenData: TCheckBox;
    btSave: TButton;
    navPopData: TBindNavigator;
    sgPopulation: TStringGrid;
    BindingsList1: TBindingsList;
    LinkControlToPropertyActive: TLinkControlToProperty;
    StyleBook1: TStyleBook;
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    loComments: TLayout;
    pnCommentHeader: TPanel;
    lbComment: TLabel;
    LinkPropertyToFieldStateName: TLinkPropertyToField;
    meComments: TMemo;
    LinkControlToField1: TLinkControlToField;
    procedure btSaveClick(Sender: TObject);
    procedure sgPopulationResized(Sender: TObject);
    procedure LinkGridToDataSourceBindSourceDB1Activated(Sender: TObject);
  private
    { Private declarations }
    procedure CalcColumnWidths;
  public
    { Public declarations }
  end;

var
  fRespStringGrid: TfRespStringGrid;

implementation

uses
  System.Math;

{$R *.fmx}

procedure TfRespStringGrid.btSaveClick(Sender: TObject);
begin
  dRespStringGrid.mtStateData.SaveToFile('..\..\USPopulationEstimates.xml');
end;

procedure TfRespStringGrid.CalcColumnWidths;
var
  LContentWidth: Single;
  LPropSum: Single;
  LColIx: Integer;
  LCurProp: Single;
const
  LColumnResp: Array[0..3, 1..3] of Single =
    ((90.0, 100.0, 2.0), (125.0, 175.0, 5.0),(100.0, 125.0, 2.0),(100.0, 125.0, 2.0));
begin
  LContentWidth := sgPopulation.Content.Width;

  LPropSum := 0;
  for LColIx := Low(LColumnResp) to High(LColumnResp) do
    LPropSum := LPropSum + LColumnResp[LColIx, 3];

  if sgPopulation.ColumnCount < (High(LColumnResp) + 1) then
  Exit;

  for LColIx := Low(LColumnResp) to High(LColumnResp) do
    begin
      LCurProp := (LColumnResp[LColIx, 3] / LPropSum) * LContentWidth;
      sgPopulation.Columns[LColIx].Width := Min(Max(LColumnResp[LColIx, 1], LCurProp), LColumnResp[LColIx, 2]);
    end;
end;

procedure TfRespStringGrid.LinkGridToDataSourceBindSourceDB1Activated(
  Sender: TObject);
begin
  CalcColumnWidths;
end;

procedure TfRespStringGrid.sgPopulationResized(Sender: TObject);
begin
  CalcColumnWidths;
end;

end.
