program prRespStringGrid;

uses
  System.StartUpCopy,
  FMX.Forms,
  fmRespStringGrid in 'fmRespStringGrid.pas' {fRespStringGrid},
  dmRespStringGrid in 'dmRespStringGrid.pas' {dRespStringGrid: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TdRespStringGrid, dRespStringGrid);
  Application.CreateForm(TfRespStringGrid, fRespStringGrid);
  Application.Run;
end.
