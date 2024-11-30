--  REST API types validation
--  Types to validate
--  ------------ EDIT NOTE ------------
--  This file was generated with openapi-generator.  You can modify it to implement
--  the server.  After you modify this file, you should add the following line
--  to the .openapi-generator-ignore file:
--
--  src/types-servers.ads
--
--  Then, you can drop this edit note comment.
--  ------------ EDIT NOTE ------------
with OpenAPI.Servers;
with Types.Models;
with Types.Skeletons;

package Types.Servers is
   pragma Warnings (Off, "*use clause for package*");
   use Types.Models;
   type Server_Type is limited new Types.Skeletons.Server_Type with
   null record;

   --
   overriding procedure Add_Rack
     (Server    : in out Server_Type;
      Rack_Info : in     RackInfo_Type;
      Result    :    out Types.Models.RackInfo_Type;
      Context   : in out OpenAPI.Servers.Context_Type);

   --
   overriding procedure Get_Rack
     (Server  : in out Server_Type;
      Name    : in     OpenAPI.Long;
      Result  :    out Types.Models.RackInfo_Type;
      Context : in out OpenAPI.Servers.Context_Type);

   --
   overriding procedure Update_Rack
     (Server    : in out Server_Type;
      Name      : in     OpenAPI.Long;
      Rack_Info : in     RackInfo_Type;
      Result    :    out Types.Models.RackInfo_Type;
      Context   : in out OpenAPI.Servers.Context_Type);

   package Server_Impl is new Types.Skeletons.Shared_Instance (Server_Type);

end Types.Servers;
