unit Editor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Menus, Buttons, ComCtrls, StdCtrls, ColorGrd, ExtDlgs,
  Gauges, Spin, CategoryButtons;

type
  TForm1 = class(TForm)
    ImgHlavni: TImage;
    HlavniMenu: TMainMenu;
    Soubor1: TMenuItem;
    Nov1: TMenuItem;
    Ulojako1: TMenuItem;
    Ulo1: TMenuItem;
    N1: TMenuItem;
    Konec1: TMenuItem;
    BvlIkony: TBevel;
    BvlVlastnosti: TBevel;
    SpBtnPrimka: TSpeedButton;
    SpBtnKrivka: TSpeedButton;
    SpBtnObdelnik: TSpeedButton;
    SpBtnElipsa: TSpeedButton;
    SpBtnGuma: TSpeedButton;
    SpBtnStetec: TSpeedButton;
    SpBtnText: TSpeedButton;
    Label1: TLabel;
    ImgVypln: TImage;
    ImgPero: TImage;
    Label2: TLabel;
    Label3: TLabel;
    CheckBoxVypln: TCheckBox;
    StatusBar1: TStatusBar;
    ClDialog: TColorDialog;
    EditText: TEdit;
    SavePictureDialog1: TSavePictureDialog;
    ProgressBar1: TProgressBar;
    Timer1: TTimer;
    LblVelikost: TLabel;
    SpinEditVelikost: TSpinEdit;
    RadioGroup1: TRadioGroup;
    SpinEditGuma: TSpinEdit;
    ImgUkazkaGumy: TImage;
    LblTvarGumy: TLabel;
    ComboBoxTvarGumy: TComboBox;
    SpinEditStetec: TSpinEdit;
    LblSirka: TLabel;
    ImgSirkaPera: TImage;
    TrackBarSirka: TTrackBar;
    LblStylPera: TLabel;
    ComboBoxStylPera: TComboBox;
    LblStylVyplne: TLabel;
    ComboBoxStylVyplne: TComboBox;
    LblVlastnosti: TLabel;
    Otevt1: TMenuItem;
    OpenPictureDialog1: TOpenPictureDialog;
    Edi1: TMenuItem;
    Zpt1: TMenuItem;
    ImgUkazatelKruhu: TImage;
    ImgUkazatelObd: TImage;
    Nastaven1: TMenuItem;
    Vypnutidtverce1: TMenuItem;
    Vypnutsignkruhu1: TMenuItem;
    Zapnutsigntverce1: TMenuItem;
    Zapnutsignkruhu1: TMenuItem;
    Npovda1: TMenuItem;
    Oprogramu1: TMenuItem;
    SpeedButton1: TSpeedButton;
    SpBtnNew: TSpeedButton;
    Monosti1: TMenuItem;
    LblNapoveda: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    PopupMenuPlechovka: TPopupMenu;
    Jaknato1: TMenuItem;
    PopupMenuKrivka: TPopupMenu;
    Jaknato2: TMenuItem;
    PopupMenuPrimka: TPopupMenu;
    Jaknato3: TMenuItem;
    PopupMenuText: TPopupMenu;
    Jaknato4: TMenuItem;
    PopupMenuNew: TPopupMenu;
    Jaknato5: TMenuItem;
    PopupMenuUkazatel: TPopupMenu;
    Cotoje1: TMenuItem;
    SpBtnInverze: TSpeedButton;
    SpBtnKapatko: TSpeedButton;
    SpBtnCopy: TSpeedButton;
    SpinEditCopy: TSpinEdit;
    ImgUkazkaCopy: TImage;
    PopupMenuKapatko: TPopupMenu;
    Jaknato6: TMenuItem;
    PopupMenuCopy: TPopupMenu;
    Jaknato7: TMenuItem;
    PopupMenuInverze: TPopupMenu;
    Jaknato8: TMenuItem;
    PrintDialog1: TPrintDialog;
    isk1: TMenuItem;
    Oprogramu3: TMenuItem;
    Zrychlenvkonu1: TMenuItem;
    FontDialog1: TFontDialog;
    LblStylPisma: TLabel;
    SpdBtnZrcadlo: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure ImgHlavniMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ImgHlavniMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ImgHlavniMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpBtnPrimkaClick(Sender: TObject);
    procedure SpBtnKrivkaClick(Sender: TObject);
    procedure SpBtnElipsaClick(Sender: TObject);
    procedure SpBtnObdelnikClick(Sender: TObject);
    procedure SpBtnStetecClick(Sender: TObject);
    procedure SpBtnGumaClick(Sender: TObject);
    procedure SpBtnTextClick(Sender: TObject);
    procedure ImgPeroClick(Sender: TObject);
    procedure ImgVyplnClick(Sender: TObject);
    procedure Konec1Click(Sender: TObject);
    procedure Nov1Click(Sender: TObject);
    procedure Ulojako1Click(Sender: TObject);
    procedure Ulo1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure SpinEditVelikostChange(Sender: TObject);
    procedure SpinEditGumaChange(Sender: TObject);
    procedure ComboBoxTvarGumyChange(Sender: TObject);
    procedure SpinEditStetecChange(Sender: TObject);
    procedure neviditelnost;
    procedure TrackBarSirkaChange(Sender: TObject);
    procedure ComboBoxStylPeraChange(Sender: TObject);
    procedure StylVyplne;
    procedure Otevt1Click(Sender: TObject);
    procedure TlacitkoZpet;
    procedure Zpt1Click(Sender: TObject);
    procedure KontrolaRovnosti;
    procedure Vypnutidtverce1Click(Sender: TObject);
    procedure Vypnutsignkruhu1Click(Sender: TObject);
    procedure Zapnutsigntverce1Click(Sender: TObject);
    procedure Zapnutsignkruhu1Click(Sender: TObject);
    procedure Oprogramu1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpBtnNewClick(Sender: TObject);
    procedure Monosti1Click(Sender: TObject);
    procedure Jaknato1Click(Sender: TObject);
    procedure Jaknato2Click(Sender: TObject);
    procedure Jaknato3Click(Sender: TObject);
    procedure Jaknato4Click(Sender: TObject);
    procedure Jaknato5Click(Sender: TObject);
    procedure Cotoje1Click(Sender: TObject);
    procedure SpBtnInverzeClick(Sender: TObject);
    procedure SpBtnKapatkoClick(Sender: TObject);
    procedure SpBtnCopyClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpinEditCopyChange(Sender: TObject);
    procedure Jaknato6Click(Sender: TObject);
    procedure Jaknato7Click(Sender: TObject);
    procedure Jaknato8Click(Sender: TObject);
    procedure isk1Click(Sender: TObject);
    procedure VraceniVyberu;
    procedure Zrychlenvkonu1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure LblStylPismaClick(Sender: TObject);
    procedure SpdBtnZrcadloClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Puvodni,Kontrolni,CopyPuvodni: TPoint;
  Malovani,PrvniTah,Textik,ulozeno,ZmacknutoZpet,KontrolaKruh,KontrolaCtverec:boolean;
  ZmacknuteShift,kapatkoPressed:boolean;
  vyber,VelikostPisma,VelikostGumy,VelikostStetce,Pocitadlo,ZpetPoc,VelikostCopy:integer;
  BarvaPero,BarvaVypln,VyplnPlechovka,OhraniceniPlechovka:TColor;
  JmenoObrazku,AdresaUlozeni:string;
  Pismo:TFont;
  CopyRozdil: Tpoint;
  MinVyber:integer;

implementation

uses Unit2, Unit3;

{$R *.dfm}







procedure TForm1.FormCreate(Sender: TObject);
begin
 Form1.KeyPreview:=true;
 neviditelnost;
 SpBtnKrivka.Click;
 Zapnutsigntverce1.Click;
 Zapnutsignkruhu1.Click;
 kapatkoPressed:=false;

 BarvaPero:=clBlack;
 BarvaVypln:=clWhite;
 vyber:=2;
 textik:=false;
 VelikostGumy:=11;
 VelikostStetce:=5;




 //AdresaUlozeni:='C:\Users\Jirka\Desktop\delphi - projekty\grafický editor\ukladani\';

 AdresaUlozeni:=GetCurrentDir+'\ukladani\';
 //AdresaUlozeni:='..\Grafický editor 1.0\ukladani\';

 try
  ImgHlavni.Picture.SaveToFile(AdresaUlozeni+'MeziUlozeni.bmp');
 except
  ShowMessage('Program pøestal pracovat. Omlouváme se za vzniklé potíže.');
  Close;
 end;


 RadioGroup1.ItemIndex:=1;
 SpinEditVelikost.Value:=10;
 Pocitadlo:=0;
 CopyPuvodni.X:=0;
 CopyPuvodni.Y:=0;

 with ImgUkazkaCopy.Canvas do
   begin
    SpinEditCopy.Value:=10;
    VelikostCopy:=10;
    Brush.Style:=bsSolid;
    Brush.Color:=clBlack;
    Pen.Color:=clBlack;
    rectangle(50+VelikostCopy,50+VelikostCopy,50-VelikostCopy,50-VelikostCopy);
   end;

 with ImgSirkaPera.Canvas do
  begin
    moveto(0,25);
    lineto(100,25);
  end;
 with ImgHlavni.Canvas do
  begin
    pen.Color:=clWhite;
    Brush.Color:=clWhite;
    Rectangle(0,0,ImgHlavni.Picture.Width,ImgHlavni.Picture.Height);
  end;
 with ImgPero.canvas do
  begin
    Pen.Color:=clBlack;
    Brush.Color:=BarvaPero;
    Rectangle(0,0,56,46);
  end;
 with ImgVypln.canvas do
  begin
    Pen.Color:=clBlack;
    Brush.Color:=BarvaVypln;
    Rectangle(0,0,100,100);
  end;
 Form1.Color:=RGB(240,240,240);

 //ImgHlavni.Picture.SaveToFile('C:\Users\Jirka\Desktop\delphi - projekty\grafický editor\ukladani\MeziUlozeni.bmp');

end;





procedure TForm1.FormDestroy(Sender: TObject);
var I:integer;
begin
 DeleteFile(AdresaUlozeni+'MeziUlozeni.bmp');
 for I := 0 to 5 do
  begin
   try
    DeleteFile(AdresaUlozeni+'ZpetneObrazky'+inttostr(I)+'.bmp')
   except
  end;
  end;  // slušná aplikace po sobì uklízí :)

end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (ssShift in Shift) then
  begin
   ZmacknuteShift:=true;
  end;
 
end;

procedure TForm1.FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   ZmacknuteShift:=false;
end;

procedure TForm1.ComboBoxStylPeraChange(Sender: TObject);
begin


 case ComboBoxStylPera.ItemIndex of
   0: ImgSirkaPera.Canvas.Pen.Style:=psSolid;
   1: ImgSirkaPera.Canvas.Pen.Style:=psDot;
   2: ImgSirkaPera.Canvas.Pen.Style:=psDash;
 end;
 ImgSirkaPera.Canvas.pen.Width:=TrackBarSirka.Position;
 ImgSirkaPera.Canvas.pen.color:=BarvaPero;
 ImgSirkaPera.Canvas.rectangle(-15,-15,115,115);
 ImgSirkaPera.Canvas.moveto(0,25);
 ImgSirkaPera.Canvas.lineto(100,25);
 end;

procedure TForm1.ComboBoxTvarGumyChange(Sender: TObject);
begin
if vyber=6 then
 begin
  if ComboBoxTvarGumy.ItemIndex=0
    then ImgUkazkaGumy.Canvas.Ellipse(50+VelikostGumy,50+VelikostGumy,50-VelikostGumy,50-VelikostGumy)
     else ImgUkazkaGumy.Canvas.rectangle(50+VelikostGumy,50+VelikostGumy,50-VelikostGumy,50-VelikostGumy);

 end;

if vyber=5 then
 begin
  if ComboBoxTvarGumy.ItemIndex=0
    then ImgUkazkaGumy.Canvas.Ellipse(50+VelikostStetce,50+VelikostStetce,50-VelikostStetce,50-VelikostStetce)
     else ImgUkazkaGumy.Canvas.rectangle(50+VelikostStetce,50+VelikostStetce,50-VelikostStetce,50-VelikostStetce);

 end;
end;





procedure TForm1.Cotoje1Click(Sender: TObject);
begin
 ShowMessage('Toto jsou signály pro urèení a lehèího namalování pravidelného obrazce. Lze vypnout v nabídce Nastavení');
end;



procedure TForm1.ImgHlavniMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 Pocitadlo:=Pocitadlo+1;
 if Pocitadlo=6
   then Pocitadlo:=0;
 TlacitkoZpet;

 if ZmacknuteShift=true then
  begin
   CopyPuvodni:=Point(X,Y);
  end
   else
    begin
      CopyRozdil.X:=X-CopyPuvodni.X;
      CopyRozdil.Y:=Y-CopyPuvodni.Y;
    end;



 if textik=true then          //psaní textu
   with ImgHlavni.Canvas do
    begin
     Font.Size:=VelikostPisma;
     EditText.Visible:=false;
     textik:=false;
     Font.Color:=BarvaPero;
      if RadioGroup1.ItemIndex=1
        then Brush.Style:=bsClear
         else
          begin
           Brush.Style:=bsSolid;
           Brush.Color:=BarvaVypln;
          end;
     TextOut(Puvodni.X,Puvodni.Y,EditText.Text);
    end
   else
    begin
    PrvniTah:=true;        // základní komponenty k ostatním
    Malovani:=true;
    Puvodni:= Point(X,Y);
    ImgHlavni.Picture.SaveToFile(AdresaUlozeni+'MeziUlozeni.bmp');
    if (vyber=7)and (textik=false) then
      begin
       EditText.Top:=Y;
       EditText.Left:=X+137;
       EditText.Visible:=true;
       textik:=true;
       EditText.Text:='';
       EditText.Font.Size:=VelikostPisma;
      end;
    end;
  if vyber=8 then
   begin
     with ImgHlavni.canvas do
      begin
       Pen.Color:=BarvaPero;
       Brush.Color:=BarvaVypln;
       ImgHlavni.Canvas.FloodFill(Puvodni.X,Puvodni.Y,BarvaPero,fsBorder);
      end;
     ImgHlavni.Canvas.FloodFill(Puvodni.X,Puvodni.Y,BarvaPero,fsBorder);
   end;

 if (vyber=10)and((Button=mbLeft)or(Button=mbRight)) then
   begin
     kapatkoPressed:=true;

     if Button=mbLeft then
      begin
       BarvaPero:=ImgHlavni.Canvas.Pixels[X,Y];
       ImgPeroClick(Form1);
      end;
     if Button=mbRight then
      begin
       BarvaVypln:=ImgHlavni.Canvas.Pixels[X,Y];
       ImgVyplnClick(Form1);
      end;
     {case MinVyber of
     1: SpBtnPrimkaClick(Form1);
     2: SpBtnKrivkaClick(Form1);
     3: SpBtnObdelnikClick(Form1);
     4: SpBtnElipsaClick(Form1);
     5: SpBtnGumaClick(Form1);
     6: SpBtnStetecClick(Form1);
     7: SpBtnTextClick(Form1);
     9: SpBtnCopyClick(Form1);
     else  SpBtnPrimkaClick(Form1);
     end; }
   end;

   with ImgHlavni.Canvas do
    begin
     Pen.Color:=BarvaPero;
     Brush.Color:=BarvaPero;
      case vyber of
      5: if ComboBoxTvarGumy.ItemIndex=0
           then Ellipse(X+VelikostStetce,Y+VelikostStetce,X-VelikostStetce,Y-VelikostStetce)
            else rectangle(X+VelikostStetce,Y+VelikostStetce,X-VelikostStetce,Y-VelikostStetce);

      6: begin
          Brush.Color:=clWhite;
          pen.Color:=clWhite;
          if ComboBoxTvarGumy.ItemIndex=0
            then Ellipse(X+VelikostGumy,Y+VelikostGumy,X-VelikostGumy,Y-VelikostGumy)
             else rectangle(X+VelikostGumy,Y+VelikostGumy,X-VelikostGumy,Y-VelikostGumy);
          end;
      end;
    end;
   

end;



procedure TForm1.ImgHlavniMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
  var I3,I4,Sestup:integer;
begin
Kontrolni:=point(X,Y);
KontrolaRovnosti;

 if Zrychlenvkonu1.Checked=false then
  begin
   if (Malovani=true)and((vyber=1)or(vyber=3)or(vyber=4)) then
     begin
      ImgHlavni.Picture.LoadFromFile(AdresaUlozeni+'MeziUlozeni.bmp');
      with ImgHlavni.Canvas do
      begin
      if CheckBoxVypln.Checked=true
        then Brush.Style:=bsClear
         else
          begin
           StylVyplne;
           Brush.Color:=BarvaVypln;
          end;
       case ComboBoxStylPera.ItemIndex of
        0: Pen.Style:=psSolid;
        1: Pen.Style:=psDot;
        2: pen.Style:=psDash;
       end;
       Pen.Width:=TrackBarSirka.Position;
       pen.Color:=BarvaPero;
       moveto(Puvodni.X,Puvodni.Y);
       case vyber of
        1:lineto(X,Y);
        3:Ellipse(Puvodni.x,Puvodni.Y,Kontrolni.X,Kontrolni.Y);
        4:Rectangle(Puvodni.x,Puvodni.Y,Kontrolni.X,Kontrolni.Y);
      end;
      end;
     end;
    end;



 if (Malovani=true)and((vyber=2)or(vyber>4)) then
  begin
   with ImgHlavni.Canvas do
    begin
     if PrvniTah=true
       then begin
              moveto(X,Y);

       end;
     Pen.Color:=BarvaPero;
     Brush.Color:=BarvaPero;
     PrvniTah:=false;
     case vyber of
      2: begin
          Pen.Width:=TrackBarSirka.Position;
          lineto(X,Y);
         end;
      5: if ComboBoxTvarGumy.ItemIndex=0
           then Ellipse(X+VelikostStetce,Y+VelikostStetce,X-VelikostStetce,Y-VelikostStetce)
            else rectangle(X+VelikostStetce,Y+VelikostStetce,X-VelikostStetce,Y-VelikostStetce);

      6: begin
          Brush.Color:=clWhite;
          pen.Color:=clWhite;
          if ComboBoxTvarGumy.ItemIndex=0
            then Ellipse(X+VelikostGumy,Y+VelikostGumy,X-VelikostGumy,Y-VelikostGumy)
             else rectangle(X+VelikostGumy,Y+VelikostGumy,X-VelikostGumy,Y-VelikostGumy);
          end;
      9: CopyRect(Rect(X-CopyRozdil.X+VelikostCopy,Y-CopyRozdil.Y+VelikostCopy,X-CopyRozdil.X-VelikostCopy,Y-CopyRozdil.Y-VelikostCopy),ImgHlavni.Canvas,Rect(X+VelikostCopy,Y+VelikostCopy,X-VelikostCopy,Y-VelikostCopy));


    end;
   end;
  end;

end;


procedure TForm1.ImgHlavniMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Kontrolni:=point(X,Y);
KontrolaRovnosti;


 if (Malovani=true)and((vyber=1)or(vyber=3)or(vyber=4)) then
   begin
    ImgHlavni.Picture.LoadFromFile(AdresaUlozeni+'MeziUlozeni.bmp');
    with ImgHlavni.Canvas do
    begin
    if CheckBoxVypln.Checked=true
      then Brush.Style:=bsClear
       else
        begin
         StylVyplne;
         Brush.Color:=BarvaVypln;
        end;
     case ComboBoxStylPera.ItemIndex of
      0: Pen.Style:=psSolid;
      1: Pen.Style:=psDot;
      2: pen.Style:=psDash;
     end;
     Pen.Width:=TrackBarSirka.Position;
     pen.Color:=BarvaPero;
     moveto(Puvodni.X,Puvodni.Y);
     case vyber of
      1:lineto(X,Y);
      3:Ellipse(Puvodni.x,Puvodni.Y,Kontrolni.X,Kontrolni.Y);
      4:Rectangle(Puvodni.x,Puvodni.Y,Kontrolni.X,Kontrolni.Y);
      
    end;
   end;
  end;



 malovani:=false;
 PrvniTah:=false;
end;





procedure TForm1.ImgPeroClick(Sender: TObject);
begin
 if kapatkoPressed=false then
  begin
   ClDialog.Execute;
   BarvaPero:=ClDialog.color;
  end;
 with ImgPero.Canvas do
  begin
    Pen.Color:=clBlack;
    Brush.Color:=BarvaPero;
    Rectangle(0,0,56,46);
  end;
 with ImgUkazkaGumy.Canvas do
  begin
    Brush.Color:=clWhite;
    pen.Color:=clWhite;
    rectangle(-5,-5,110,110);
    Brush.Color:=BarvaPero;
    Pen.Color:=BarvaPero;
    if ComboBoxTvarGumy.ItemIndex=0
      then Ellipse(50+VelikostStetce,50+VelikostStetce,50-VelikostStetce,50-VelikostStetce)
       else ImgUkazkaGumy.Canvas.rectangle(50+VelikostStetce,50+VelikostStetce,50-VelikostStetce,50-VelikostStetce);

  end;
end;

procedure TForm1.ImgVyplnClick(Sender: TObject);
begin
 if kapatkoPressed=false then
  begin
   ClDialog.Execute;
   BarvaVypln:=ClDialog.color;
  end;
 with ImgVypln.Canvas do
  begin
    Pen.Color:=clBlack;
    Brush.Color:=BarvaVypln;
    Rectangle(0,0,100,100);
  end;

end;





procedure TForm1.isk1Click(Sender: TObject);
begin
 PrintDialog1.Execute
end;

//nápovìda

procedure TForm1.Jaknato1Click(Sender: TObject);
begin
 ShowMessage('Barva pera je barva ohranièení, pøes které se nebude pøekreslovat.  Barva výplnì je barva, kterou se bude vybarvovat vnitøek.');
end;

procedure TForm1.Jaknato2Click(Sender: TObject);
begin
 ShowMessage('Kliknìte na plátno, po dobu držení tlaèítka sbudete kreslit');
end;

procedure TForm1.Jaknato3Click(Sender: TObject);
begin
 ShowMessage('Táhnìte myší po plátnì');
end;

procedure TForm1.Jaknato4Click(Sender: TObject);
begin
 ShowMessage('Kliknìte na plátno a následnì napište text. Po kliknutí na jiné místo bude text zakreslen');
end;

procedure TForm1.Jaknato5Click(Sender: TObject);
begin
 ShowMessage('Po kliknutí se obrazovka resetuje');
end;

procedure TForm1.Jaknato6Click(Sender: TObject);
begin
 ShowMessage('Kliknìte na místo, kde je barva, kterou chcete. Levým tlaèítkem myši vyberete barvu pera, pravým klikem pak vyberete barvu výplnì');
end;

procedure TForm1.Jaknato7Click(Sender: TObject);
begin
 ShowMessage('Stisknutím levého tlaèítka myši a Shiftu oznaèíte oblast, kam budute kopírovat. Následnì kliknutím a táhnutím myši po objektu, který chcete kopírovat, budete kopírovat');
end;

procedure TForm1.Jaknato8Click(Sender: TObject);
begin
 ShowMessage('Kliknutím zinvertujete obrázek.');
end;

procedure TForm1.Konec1Click(Sender: TObject);
begin
 if MessageDlg('Opravdu chcete skonèit? Neuložená data budou ztracena!',mtWarning,[mbYes,mbNo],0)=mrYes
   then Application.Terminate;

end;





procedure TForm1.Nov1Click(Sender: TObject);
begin
   case MessageDlg('Uložit starý obrázek?',mtConfirmation,[mbYes,mbNo,mbCancel],0) of
    mrYes: begin
            try
              SavePictureDialog1.Execute;
              ImgHlavni.picture.savetofile(savepicturedialog1.FileName);
              Pocitadlo:=0;
              FormCreate(Form1);
            except
            end;
           end;
    mrNo:  begin
            FormCreate(Form1);
            SpBtnKrivka.Click;
           end;
   end;

end;



procedure TForm1.Oprogramu1Click(Sender: TObject);
begin
 Form3.Show;
end;

procedure TForm1.Otevt1Click(Sender: TObject);
begin
  OpenPictureDialog1.Execute;

  ImgHlavni.Picture.LoadFromFile(OpenPictureDialog1.FileName);
  //ShowMessage('Current directory = '+GetCurrentDir);
  //ImgHlavni.Picture.SaveToFile('Nahravani.bmp');
  ImgHlavni.Picture.SaveToFile(AdresaUlozeni+'Nahravani.bmp');
  ImgHlavni.Picture.Bitmap.Width := Form1.Width;
  ImgHlavni.Picture.Bitmap.Height:= Form1.Height;
//  ImgHlavni.picture.LoadFromFile(AdresaUlozeni+'Nahravani.bmp');
  //ImgHlavni.Canvas.Rectangle(-5,-5,-2,-2);
  //ImgHlavni.Picture.
{zkusit si pøidìlat další image, potom na tento image vložit obrázek, následnì ho pøekreslit pomocí
 pixelù, nebo pomocí Copy módu}
end;


procedure TForm1.SpBtnElipsaClick(Sender: TObject);
begin
 vyber:=3;
 StatusBar1.Panels[0].Text:='Elipsa';
 LblVlastnosti.Caption:='Vlastnosti elipsy';

 neviditelnost;
 LblSirka.Visible:=true;
 TrackBarSirka.Visible:=true;
 ImgSirkaPera.Visible:=true;
 LblStylPera.Visible:=true;
 ComboBoxStylPera.Visible:=true;
 LblStylVyplne.Visible:=true;
 ComboBoxStylVyplne.Visible:=true;

end;


procedure TForm1.SpBtnKrivkaClick(Sender: TObject);
begin
 vyber:=2;
 StatusBar1.Panels[0].Text:='Køivka';
 LblVlastnosti.Caption:='Vlastnosti køivky';
 SpBtnKrivka.Down:=true;

 neviditelnost;
 LblSirka.Visible:=true;
 TrackBarSirka.Visible:=true;
 ImgSirkaPera.Visible:=true;

end;


procedure TForm1.SpBtnNewClick(Sender: TObject);
begin
 with ImgHlavni.Canvas do
  begin
   Brush.Style:=bsSolid;
   Brush.Color:=clWhite;
   Rectangle(-15,-15,2000,2000);
  end;
  
end;

procedure TForm1.SpBtnObdelnikClick(Sender: TObject);
begin
 vyber:=4;
 StatusBar1.Panels[0].Text:='Obdelník';
 LblVlastnosti.Caption:='Vlastnosti obdelníku';

 neviditelnost;
 LblSirka.Visible:=true;
 TrackBarSirka.Visible:=true;
 ImgSirkaPera.Visible:=true;
 LblStylPera.Visible:=true;
 ComboBoxStylPera.Visible:=true;
 LblStylVyplne.Visible:=true;
 ComboBoxStylVyplne.Visible:=true;

end;


procedure TForm1.SpBtnPrimkaClick(Sender: TObject);
begin
 vyber:=1;
 StatusBar1.Panels[0].Text:='Pøímka';
 LblVlastnosti.Caption:='Vlastnosti pøímky';

 neviditelnost;
 LblSirka.Visible:=true;
 TrackBarSirka.Visible:=true;
 ImgSirkaPera.Visible:=true;
 LblStylPera.Visible:=true;
 ComboBoxStylPera.Visible:=true;

end;


procedure TForm1.SpBtnStetecClick(Sender: TObject);
begin
 ComboBoxTvarGumy.ItemIndex:=0;
 vyber:=5;
 StatusBar1.Panels[0].Text:='Štìtec';
 with ImgUkazkaGumy.Canvas do
  begin
    Brush.Color:=clWhite;
    pen.Color:=clWhite;
    rectangle(-5,-5,110,110);
    Brush.Color:=BarvaPero;
    Pen.Color:=BarvaPero;
    if ComboBoxTvarGumy.ItemIndex=0
      then Ellipse(50+VelikostStetce,50+VelikostStetce,50-VelikostStetce,50-VelikostStetce)
       else ImgUkazkaGumy.Canvas.rectangle(50+VelikostStetce,50+VelikostStetce,50-VelikostStetce,50-VelikostStetce);

  end;
 //ComboBoxTvarGumy.ItemIndex:=0;
 LblVlastnosti.Caption:='Vlastnosti štìtce';

 neviditelnost;
 LblVelikost.Visible:=true;
 SpinEditStetec.Visible:=true;
 ImgUkazkaGumy.Visible:=true;
 LblTvarGumy.Visible:=true;
 ComboBoxTvarGumy.Visible:=true;

end;

procedure TForm1.SpBtnTextClick(Sender: TObject);
begin
 vyber:=7;
 StatusBar1.Panels[0].Text:='Text';
 SpinEditVelikost.Visible:=true;
 RadioGroup1.Visible:=true;
 LblVelikost.Visible:=true;
 LblVlastnosti.Caption:='Vlastnosti textu';

 Neviditelnost;
 RadioGroup1.Visible:=true;
 LblVelikost.Visible:=true;
 SpinEditVelikost.visible:=true;

end;

procedure TForm1.SpdBtnZrcadloClick(Sender: TObject);
var sestup,I3,I4:integer;
begin
 Vyber:=11;

           Sestup:=300;
           for I3 := 0 to 300 do
            for I4 := 0 to 300 do
             begin

               ImgHlavni.Canvas.Pixels[600-I3,300+I4]:=ImgHlavni.Canvas.Pixels[I3,I4];
               sestup:=sestup-1;
             end;

 neviditelnost;
 LblVelikost.Visible:=true;
 SpinEditCopy.Visible:=true;
 ImgUkazkaCopy.Visible:=true;
 LblVlastnosti.Caption:='Vlastnosti zrcadlení';
 StatusBar1.Panels[0].Text:='Zrcadlení';
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
// ImgHlavni.Canvas.FloodFill(Puvodni.X,Puvodni.Y,clblack,fsBorder);
 Vyber:=8;
 neviditelnost;
 LblNapoveda.Visible:=true;
 LblVlastnosti.Caption:='Vlastnosti výplnì';
 StatusBar1.Panels[0].Text:='Plechovka';

end;

procedure TForm1.SpBtnInverzeClick(Sender: TObject);
begin

 with ImgHlavni.Canvas do
  begin
    Brush.Style:=bsSolid;
    rectangle(-30,-30,-10,-10);
    Pen.Mode:=pmNot;
    rectangle(0,0,2000,2000);
    pen.Mode:=pmCopy;
  end;

end;


procedure TForm1.SpBtnKapatkoClick(Sender: TObject);
begin
 neviditelnost;
 LblVlastnosti.Caption:='Vlastnosti kapátka';
 minvyber:=vyber;
 vyber:=10;
 StatusBar1.Panels[0].Text:='Kapatko';

end;

procedure TForm1.SpBtnCopyClick(Sender: TObject);
begin
 vyber:=9;
 neviditelnost;
 LblVelikost.Visible:=true;
 SpinEditCopy.Visible:=true;
 ImgUkazkaCopy.Visible:=true;
 LblVlastnosti.Caption:='Vlastnosti klonování';
 StatusBar1.Panels[0].Text:='Klonování';
end;

procedure TForm1.SpinEditCopyChange(Sender: TObject);
begin
 VelikostCopy:=SpinEditCopy.Value;
 with ImgUkazkaCopy.Canvas do
   begin
     rectangle(50+VelikostCopy,50+VelikostCopy,50-VelikostCopy,50-VelikostCopy)
   end;
end;

procedure TForm1.SpinEditGumaChange(Sender: TObject);
begin
 VelikostGumy:=10+SpinEditGuma.Value;
 with ImgUkazkaGumy.Canvas do
  begin
   brush.Color:=clWhite;
   rectangle(-5,-5,110,110);
   Brush.Style:=bsSolid;
   Brush.Color:=clBlack;
  if ComboBoxTvarGumy.ItemIndex=0
    then ImgUkazkaGumy.Canvas.Ellipse(50+VelikostGumy,50+VelikostGumy,50-VelikostGumy,50-VelikostGumy)
     else ImgUkazkaGumy.Canvas.rectangle(50+VelikostGumy,50+VelikostGumy,50-VelikostGumy,50-VelikostGumy);

  end;

end;

procedure TForm1.SpinEditStetecChange(Sender: TObject);
begin

 VelikostStetce:=5+SpinEditStetec.Value;
 with ImgUkazkaGumy.Canvas do
  begin
   brush.Color:=clWhite;
   rectangle(-5,-5,110,110);
   Brush.Style:=bsSolid;
   Brush.Color:=BarvaPero;
   pen.Color:=BarvaPero;
    if ComboBoxTvarGumy.ItemIndex=0
      then Ellipse(50+VelikostStetce,50+VelikostStetce,50-VelikostStetce,50-VelikostStetce)
       else ImgUkazkaGumy.Canvas.rectangle(50+VelikostStetce,50+VelikostStetce,50-VelikostStetce,50-VelikostStetce);
  end;

end;

procedure TForm1.SpinEditVelikostChange(Sender: TObject);
begin
VelikostPisma:=SpinEditVelikost.Value;

end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
 ProgressBar1.Position:=ProgressBar1.Position+25;
 ProgressBar1.Visible:=true;
 if ProgressBar1.Position=100 then
  begin
    Timer1.enabled:=false;
    ProgressBar1.Visible:=false;
    ProgressBar1.Position:=0;
  end;

end;

procedure TForm1.TrackBarSirkaChange(Sender: TObject);
begin
 with ImgSirkaPera.canvas do
  begin
    brush.Style:=bsSolid;
    Brush.color:=clWhite;
    rectangle(-25,-25,110,110);
    pen.color:=BarvaPero;
    pen.Width:=TrackBarSirka.Position;
    moveto(0,25);
    lineto(100,25);
  end;

end;

procedure TForm1.Ulo1Click(Sender: TObject);
begin
 if ulozeno=true then
   begin
    ImgHlavni.Picture.SaveToFile(JmenoObrazku);
    ProgressBar1.Visible:=true;
    Timer1.Enabled:=true;
   end
  else
   begin
     try
      SavePictureDialog1.Execute;
      ImgHlavni.picture.savetofile(savepicturedialog1.FileName);
      JmenoObrazku:=SavePictureDialog1.FileName;
      StatusBar1.Panels[2].Text:=SavePictureDialog1.FileName;
      ulozeno:=true;
     except
     end;
   end;

end;

procedure TForm1.Ulojako1Click(Sender: TObject);
begin
  try
    SavePictureDialog1.Execute;
    ImgHlavni.picture.savetofile(savepicturedialog1.FileName);
    JmenoObrazku:=SavePictureDialog1.FileName;
    StatusBar1.Panels[2].Text:=SavePictureDialog1.FileName;
    ulozeno:=true;
   except
  end;

end;

procedure TForm1.Vypnutidtverce1Click(Sender: TObject);
begin
 Vypnutidtverce1.Visible:=false;
 Zapnutsigntverce1.visible:=true;
 KontrolaCtverec:=false;
end;

procedure TForm1.Vypnutsignkruhu1Click(Sender: TObject);
begin
 Vypnutsignkruhu1.Visible:=false;
 Zapnutsignkruhu1.Visible:=true;
 KontrolaKruh:=false;
end;

procedure TForm1.Zapnutsignkruhu1Click(Sender: TObject);
begin
 Zapnutsignkruhu1.Visible:=false;
 Vypnutsignkruhu1.Visible:=true;
 KontrolaKruh:=true;
end;

procedure TForm1.Zapnutsigntverce1Click(Sender: TObject);
begin
 Zapnutsigntverce1.Visible:=false;
 Vypnutidtverce1.visible:=true;
 KontrolaCtverec:=true;
end;

procedure TForm1.Zpt1Click(Sender: TObject);
begin
 ZmacknutoZpet:=true;
 TlacitkoZpet;

end;

procedure TForm1.Zrychlenvkonu1Click(Sender: TObject);
begin

 if Zrychlenvkonu1.Checked=false then
  begin
   Zrychlenvkonu1.Checked:=true;
   Zpt1.Enabled:=false;
   Zapnutsignkruhu1.Enabled:=false;
   Zapnutsigntverce1.Enabled:=false;
   Vypnutidtverce1.Visible:=false;
   Vypnutsignkruhu1.Visible:=false;
   Zapnutsigntverce1.visible:=true;
   Zapnutsignkruhu1.visible:=true;
   Zpt1.Enabled:=false;
  end
    else
     begin
      Zrychlenvkonu1.Checked:=false;
      Zapnutsigntverce1Click(Form1);
      Zapnutsignkruhu1Click(Form1);
      Zapnutsignkruhu1.Enabled:=true;
      Zapnutsigntverce1.Enabled:=true;
      Zpt1.Enabled:=true;
     end;
end;

procedure TForm1.SpBtnGumaClick(Sender: TObject);
begin
 vyber:=6;
 StatusBar1.Panels[0].Text:='Guma';
 ImgUkazkaGumy.Canvas.brush.Color:=clWhite;
 ImgUkazkaGumy.Canvas.rectangle (-15,-15,115,115);
 ImgUkazkaGumy.Canvas.brush.Color:=clBlack;
 ImgUkazkaGumy.Canvas.pen.Color:=clBlack;
 ImgUkazkaGumy.Canvas.Ellipse(50+VelikostGumy,50+VelikostGumy,50-VelikostGumy,50-VelikostGumy);
 ComboBoxTvarGumy.ItemIndex:=0;
 LblVlastnosti.Caption:='Vlastnosti gumy';

  neviditelnost;
 LblVelikost.Visible:=true;
 SpinEditGuma.Visible:=true;
 ImgUkazkaGumy.Visible:=true;
 LblTvarGumy.Visible:=true;
 ComboBoxTvarGumy.Visible:=true;

end;

procedure TForm1.neviditelnost;
begin
 RadioGroup1.Visible:=false;
 SpinEditVelikost.Visible:=false;
 SpinEditGuma.Visible:=false;
 SpinEditStetec.Visible:=false;
 LblVelikost.Visible:=false;
 LblTvarGumy.Visible:=false;
 ComboBoxTvarGumy.Visible:=false;
 TrackBarSirka.Visible:=false;
 ImgSirkaPera.Visible:=false;
 ImgUkazkaGumy.Visible:=false;
 LblStylPera.Visible:=false;
 LblStylVyplne.Visible:=false;
 ComboBoxStylPera.Visible:=false;
 ComboBoxStylVyplne.Visible:=false;
 LblSirka.Visible:=false;
 LblNapoveda.Visible:=false;
 SpinEditCopy.Visible:=false;
 ImgUkazkaCopy.Visible:=false;
 kapatkoPressed:=false;
 ImgHlavni.Canvas.Pen.Mode:=pmCopy;

end;

procedure TForm1.StylVyplne;
begin
  case ComboBoxStylVyplne.ItemIndex of
  0: ImgHlavni.Canvas.Brush.Style:=bsSolid;
  1: ImgHlavni.Canvas.Brush.Style:=bsCross;
  2: ImgHlavni.Canvas.Brush.Style:=bsHorizontal;
  3: ImgHlavni.Canvas.Brush.Style:=bsVertical;
  4: ImgHlavni.Canvas.Brush.Style:=bsDiagCross;
  5: ImgHlavni.Canvas.Brush.Style:=bsBDiagonal;
  6: ImgHlavni.Canvas.Brush.Style:=bsFDiagonal;
 end;

end;

procedure TForm1.TlacitkoZpet;
var poprve:boolean;
begin
 if Zrychlenvkonu1.Checked=false then
  begin
   if ZmacknutoZpet=true then
     begin
      try
       ImgHlavni.Picture.LoadFromFile(AdresaUlozeni+'ZpetneObrazky'+IntToStr(ZpetPoc)+'.bmp');
       ZpetPoc:=ZpetPoc-1;
       if (ZpetPoc<0)and(poprve=false)
         then ZpetPoc:=5;
       if Pocitadlo=ZpetPoc
         then Zpt1.Enabled:=false;
       ZmacknutoZpet:=false;
      except
       ZmacknutoZpet:=false;
       Zpt1.Enabled:=false;
       Pocitadlo:=0;
      end;
     end
    else
     begin
      {Pocitadlo:=Pocitadlo+1;
      if Pocitadlo=6 then Pocitadlo:=0;}
      if pocitadlo=5
        then poprve:=false;
      ZpetPoc:=Pocitadlo;
      ImgHlavni.Picture.SaveToFile(AdresaUlozeni+'ZpetneObrazky'+IntToStr(Pocitadlo)+'.bmp');
      Zpt1.Enabled:=true;
     end;
 end;

end;

procedure TForm1.KontrolaRovnosti;
var POM:integer; PuvXVetsi,PuvYVestsi:boolean;
begin
 if Puvodni.X>Kontrolni.X then
  begin
    POM:=Kontrolni.X;
    Kontrolni.X:=Puvodni.X;
    Puvodni.X:=POM;
    PuvXVetsi:=true;
  end;
 if Puvodni.Y>Kontrolni.Y then
  begin
    POM:=Kontrolni.Y;
    Kontrolni.Y:=Puvodni.Y;
    Puvodni.Y:=POM;
    PuvYVestsi:=true;
  end;
 if (KontrolaKruh=true)and(PrvniTah=true)and(((Kontrolni.X-Puvodni.X)+8)>(Kontrolni.Y-Puvodni.Y))and(((Kontrolni.X-Puvodni.X)-8)<(Kontrolni.Y-Puvodni.Y))and(vyber=3)
   then begin
         ImgUkazatelKruhu.Visible:=true;
         Kontrolni.X:=Puvodni.X+(Kontrolni.Y-Puvodni.Y);
         //Label4.Caption:=inttostr(Kontrolni.X-Puvodni.X)+'   '+inttostr(Kontrolni.y-Puvodni.y)+'   '+inttostr(Kontrolni.y)+'   '+inttostr(Kontrolni.y);
        end
    else  ImgUkazatelKruhu.Visible:=false;
 if (KontrolaCtverec)and(PrvniTah=true)and(((Kontrolni.X-Puvodni.X)+8)>(Kontrolni.Y-Puvodni.Y))and(((Kontrolni.X-Puvodni.X)-8)<(Kontrolni.Y-Puvodni.Y))and(vyber=4)
   then begin
         ImgUkazatelObd.Visible:=true;
         Kontrolni.X:=Puvodni.X+(Kontrolni.Y-Puvodni.Y);
        end
    else  ImgUkazatelObd.Visible:=false;

 if PuvXVetsi=true then
   begin
    POM:=Kontrolni.X;
    Kontrolni.X:=Puvodni.X;
    Puvodni.X:=POM;
    PuvXVetsi:=false;
   end;
 if PuvYVestsi=true then
   begin
    POM:=Kontrolni.Y;
    Kontrolni.Y:=Puvodni.Y;
    Puvodni.Y:=POM;
    PuvYVestsi:=false;
   end;
 


end;


procedure TForm1.LblStylPismaClick(Sender: TObject);
begin
 FontDialog1.Execute;
 LblStylPisma.Font:=FontDialog1.Font;
end;

procedure TForm1.Monosti1Click(Sender: TObject);
begin
  Form2.Show;
 //dsvs
end;

procedure TForm1.VraceniVyberu;
begin
      case MinVyber of
     1: SpBtnPrimkaClick(Form1);
     2: SpBtnKrivkaClick(Form1);
     3: SpBtnObdelnikClick(Form1);
     4: SpBtnElipsaClick(Form1);
     5: SpBtnGumaClick(Form1);
     6: SpBtnStetecClick(Form1);
     7: SpBtnTextClick(Form1);
     9: SpBtnCopyClick(Form1);
     else  SpBtnPrimkaClick(Form1);
     end;
end;

end.
