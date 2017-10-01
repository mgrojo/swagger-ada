-----------------------------------------------------------------------
--  swagger-clients -- Rest client support
--  Copyright (C) 2017 Stephane Carrez
--  Written by Stephane Carrez (Stephane.Carrez@gmail.com)
--
--  Licensed under the Apache License, Version 2.0 (the "License");
--  you may not use this file except in compliance with the License.
--  You may obtain a copy of the License at
--
--      http://www.apache.org/licenses/LICENSE-2.0
--
--  Unless required by applicable law or agreed to in writing, software
--  distributed under the License is distributed on an "AS IS" BASIS,
--  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
--  See the License for the specific language governing permissions and
--  limitations under the License.
-----------------------------------------------------------------------
with Ada.Text_IO;
with Util.Beans.Objects.Readers;
with Util.Serialize.IO.JSON;
with Util.Strings;
package body Swagger.Clients is

   use Ada.Strings.Unbounded;

   function Stream (Req : in Request_Type) return Stream_Accessor is
   begin
      return Stream_Accessor '(Stream => null, N => 0);
   end Stream;

   --  ------------------------------
   --  Set the path to use for the URI.
   --  ------------------------------
   procedure Set_Path (URI  : in out URI_Type;
                       Path : in String) is
   begin
      URI.URI := To_UString (Path);
   end Set_Path;

   --  ------------------------------
   --  Set the path parameter.
   --  ------------------------------
   procedure Set_Path_Param (URI   : in out URI_Type;
                             Name  : in String;
                             Value : in String) is
      Path  : constant String := To_String (URI.URI);
      Pos   : Natural;
      First : Natural := Path'First;
   begin
      loop
         Pos := Util.Strings.Index (Path, '{', First);
         exit when Pos = 0;
         if Path (Pos + 1 .. Pos + 1 + Name'Length - 1) = Name
           and then Path (Pos + 1 + Name'Length) = '}'
         then
            URI.URI := To_UString (Path (Path'First .. Pos - 1));
            Append (URI.URI, Value);
            Append (URI.URI, Path (Pos + 1 + Name'Length + 1 .. Path'Last));
            return;
         end if;
         Pos := Util.Strings.Index (Path, '}', Pos + 1);
         exit when Pos = 0;
      end loop;
   end Set_Path_Param;

   --  ------------------------------
   --  Set the path parameter.
   --  ------------------------------
   procedure Set_Path_Param (URI   : in out URI_Type;
                             Name  : in String;
                             Value : in UString) is
   begin
      URI.Set_Path_Param (Name, To_String (Value));
   end Set_Path_Param;

   --  ------------------------------
   --  Add a query parameter.
   --  ------------------------------
   procedure Add_Param (URI   : in out URI_Type;
                        Name  : in String;
                        Value : in String) is
   begin
      if Length (URI.Query) > 0 then
         Append (URI.Query, "&");
      end if;
      Append (URI.Query, Name);
      Append (URI.Query, "=");
      Append (URI.Query, Value);
   end Add_Param;

   --  ------------------------------
   --  Add a query parameter.
   --  ------------------------------
   procedure Add_Param (URI   : in out URI_Type;
                        Name  : in String;
                        Value : in UString) is
   begin
      Add_Param (URI, Name, To_String (Value));
   end Add_Param;

   --  Add a query parameter.
   procedure Add_Param (URI   : in out URI_Type;
                        Name  : in String;
                        Value : in UString_Vectors.Vector) is

   begin
      if Value.Is_Empty then
         Add_Param (URI, Name, "");
      else  --  if Value.Length = 1 then
         Add_Param (URI, Name, Value.Element (1));
      end if;
   end Add_Param;

   --  ------------------------------
   --  Convert the URI into a string.
   --  ------------------------------
   function To_String (URI : in URI_Type) return String is
   begin
      if Length (URI.Query) > 0 then
         return To_String (URI.URI) & "?" & To_String (URI.Query);
      else
         return To_String (URI.URI);
      end if;
   end To_String;

   --  ------------------------------
   --  Set the server base URI to connect to.
   --  ------------------------------
   procedure Set_Server (Client : in out Client_Type;
                         Server : in String) is
   begin
      Client.Server := To_UString (Server);
   end Set_Server;

   procedure Call (Client    : in out Client_Type;
                   Operation : in Operation_Type;
                   URI       : in URI_Type'Class;
                   Request   : in Request_Type'Class) is
   begin
      null;
   end Call;

   procedure Call (Client    : in out Client_Type;
                   Operation : in Operation_Type;
                   URI       : in URI_Type'Class) is
   begin
      null;
   end Call;

   procedure Call (Client    : in out Client_Type;
                   Operation : in Operation_Type;
                   URI       : in URI_Type'Class;
                   Reply     : out Value_Type) is
      Response : Util.Http.Clients.Response;
      Parser   : Util.Serialize.IO.JSON.Parser;
      Mapper   : Util.Beans.Objects.Readers.Reader;
   begin
      Client.Get (To_String (Client.Server) & To_String (URI), Response);
      if Response.Get_Status /= Util.Http.SC_OK then
         return;
      end if;
      --  Todo check Response.Get_Header ("Content-Type")
      Parser.Parse_String (Response.Get_Body, Mapper);
      Ada.Text_IO.Put_Line (Response.Get_Body);
      --      Reply := Util.Beans.Objects.To_Object (Response.Get_Body);
      Reply := Mapper.Get_Root;
   end Call;

   procedure Call (Client    : in out Client_Type;
                   Operation : in Operation_Type;
                   URI       : in URI_Type'Class;
                   Request   : in Request_Type'Class;
                   Reply     : out Value_Type) is
   begin
      null;
   end Call;

   --  Set the Accept header according to what the operation supports and what is
   --  selected by the client.
   procedure Set_Accept (Client : in out Client_Type;
                         List   : in Content_Type_Array) is
   begin
      null;
   end Set_Accept;

   --  Initialize the request body to prepare for the serialization of data using
   --  a supported and configured content type.
   procedure Initialize (Client  : in out Client_Type;
                         Request : in out Request_Type'Class;
                         Types   : in Content_Type_Array) is
   begin
      null;
   end Initialize;

end Swagger.Clients;
