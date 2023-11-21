// This unit is autogenerated. Do not edit it manually.
// Source: D:\temp\DX12\seminar\03_JsonWizard\my.json
// Date: 2023-11-14 ?�후 4:08:00

unit Unit2;

interface

uses
  System.Classes, System.JSON.Serializers, System.JSON;

type
  [JsonSerialize(TJsonMemberSerialization.Fields)]
  Myjson = class(TPersistent)
  private
    [JsonName('seq')]
    Fseq: Integer;
    [JsonName('mac')]
    Fmac: string;
    [JsonName('serial')]
    Fserial: string;
    [JsonName('channel')]
    Fchannel: string;
  public
    class function FromJSON(const AValue: TJSONValue): Myjson; overload; static;
    class function FromJSON(const AValue: string): Myjson; overload; static;
    function ToJSONObject: TJSONValue;
    function ToJSONString: string;
    property seq: Integer read Fseq write Fseq;
    property mac: string read Fmac write Fmac;
    property serial: string read Fserial write Fserial;
    property channel: string read Fchannel write Fchannel;
  end;

  [JsonSerialize(TJsonMemberSerialization.Fields)]
  Myarr = class(TPersistent)
  private
    [JsonName('Dataset')]
    FDataset: TArray<Myjson>;
  public
    destructor Destroy; override;
    class function FromJSON(const AValue: TJSONArray): Myarr; overload; static;
    class function FromJSON(const AValue: string): Myarr; overload; static;
    function ToJSONArray: TJSONArray;
    function ToJSONString: string;
    property Dataset: TArray<Myjson> read FDataset write FDataset;
  end;

implementation

uses
  System.Generics.Collections;

class function Myjson.FromJSON(const AValue: TJSONValue): Myjson;
begin
  Result := TJSONMapper<Myjson>.Default.FromObject(AValue);
end;

class function Myjson.FromJSON(const AValue: string): Myjson;
begin
  Result := TJSONMapper<Myjson>.Default.FromObject(AValue);
end;

function Myjson.ToJSONObject: TJSONValue;
begin
  Result := TJSONMapper<Myjson>.Default.ToObject(Self);
end;

function Myjson.ToJSONString: string;
begin
  Result := TJSONMapper<Myjson>.Default.ToString(Self);
end;

destructor Myarr.Destroy;
begin
  TArray.FreeValues<Myjson>(FDataset);
  inherited Destroy;
end;

class function Myarr.FromJSON(const AValue: TJSONArray): Myarr;
begin
  var LArr := TJSONMapper<Myjson>.Default.FromArray(AValue);
  Result := Myarr.Create;
  Result.Dataset := LArr;
end;

class function Myarr.FromJSON(const AValue: string): Myarr;
begin
  var LArr := TJSONMapper<Myjson>.Default.FromArray(AValue);
  Result := Myarr.Create;
  Result.Dataset := LArr;
end;

function Myarr.ToJSONArray: TJSONArray;
begin
  Result := TJSONMapper<Myjson>.Default.ToArray(Dataset);
end;

function Myarr.ToJSONString: string;
begin
  Result := TJSONMapper<Myjson>.Default.ToString(Dataset);
end;

initialization

  RegisterClass(Myjson);
  RegisterClass(Myarr);

end.
