--  REST API Validation
--  API to validate
--
--  The version of the OpenAPI document: 1.0.0
--  Contact: Stephane.Carrez@gmail.com
--
--  NOTE: This package is auto generated by OpenAPI-Generator 7.9.0-2024-09-21.
--  https://openapi-generator.tech
--  Do not edit the class manually.

with TestBinary.Models;
with Swagger.Clients;
with External;
package TestBinary.Clients is
   pragma Style_Checks ("-bmrIu");

   type Client_Type is new Swagger.Clients.Client_Type with null record;

   --  Get an image
   --  Get an image
   procedure Do_Get_Image
     (Client : in out Client_Type;
      Status : in     TestBinary.Models.Status_Type;
      Owner  : in     Swagger.Nullable_UString;
      Result :    out Swagger.Blob_Ref);

   --  Get an object
   --  Get an object
   procedure Do_Get_Object
     (Client : in out Client_Type;
      Status : in     TestBinary.Models.Status_Type;
      Owner  : in     Swagger.Nullable_UString;
      Result :    out Swagger.Object);

   --  Get some stat from external struct
   procedure Do_Get_Stats
     (Client : in out Client_Type;
      Status : in     TestBinary.Models.Status_Type;
      Result :    out External.Stat_Vector);

end TestBinary.Clients;
