--  REST API Validation
--  API to validate
--
--  The version of the OpenAPI document: 1.0.0
--  Contact: Stephane.Carrez@gmail.com
--
--  NOTE: This package is auto generated by OpenAPI-Generator 6.1.0-SNAPSHOT.
--  https://openapi-generator.tech
--  Do not edit the class manually.

package body TestAPI.Models is
   pragma Style_Checks ("-bmrIu");

   pragma Warnings (Off, "*use clause for package*");

   use Swagger.Streams;

   procedure Serialize
     (Into  : in out Swagger.Streams.Output_Stream'Class;
      Name  : in     String;
      Value : in     StringsMap_Type)
   is
   begin
      Into.Start_Entity (Name);
      Into.Write_Entity ("key", Value.Key);
      Into.End_Entity (Name);
   end Serialize;

   procedure Serialize
     (Into  : in out Swagger.Streams.Output_Stream'Class;
      Name  : in     String;
      Value : in     StringsMap_Type_Vectors.Vector)
   is
   begin
      Into.Start_Array (Name);
      for Item of Value loop
         Serialize (Into, "", Item);
      end loop;
      Into.End_Array (Name);
   end Serialize;

   procedure Deserialize
     (From  : in     Swagger.Value_Type;
      Name  : in     String;
      Value :    out StringsMap_Type)
   is
      Object : Swagger.Value_Type;
   begin
      Swagger.Streams.Deserialize (From, Name, Object);
      Swagger.Streams.Deserialize (Object, "key", Value.Key);
   end Deserialize;

   procedure Deserialize
     (From  : in     Swagger.Value_Type;
      Name  : in     String;
      Value :    out StringsMap_Type_Vectors.Vector)
   is
      List : Swagger.Value_Array_Type;
      Item : StringsMap_Type;
   begin
      Value.Clear;
      Swagger.Streams.Deserialize (From, Name, List);
      for Data of List loop
         Deserialize (Data, "", Item);
         Value.Append (Item);
      end loop;
   end Deserialize;

   procedure Serialize
     (Into  : in out Swagger.Streams.Output_Stream'Class;
      Name  : in     String;
      Value : in     OrchStoreRequest_Type)
   is
   begin
      Into.Start_Entity (Name);
      Serialize (Into, "requestedQoS", Value.Requested_Qo_S);
      Serialize (Into, "commands", Value.Commands);
      Into.End_Entity (Name);
   end Serialize;

   procedure Serialize
     (Into  : in out Swagger.Streams.Output_Stream'Class;
      Name  : in     String;
      Value : in     OrchStoreRequest_Type_Vectors.Vector)
   is
   begin
      Into.Start_Array (Name);
      for Item of Value loop
         Serialize (Into, "", Item);
      end loop;
      Into.End_Array (Name);
   end Serialize;

   procedure Deserialize
     (From  : in     Swagger.Value_Type;
      Name  : in     String;
      Value :    out OrchStoreRequest_Type)
   is
      Object : Swagger.Value_Type;
   begin
      Swagger.Streams.Deserialize (From, Name, Object);
      Deserialize (Object, "requestedQoS", Value.Requested_Qo_S);
      Deserialize (Object, "commands", Value.Commands);
   end Deserialize;

   procedure Deserialize
     (From  : in     Swagger.Value_Type;
      Name  : in     String;
      Value :    out OrchStoreRequest_Type_Vectors.Vector)
   is
      List : Swagger.Value_Array_Type;
      Item : OrchStoreRequest_Type;
   begin
      Value.Clear;
      Swagger.Streams.Deserialize (From, Name, List);
      for Data of List loop
         Deserialize (Data, "", Item);
         Value.Append (Item);
      end loop;
   end Deserialize;

   procedure Serialize
     (Into  : in out Swagger.Streams.Output_Stream'Class;
      Name  : in     String;
      Value : in     Ticket_Type)
   is
   begin
      Into.Start_Entity (Name);
      Into.Write_Long_Entity ("id", Value.Id);
      Into.Write_Entity ("title", Value.Title);
      Into.Write_Entity ("description", Value.Description);
      Into.Write_Entity ("owner", Value.Owner);
      Into.Write_Entity ("create_date", Value.Create_Date);
      Into.Write_Entity ("end_date", Value.End_Date);
      Into.Write_Entity ("update_date", Value.Update_Date);
      Into.Write_Entity ("status", Value.Status);
      Into.End_Entity (Name);
   end Serialize;

   procedure Serialize
     (Into  : in out Swagger.Streams.Output_Stream'Class;
      Name  : in     String;
      Value : in     Ticket_Type_Vectors.Vector)
   is
   begin
      Into.Start_Array (Name);
      for Item of Value loop
         Serialize (Into, "", Item);
      end loop;
      Into.End_Array (Name);
   end Serialize;

   procedure Deserialize
     (From : in Swagger.Value_Type; Name : in String; Value : out Ticket_Type)
   is
      Object : Swagger.Value_Type;
   begin
      Swagger.Streams.Deserialize (From, Name, Object);
      Swagger.Streams.Deserialize (Object, "id", Value.Id);
      Swagger.Streams.Deserialize (Object, "title", Value.Title);
      Swagger.Streams.Deserialize (Object, "description", Value.Description);
      Swagger.Streams.Deserialize (Object, "owner", Value.Owner);
      Swagger.Streams.Deserialize (Object, "create_date", Value.Create_Date);
      Swagger.Streams.Deserialize (Object, "end_date", Value.End_Date);
      Swagger.Streams.Deserialize (Object, "update_date", Value.Update_Date);
      Swagger.Streams.Deserialize (Object, "status", Value.Status);
   end Deserialize;

   procedure Deserialize
     (From  : in     Swagger.Value_Type;
      Name  : in     String;
      Value :    out Ticket_Type_Vectors.Vector)
   is
      List : Swagger.Value_Array_Type;
      Item : Ticket_Type;
   begin
      Value.Clear;
      Swagger.Streams.Deserialize (From, Name, List);
      for Data of List loop
         Deserialize (Data, "", Item);
         Value.Append (Item);
      end loop;
   end Deserialize;

   procedure Serialize
     (Into  : in out Swagger.Streams.Output_Stream'Class;
      Name  : in     String;
      Value : in     Options_Type)
   is
   begin
      Into.Start_Entity (Name);
      Serialize (Into, "a", Value.A);
      Into.End_Entity (Name);
   end Serialize;

   procedure Serialize
     (Into  : in out Swagger.Streams.Output_Stream'Class;
      Name  : in     String;
      Value : in     Options_Type_Vectors.Vector)
   is
   begin
      Into.Start_Array (Name);
      for Item of Value loop
         Serialize (Into, "", Item);
      end loop;
      Into.End_Array (Name);
   end Serialize;

   procedure Deserialize
     (From : in Swagger.Value_Type; Name : in String; Value : out Options_Type)
   is
      Object : Swagger.Value_Type;
   begin
      Swagger.Streams.Deserialize (From, Name, Object);
      Swagger.Streams.Deserialize (Object, "a", Value.A);
   end Deserialize;

   procedure Deserialize
     (From  : in     Swagger.Value_Type;
      Name  : in     String;
      Value :    out Options_Type_Vectors.Vector)
   is
      List : Swagger.Value_Array_Type;
      Item : Options_Type;
   begin
      Value.Clear;
      Swagger.Streams.Deserialize (From, Name, List);
      for Data of List loop
         Deserialize (Data, "", Item);
         Value.Append (Item);
      end loop;
   end Deserialize;

end TestAPI.Models;
