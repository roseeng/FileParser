{$A+,B-,C+,D+,E-,F-,G+,H+,I+,J+,K-,L+,M-,N+,O-,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
unit ICQencryption;

interface

function CheckCode(const Data: array of byte; DataLength: word): Longword;
{ExtractCheckCode - function to extract check code from a packet}
function ExtractCheckCode(ReceivedCode: Longword): Longword;
{InsertCheckCode - function to insert check code to a packet}
function InsertCheckCode(ActualCode: Longword): Longword;
{EncryptData - procedure to encrypt the data of the packet}
procedure EncryptData(var Data: array of byte; DataLength: word; Code: Longword);

implementation

type
  TLongBytes = array [0..3] of byte;

const
  Table: array [byte] of byte = (
$59, $60, $37, $6B, $65, $62, $46, $48, $53, $61, $4C, $59, $60, $57, $5B, $3D,
$5E, $34, $6D, $36, $50, $3F, $6F, $67, $53, $61, $4C, $59, $40, $47, $63, $39,
$50, $5F, $5F, $3F, $6F, $47, $43, $69, $48, $33, $31, $64, $35, $5A, $4A, $42,
$56, $40, $67, $53, $41, $07, $6C, $49, $58, $3B, $4D, $46, $68, $43, $69, $48,
$33, $31, $44, $65, $62, $46, $48, $53, $41, $07, $6C, $69, $48, $33, $51, $54,
$5D, $4E, $6C, $49, $38, $4B, $55, $4A, $62, $46, $48, $33, $51, $34, $6D, $36,
$50, $5F, $5F, $5F, $3F, $6F, $47, $63, $59, $40, $67, $33, $31, $64, $35, $5A,
$6A, $52, $6E, $3C, $51, $34, $6D, $36, $50, $5F, $5F, $3F, $4F, $37, $4B, $35,
$5A, $4A, $62, $66, $58, $3B, $4D, $66, $58, $5B, $5D, $4E, $6C, $49, $58, $3B,
$4D, $66, $58, $3B, $4D, $46, $48, $53, $61, $4C, $59, $40, $67, $33, $31, $64,
$55, $6A, $32, $3E, $44, $45, $52, $6E, $3C, $31, $64, $55, $6A, $52, $4E, $6C,
$69, $48, $53, $61, $4C, $39, $30, $6F, $47, $63, $59, $60, $57, $5B, $3D, $3E,
$64, $35, $3A, $3A, $5A, $6A, $52, $4E, $6C, $69, $48, $53, $61, $6C, $49, $58,
$3B, $4D, $46, $68, $63, $39, $50, $5F, $5F, $3F, $6F, $67, $53, $41, $25, $41,
$3C, $51, $54, $3D, $5E, $54, $5D, $4E, $4C, $39, $50, $5F, $5F, $5F, $3F, $6F,
$47, $43, $69, $48, $33, $51, $54, $5D, $6E, $3C, $31, $64, $35, $5A, $00, $00);


function CheckCode(const Data: array of byte; DataLength: word): Longword;
  var Num1, Num2, tmp: Longword;
begin
    Num1:=Data[6] shl 24 +Data[2] shl 16 + Data[4] shl 8 +Data[8];
    tmp:=Random(DataLength-18);
    Num2:=((not Data[tmp]) shl 16) + (tmp shl 24);
    tmp:=Random($100);
    Num2:=Num2+(not Table[tmp]) + tmp shl 8;
    CheckCode:= Num1 xor Num2;
end;

function ExtractCheckCode(ReceivedCode: Longword): Longword;
var A1, A2, A3, A4, A5: Longword;
begin
    A1:=ReceivedCode and $0001F000;
    A2:=ReceivedCode and $07C007C0;
    A3:=ReceivedCode and $003E0001;
    A4:=ReceivedCode and $F8000000;
    A5:=ReceivedCode and $0000083E;

    A1:=A1 shr $0C;
    A2:=A2 shr $01;
    A3:=A3 shl $0A;
    A4:=A4 shr $10;
    A5:=A5 shl $0F;

    Result:=A1+A2+A3+A4+A5;
end;

function InsertCheckCode(ActualCode: Longword): Longword;
  var A1, A2, A3, A4, A5: Longword;
begin
    A1:=ActualCode and $0000001F;
    A2:=ActualCode and $03E003E0;
    A3:=ActualCode and $F8000400;
    A4:=ActualCode and $0000F800;
    A5:=ActualCode and $041F0000;

    A1:= A1 shl $0C;
    A2:= A2 shl $01;
    A3:= A3 shr $0A;
    A4:= A4 shl $10;
    A5:= A5 shr $0F;

    Result:=A1+A2+A3+A4+A5;
end;

procedure EncryptData(var Data: array of byte; DataLength: word; Code: Longword);
var
    PL, CODE1, CODE2, CODE3, N, T, PS, DAT: Longword;
begin
    PL:=DataLength;
    CODE1:=PL*$68656C6C;
    CODE2:=CODE1+Code;
    N:=PL+$3;
    PS:=$0A;

    while PS<N do begin
      T:=PS mod $0100;
      CODE3:=CODE2+Table[T];
      DAT:=Data[PS] + Data[PS+1] shl 8 +Data[PS+2] shl 16 +
        Data[PS+3] shl 24;
      DAT:=DAT xor CODE3;
      Data[PS]:=DAT and $FF;
      Data[PS+1]:=(DAT and $FF00) shr 8;
      Data[PS+2]:=(DAT and $FF0000) shr 16;
      Data[PS+3]:=(DAT and $FF000000) shr 24;
      inc(PS, 4);
    end;
end;

end.


