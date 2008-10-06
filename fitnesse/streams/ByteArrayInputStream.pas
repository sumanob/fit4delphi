// Fit4Delphi Copyright (C) 2008. Sabre Inc.
// This program is free software; you can redistribute it and/or modify it under
// the terms of the GNU General Public License as published by the Free Software Foundation;
// either version 2 of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
// without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
// See the GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License along with this program;
// if not, write to the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.
//
// Ported to Delphi by Michal Wojcik.
//
{$H+}
unit ByteArrayInputStream;

interface

uses
  Classes, InputStream;

type
  TByteArrayInputStream = class(TInputStream)
  public
    constructor Create; overload;
    constructor Create(str : String); overload;
    function toByteArray : String; //TODO
    function toString : String;
  end;

implementation

{ TByteArrayInputStream }

constructor TByteArrayInputStream.Create;
begin
  Create('');
end;

constructor TByteArrayInputStream.Create(str: String);
begin
  inherited Create;
  stream := TStringStream.Create(str);
end;

function TByteArrayInputStream.toByteArray: String;
begin
// TODO
  Result := toString;
end;

function TByteArrayInputStream.toString: String;
begin
  Result := (stream as TStringStream).DataString;
end;

end.

