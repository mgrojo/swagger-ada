--  REST API Validation
--  API to validate
--
--  The version of the OpenAPI document: 1.0.0
--  Contact: Stephane.Carrez@gmail.com
--
--  NOTE: This package is auto generated by OpenAPI-Generator 5.0.0-SNAPSHOT.
--  https://openapi-generator.tech
--  Do not edit the class manually.

with TestAPI.Models;
with Swagger.Clients;
package TestAPI.Clients is

   type Client_Type is new Swagger.Clients.Client_Type with null record;

   --
   --  Query an orchestrated service instance
   procedure Orch_Store
      (Client : in out Client_Type;
       Inline_Object_3Type : in TestAPI.Models.InlineObject3_Type);

   --  Create a ticket
   procedure Do_Create_Ticket
      (Client : in out Client_Type;
       Title : in Swagger.UString;
       Owner : in Swagger.Nullable_UString;
       Status : in Swagger.Nullable_UString;
       Description : in Swagger.Nullable_UString);

   --  Delete a ticket
   procedure Do_Delete_Ticket
      (Client : in out Client_Type;
       Tid : in Swagger.Long);

   --  List the tickets
   procedure Do_Head_Ticket
      (Client : in out Client_Type);

   --  Patch a ticket
   procedure Do_Patch_Ticket
      (Client : in out Client_Type;
       Tid : in Swagger.Long;
       Owner : in Swagger.Nullable_UString;
       Status : in Swagger.Nullable_UString;
       Title : in Swagger.Nullable_UString;
       Description : in Swagger.Nullable_UString;
       Result : out TestAPI.Models.Ticket_Type);

   --  Update a ticket
   procedure Do_Update_Ticket
      (Client : in out Client_Type;
       Tid : in Swagger.Long;
       Owner : in Swagger.Nullable_UString;
       Status : in Swagger.Nullable_UString;
       Title : in Swagger.Nullable_UString;
       Description : in Swagger.Nullable_UString;
       Result : out TestAPI.Models.Ticket_Type);

   --  Get a ticket
   --  Get a ticket
   procedure Do_Get_Ticket
      (Client : in out Client_Type;
       Tid : in Swagger.Long;
       Result : out TestAPI.Models.Ticket_Type);

   --  List the tickets
   --  List the tickets created for the project.
   procedure Do_List_Tickets
      (Client : in out Client_Type;
       Status : in Swagger.Nullable_UString;
       Owner : in Swagger.Nullable_UString;
       Result : out TestAPI.Models.Ticket_Type_Vectors.Vector);

   --  Get a ticket
   --  Get a ticket
   procedure Do_Options_Ticket
      (Client : in out Client_Type;
       Tid : in Swagger.Long;
       Result : out TestAPI.Models.Ticket_Type);

end TestAPI.Clients;
