unit functionlar;
interface

uses SysUtils,Registry,Windows,Forms,Dialogs,Classes,Graphics;

Function SayiYazi(Sayi: Extended): String; //paray� yaz�yla
function metindensil(neyi, nereden: string): string;
function mtarih(tarih: TDateTime): string;
function bkharf(Harf: Char; tip: boolean): Char;
function reg_oku(reg_anahtar: string): string;
procedure reg_yaz(reg_anahtar: string; reg_deger: string);
function bkmetin(kelime:String;tip: integer):String;
function AltDown : Boolean;
function ShiftDown : Boolean;
function CtrlDown : Boolean;
function bilgisayaradi: string;
procedure SetDateTime(dDateTime: TDateTime);
function IsNT: Boolean;
function versiyon: string;
Function WinExecute32Wait(FileName : AnsiString) : integer;

type
  TSOgr = record
    KayitVar, Iptal, KayitGoster: Boolean;
    Donem: String[9];
    OgrNo, VeliKodu: Integer;
    Adi: String[15];
    Soyadi: String[15]
  end;

type
  TSVeli = record
    KayitVar, Iptal, KayitGoster: Boolean;
    AdiSoyadi: String[41];
    VeliKodu: Integer;
  end;

type
  TDershane = record
    AdiKisa: string[25];
    AdiResmi, Web, Mail: string[50];
    Adresi: string[100];
    Il, Tel, Faks: string[15];
    Logo: TBitmap;
    Mudur: string[30];
  end;

var
  kullanici_adi,kullanici_sifre,ana_bilgisayar: string;
  gizli : boolean;
  yetki, SecilenSinav: integer;
  AktifDonem: string[9];
  yedek_tarih: TDateTime; //yedekleme tarihi
  Donemler: TStringList;
  SOgr: TSOgr;
  SVeli: TSVeli;
  Dershane: TDershane;

implementation

Function WinExecute32Wait(FileName : AnsiString) : integer;
var
 zAppName:array[0..512] of char;
 zCurDir:array[0..255] of char;
 WorkDir:String;
 StartupInfo:TStartupInfo;
 ProcessInfo:TProcessInformation;
 res : DWord;
begin
 StrPCopy(zAppName,FileName);
 GetDir(0,WorkDir);
 StrPCopy(zCurDir, ExtractFilePath(FileName));
 FillChar(StartupInfo, Sizeof(StartupInfo),#0);
 StartupInfo.cb          := Sizeof(StartupInfo);
 StartupInfo.dwFlags     := STARTF_USESHOWWINDOW;
 StartupInfo.wShowWindow := SW_HIDE;           // hide the application window
 // StartupInfo.wShowWindow := SW_SHOW;
 if not CreateProcess(nil,
   zAppName,                      { pointer to command line string }
   nil,                           { pointer to process security attributes}
   nil,                           { pointer to thread security attributes }
   false,                         { handle inheritance flag }
   CREATE_NEW_CONSOLE or          { creation flags }
   NORMAL_PRIORITY_CLASS,
   nil,                           { pointer to new environment block }
   nil,                           { pointer to current directory name }
   StartupInfo,                   { pointer to STARTUPINFO }
   ProcessInfo) then Result := 0  { pointer to PROCESS_INF }
 else begin
   WaitforSingleObject(ProcessInfo.hProcess,INFINITE);
   GetExitCodeProcess(ProcessInfo.hProcess, res);
   result := res;
 end;
end;

function versiyon: string;
var
  Size, Size2: DWord;
  Pt, Pt2: Pointer;
begin
  Size := GetFileVersionInfoSize (PChar (ParamStr (0)), Size2);
  if Size > 0 then
  begin
    GetMem (Pt, Size);
    try
       GetFileVersionInfo (PChar (ParamStr (0)), 0, Size, Pt);
       VerQueryValue (Pt, '\', Pt2, Size2);
       with TVSFixedFileInfo (Pt2^) do
       Result:=  IntToStr (HiWord (dwFileVersionMS))+'.'+IntToStr (LoWord (dwFileVersionMS))+'.'+IntToStr (HiWord (dwFileVersionLS))+'.'+IntToStr (LoWord (dwFileVersionLS));
    finally
      FreeMem (Pt);
    end;
  end;
end;

function IsNT: Boolean;
var
  OS: TOSVersionInfo;
begin
  ZeroMemory(@OS, SizeOf(OS));
  OS.dwOSVersionInfoSize := SizeOf(OS);
  GetVersionEx(OS);
  Result := OS.dwPlatformId = VER_PLATFORM_WIN32_NT;
end;

procedure SetDateTime(dDateTime: TDateTime);
var
  dSysTime: TSystemTime;
  buffer: DWORD;
  tkp, tpko: TTokenPrivileges;
  hToken: THandle;
begin
  if IsNT then
  begin
    if not OpenProcessToken(GetCurrentProcess(),
                            TOKEN_ADJUST_PRIVILEGES or TOKEN_QUERY,
                            hToken) then Exit;
    LookupPrivilegeValue(nil, 'SE_SYSTEMTIME_NAME', tkp.Privileges[0].Luid);
    tkp.PrivilegeCount := 1;
    tkp.Privileges[0].Attributes := SE_PRIVILEGE_ENABLED;
    if not AdjustTokenPrivileges(hToken, False, tkp,
      SizeOf(tkp), tpko, buffer) then Exit;
  end;
  DateTimeToSystemTime(dDateTime, dSysTime);
  Windows.SetLocalTime(dSysTime);
end;

Function SayiYazi(Sayi: Extended): String; //paray� yaz�yla
Const
Yuzler: Array[1..3,0..9] of String=(
        ('',' y�z',' iki y�z',' �� y�z',' d�rt y�z',' be� y�z',' alt� y�z',' yedi y�z',' sekiz y�z',' dokuz y�z'),
        ('',' on',' yirmi',' otuz',' k�rk',' elli',' altm��',' yetmi�',' seksen',' doksan'),
        ('',' bir',' iki',' ��',' d�rt',' be�',' alt�',' yedi',' sekiz',' dokuz'));
Binler: Array[1..8] of String=
        (' kattrilyar',' trilyar',' kattrilyon',' trilyon',' milyar',' milyon',' bin','');
Var
        i, y, z: Integer;
        Parca : String;
        kurus: String[2];
        tl: String[24];
        EkSt: String[26];
        AraSonuc, sonuc: String;
        n, hane: Integer;
Begin
 if Sayi < 0 then
 begin
  SayiYazi := 'Negatif de�er';
  Exit;
 end;
 kurus:='';
 sonuc := formatfloat('#0.##',sayi);
 i := pos(DecimalSeparator,sonuc);
 if i > 0 then
 begin
  kurus := copy(sonuc,i+1,length(sonuc)-i);
  tl := copy(sonuc,1,i-1);
 end
 else
  tl := sonuc;
 sonuc:='';
 n:=Length(tl);
 if n < 24 then
 begin
  EkSt:='';
  FillChar(EkSt,24-n+1,'0');
  EkSt[0]:=Chr(24-n);
  tl:=EkSt+tl;
 end;
 n:=Length(tl);
 i:=1;
 hane:=1;
 while i<n do
 begin
  Parca:=Copy(tl,i,3);
  AraSonuc:='';
  for y:=1 to 3 do
  begin
   z:=StrToInt(Copy(Parca,y,1));
   AraSonuc:=AraSonuc+Yuzler[y,z];
  end;
  if AraSonuc<>'' then AraSonuc:=AraSonuc+Binler[hane];
  if trim(AraSonuc)='bir bin' then AraSonuc:='bin';
  i:=i+3;
  Inc(hane);
  Sonuc:=Sonuc+AraSonuc;
 end;
 if sonuc <> '' then sonuc := sonuc + ' YTL';
 if kurus <> '' then
 Begin
  if length(Kurus) = 1 then Kurus:=Kurus+'0';
  sonuc := Sonuc + Yuzler[2,strtoint(copy(Kurus,1,1))]+Yuzler[3,strtoint(copy(Kurus,2,1))]+' YKR'
 end;
 result:=sonuc;
end;

function metindensil(neyi, nereden: string): string;
// istemedi�imiz metni siler
Begin
  if nereden = '' then
  begin
    Result := '0';
    Exit;
  end;
  While POS(neyi ,nereden)>0 do
  begin
    DELETE(nereden, POS(neyi, nereden),Length(neyi));
  end;
Result := nereden
end;

function mtarih(tarih: TDateTime): string;
begin
 Result:= formatdatetime('yyyy-mm-dd', tarih);
end;

function bkharf(Harf: Char; tip: boolean): Char;
begin
 if tip = true then
  case Harf of
   '�': Result:='I';
   '�': Result:='�';
   '�': Result:='�';
   '�': Result:='�';
   'i': Result:='�';
   '�': Result:='�';
   '�': Result:='�';
  else
   Result:=UpCase(Harf);
  end
 else
  case Harf of
   'I': Result:='�';
   '�': Result:='�';
   '�': Result:='�';
   '�': Result:='�';
   '�': Result:='i';
   '�': Result:='�';
   '�': Result:='�';
  else
   Result:=LowerCase(Harf)[1];
  end;
end;

procedure reg_yaz(reg_anahtar: string; reg_deger: string);
var
   reg_nesne: TRegistry;
begin
   reg_nesne := TRegistry.Create;
   try
      reg_nesne.RootKey := HKEY_CURRENT_USER;
      reg_nesne.OpenKey('Software\Dershane Otomasyonu', True);
      reg_nesne.WriteString (reg_anahtar, reg_deger);
      reg_nesne.CloseKey;
   finally
      reg_nesne.Free;
   end;

end;

function reg_oku(reg_anahtar: string): string;
var
   reg_nesne: TRegistry;

begin
   reg_nesne := TRegistry.Create;
   try
      reg_nesne.RootKey := HKEY_CURRENT_USER;
      reg_nesne.OpenKey('Software\Dershane Otomasyonu', False);
      reg_oku := reg_nesne.ReadString(reg_anahtar);
      reg_nesne.CloseKey;
   finally
      reg_nesne.Free;
   end;

end;

function bkmetin(kelime:String; tip: integer):String;
var
buyuk,kucuk:String;
j,i:integer;
begin
{
0 t�m� k���k
1 T�M� B�Y�K
2 �lk harf b�y�k
3 Her Kelimenin �lk Harfi B�y�k
}
 buyuk:='ABC�DEFG�HI�JKLMNO�PRS�TU�VYZQWX';
 kucuk:='abc�defg�h�ijklmno�prs�tu�vyzqwx';
 For i:=length(Kelime) downto 1 do
  for j:= 29 downto 1 do
   if (kelime[i] = buyuk[j]) or (kelime[i] = kucuk[j]) then
    case tip of
     0: kelime[i] := kucuk[j];
     1: kelime[i] := buyuk[j];
     2: if i = 1 then
         kelime[i] := buyuk[j]
        else
         kelime[i] := kucuk[j];
     3: if i = 1 then
         kelime[i] := buyuk[j]
        else
          if (kelime[i-1]=' ') or (kelime[i-1]='.') then
           kelime[i] := buyuk[j]
          else
           kelime[i] := kucuk[j];
    end;
 Result := kelime;
end;

function CtrlDown : Boolean;
var
  State : TKeyboardState;
begin
  GetKeyboardState(State);
  Result := ((State[vk_Control] And 128) <> 0);
end;

function ShiftDown : Boolean;
var
  State : TKeyboardState;
begin
  GetKeyboardState(State);
  Result := ((State[vk_Shift] and 128) <> 0);
end;

function AltDown : Boolean;
var
  State : TKeyboardState;
begin
  GetKeyboardState(State);
  Result := ((State[vk_Menu] and 128) <> 0);
end;

function bilgisayaradi: string;
var
  buffer: array[0..MAX_COMPUTERNAME_LENGTH + 1] of Char;
  Size: Cardinal;
begin
  Size := MAX_COMPUTERNAME_LENGTH + 1;
  Windows.GetComputerName(@buffer, Size);
  Result := StrPas(buffer);
end;

end.
