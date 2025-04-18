--  REST API Validation
--  API to validate
--
--  The version of the OpenAPI document: 1.0.0
--  Contact: Stephane.Carrez@gmail.com
--
--  NOTE: This package is auto generated by OpenAPI-Generator 7.11.0-2024-11-24.
--  https://openapi-generator.tech
--  Do not edit the class manually.

pragma Warnings (Off, "*is not referenced");
pragma Warnings (Off, "*no entities of*are referenced");
with OpenAPI.Servers;
with Enums.Models;
with Security.Permissions;
package Enums.Skeletons is
   pragma Style_Checks ("-bmrIu");
   pragma Warnings (Off, "*use clause for package*");
   use Enums.Models;
   type Server_Type is limited interface;

   --  Get some stat from external struct
   procedure Do_Get_Enums
     (Server  : in out Server_Type;
      Status  : in     Status_Type;
      Result  :    out Enums.Models.Stat_Type_Vectors.Vector;
      Context : in out OpenAPI.Servers.Context_Type) is abstract;

   --  Get an object
   --  Get an object
   procedure Do_Get_Object
     (Server  : in out Server_Type;
      Status  : in     Status_Type;
      Owner   : in     OpenAPI.Nullable_UString;
      Result  :    out OpenAPI.Object;
      Context : in out OpenAPI.Servers.Context_Type) is abstract;

   generic
      type Implementation_Type is limited new Server_Type with private;
      URI_Prefix : String := "";
   package Skeleton is

      procedure Register
        (Server : in out OpenAPI.Servers.Application_Type'Class);

      --  Get some stat from external struct
      procedure Do_Get_Enums
        (Req     : in out OpenAPI.Servers.Request'Class;
         Reply   : in out OpenAPI.Servers.Response'Class;
         Stream  : in out OpenAPI.Servers.Output_Stream'Class;
         Context : in out OpenAPI.Servers.Context_Type);

      --  Get an object
      procedure Do_Get_Object
        (Req     : in out OpenAPI.Servers.Request'Class;
         Reply   : in out OpenAPI.Servers.Response'Class;
         Stream  : in out OpenAPI.Servers.Output_Stream'Class;
         Context : in out OpenAPI.Servers.Context_Type);

   end Skeleton;

   generic
      type Implementation_Type is limited new Server_Type with private;
      URI_Prefix : String := "";
   package Shared_Instance is

      procedure Register
        (Server : in out OpenAPI.Servers.Application_Type'Class);

      --  Get some stat from external struct
      procedure Do_Get_Enums
        (Req     : in out OpenAPI.Servers.Request'Class;
         Reply   : in out OpenAPI.Servers.Response'Class;
         Stream  : in out OpenAPI.Servers.Output_Stream'Class;
         Context : in out OpenAPI.Servers.Context_Type);

      --  Get an object
      procedure Do_Get_Object
        (Req     : in out OpenAPI.Servers.Request'Class;
         Reply   : in out OpenAPI.Servers.Response'Class;
         Stream  : in out OpenAPI.Servers.Output_Stream'Class;
         Context : in out OpenAPI.Servers.Context_Type);

   private
      protected Server is

         --  Get some stat from external struct
         procedure Do_Get_Enums
           (Status  : in     Status_Type;
            Result  :    out Enums.Models.Stat_Type_Vectors.Vector;
            Context : in out OpenAPI.Servers.Context_Type);

         --  Get an object
         procedure Do_Get_Object
           (Status  : in     Status_Type;
            Owner   : in     OpenAPI.Nullable_UString;
            Result  :    out OpenAPI.Object;
            Context : in out OpenAPI.Servers.Context_Type);

      private
         Impl : Implementation_Type;
      end Server;
   end Shared_Instance;

end Enums.Skeletons;
