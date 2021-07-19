unit fmRespStringGrid;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, dmRespStringGrid,
  Data.Bind.Controls, System.Rtti, FMX.Grid.Style, FMX.ScrollBox, FMX.Grid,
  FMX.Bind.Navigator, Data.Bind.EngExt, FMX.Bind.DBEngExt, Data.Bind.Components,
  System.Bindings.Outputs, FMX.Bind.Editors, FMX.Bind.Grid, Data.Bind.Grid,
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
{ Save the current FDMem table to persistent media. }

procedure TfRespStringGrid.btSaveClick(Sender: TObject);
begin
  dRespStringGrid.mtStateData.SaveToFile('..\..\USPopulationEstimates.xml');
end;

{ Calculate the column widths displayed in the grid. }

procedure TfRespStringGrid.CalcColumnWidths;
type
  ColParam = (cpMinSize, cpMaxSize, cpProportion);  // to index column property array
var
  LContentWidth: Single;                            // the width available in the grid for columns
  LPropSum: Single;                                 // the sum of all column proportion values
  LColIx: Integer;                                  // column index into column property array
  LCurProp: Single;                                 // calculated column width using only proportion, without constraints
const

  { Each column has three property values associated:
    Minimum column width. The column width will never be set lower than this value
    Maximum column width. The column width will never be set greater than this value
    Column Proportion. The column's width will be calculated using this value as a proportion
    but will be constrained by the specified minimum and maximum values }

  LColumnResp: Array [0 .. 3, ColParam] of Single = // column property array
    ((90.0, 100.0, 2.0), (125.0, 175.0, 5.0), (100.0, 125.0, 2.0), (100.0, 125.0, 2.0));
begin
  LContentWidth := sgPopulation.Content.Width;      // obtain width available for columns

  { Calculate the sum of all column proportion properties to be used as the denominator in
    the individual column width calculation by proportion. }

  LPropSum := 0;                                    // init
  for LColIx := Low(LColumnResp) to High(LColumnResp) do // loop over entire array
    LPropSum := LPropSum + LColumnResp[LColIx, cpProportion]; // add proportion property value to total

  { This routine may be called before columns are actually created. The following avoids index
    out of range violations by exiting when there are an insufficient number of columns actually defined. }

  if sgPopulation.ColumnCount < (High(LColumnResp) + 1) then // make sure there are enough columns
    Exit;                                           // hop out if insufficient column count

  { Set the column width for each column as specified by the column property array. For each column
    the width value is calculated as a proportion using the total of all proportion properties as the
    denominator and the individual proportion as the numerator of each column. This value is further
    constrained by the minimum and maximum values for the column. }

  sgPopulation.BeginUpdate;                         // increase update semaphore count to avoid painting during update

  for LColIx := Low(LColumnResp) to High(LColumnResp) do // loop over all array entries
    begin
      LCurProp := (LColumnResp[LColIx, cpProportion] / LPropSum) * LContentWidth; // determine current width by proportion
      sgPopulation.Columns[LColIx].Width := // constrain the proportional width using Min and Max values for the column
        Min(Max(LColumnResp[LColIx, cpMinSize], LCurProp), LColumnResp[LColIx, cpMaxSize]);
    end;

  sgPopulation.EndUpdate;                           // decrease update semaphore count to permit painting
end;

{ Event is fired when activating the LiveBindings for the grid. This is used to set the column widths
  initially and precludes having to set desired widths in the column specifications. }

procedure TfRespStringGrid.LinkGridToDataSourceBindSourceDB1Activated(Sender: TObject);
begin
  CalcColumnWidths;                                 // invoke the column width algorithm
end;

{ This event fires when the grid is resized, generally in response to the window being resized. The column widtdhs
  are adjusted by invlking the width algorithm. }

procedure TfRespStringGrid.sgPopulationResized(Sender: TObject);
begin
  CalcColumnWidths;                                 // invoke the column width algorithm
end;

end.
