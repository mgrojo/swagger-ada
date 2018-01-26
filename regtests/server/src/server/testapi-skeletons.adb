--  REST API Validation
--  API to validate
--
--  OpenAPI spec version: 1.0.0
--  Contact: Stephane.Carrez@gmail.com
--
--  NOTE: This package is auto generated by the swagger code generator 2.4.0-SNAPSHOT.
--  https://github.com/swagger-api/swagger-codegen.git
--  Do not edit the class manually.
with Swagger.Streams;
with Swagger.Servers.Operation;
package body TestAPI.Skeletons is

   package body Skeleton is


      package API_Do_Create_Ticket is
         new Swagger.Servers.Operation (Handler => Do_Create_Ticket,
                                        Method  => Swagger.Servers.POST,
                                        URI     => "/tickets");

      --  Create a ticket
      procedure Do_Create_Ticket
         (Req     : in out Swagger.Servers.Request'Class;
          Reply   : in out Swagger.Servers.Response'Class;
          Stream  : in out Swagger.Servers.Output_Stream'Class;
          Context : in out Swagger.Servers.Context_Type) is
         Impl : Implementation_Type;
         Title : Swagger.UString;
         Owner : Swagger.Nullable_UString;
         Status : Swagger.Nullable_UString;
         Description : Swagger.Nullable_UString;
      begin
         if not Context.Is_Authenticated then
            Context.Set_Error (401, "Not authenticated");
            return;
         end if;
         if not Context.Has_Permission (ACL_Write_Ticket.Permission) then
            Context.Set_Error (403, "Permission denied");
            return;
         end if;
         Swagger.Servers.Get_Parameter (Context, "owner", Owner);
         Swagger.Servers.Get_Parameter (Context, "status", Status);
         Swagger.Servers.Get_Parameter (Context, "title", Title);
         Swagger.Servers.Get_Parameter (Context, "description", Description);
         Impl.Do_Create_Ticket
            (Title,
             Owner,
             Status,
             Description, Context);

      end Do_Create_Ticket;

      package API_Do_Delete_Ticket is
         new Swagger.Servers.Operation (Handler => Do_Delete_Ticket,
                                        Method  => Swagger.Servers.DELETE,
                                        URI     => "/tickets/{tid}");

      --  Delete a ticket
      procedure Do_Delete_Ticket
         (Req     : in out Swagger.Servers.Request'Class;
          Reply   : in out Swagger.Servers.Response'Class;
          Stream  : in out Swagger.Servers.Output_Stream'Class;
          Context : in out Swagger.Servers.Context_Type) is
         Impl : Implementation_Type;
         Tid : Swagger.Long;
      begin
         if not Context.Is_Authenticated then
            Context.Set_Error (401, "Not authenticated");
            return;
         end if;
         if not Context.Has_Permission (ACL_Write_Ticket.Permission) then
            Context.Set_Error (403, "Permission denied");
            return;
         end if;
         Swagger.Servers.Get_Path_Parameter (Req, 1, Tid);
         Impl.Do_Delete_Ticket
            (Tid, Context);

      end Do_Delete_Ticket;

      package API_Do_Update_Ticket is
         new Swagger.Servers.Operation (Handler => Do_Update_Ticket,
                                        Method  => Swagger.Servers.PUT,
                                        URI     => "/tickets/{tid}");

      --  Update a ticket
      procedure Do_Update_Ticket
         (Req     : in out Swagger.Servers.Request'Class;
          Reply   : in out Swagger.Servers.Response'Class;
          Stream  : in out Swagger.Servers.Output_Stream'Class;
          Context : in out Swagger.Servers.Context_Type) is
         Impl : Implementation_Type;
         Tid : Swagger.Long;
         Owner : Swagger.Nullable_UString;
         Status : Swagger.Nullable_UString;
         Title : Swagger.Nullable_UString;
         Description : Swagger.Nullable_UString;
         Result : TestAPI.Models.Ticket_Type;
      begin
         if not Context.Is_Authenticated then
            Context.Set_Error (401, "Not authenticated");
            return;
         end if;
         if not Context.Has_Permission (ACL_Write_Ticket.Permission) then
            Context.Set_Error (403, "Permission denied");
            return;
         end if;
         Swagger.Servers.Get_Path_Parameter (Req, 1, Tid);
         Swagger.Servers.Get_Parameter (Context, "owner", Owner);
         Swagger.Servers.Get_Parameter (Context, "status", Status);
         Swagger.Servers.Get_Parameter (Context, "title", Title);
         Swagger.Servers.Get_Parameter (Context, "description", Description);
         Impl.Do_Update_Ticket
            (Tid,
             Owner,
             Status,
             Title,
             Description, Result, Context);
         Stream.Start_Document;
         TestAPI.Models.Serialize (Stream, "", Result);
         Stream.End_Document;
      end Do_Update_Ticket;

      package API_Do_Get_Ticket is
         new Swagger.Servers.Operation (Handler => Do_Get_Ticket,
                                        Method  => Swagger.Servers.GET,
                                        URI     => "/tickets/{tid}");

      --  Get a ticket
      procedure Do_Get_Ticket
         (Req     : in out Swagger.Servers.Request'Class;
          Reply   : in out Swagger.Servers.Response'Class;
          Stream  : in out Swagger.Servers.Output_Stream'Class;
          Context : in out Swagger.Servers.Context_Type) is
         Impl : Implementation_Type;
         Tid : Swagger.Long;
         Result : TestAPI.Models.Ticket_Type;
      begin
         if not Context.Is_Authenticated then
            Context.Set_Error (401, "Not authenticated");
            return;
         end if;
         if not Context.Has_Permission (ACL_Read_Ticket.Permission) then
            Context.Set_Error (403, "Permission denied");
            return;
         end if;
         Swagger.Servers.Get_Path_Parameter (Req, 1, Tid);
         Impl.Do_Get_Ticket
            (Tid, Result, Context);
         Stream.Start_Document;
         TestAPI.Models.Serialize (Stream, "", Result);
         Stream.End_Document;
      end Do_Get_Ticket;

      package API_Do_List_Tickets is
         new Swagger.Servers.Operation (Handler => Do_List_Tickets,
                                        Method  => Swagger.Servers.GET,
                                        URI     => "/tickets");

      --  List the tickets
      procedure Do_List_Tickets
         (Req     : in out Swagger.Servers.Request'Class;
          Reply   : in out Swagger.Servers.Response'Class;
          Stream  : in out Swagger.Servers.Output_Stream'Class;
          Context : in out Swagger.Servers.Context_Type) is
         Impl : Implementation_Type;
         Status : Swagger.Nullable_UString;
         Owner : Swagger.Nullable_UString;
         Result : TestAPI.Models.Ticket_Type_Vectors.Vector;
      begin
         if not Context.Is_Authenticated then
            Context.Set_Error (401, "Not authenticated");
            return;
         end if;
         if not Context.Has_Permission (ACL_Read_Ticket.Permission) then
            Context.Set_Error (403, "Permission denied");
            return;
         end if;
         Swagger.Servers.Get_Query_Parameter (Req, "status", Status);
         Swagger.Servers.Get_Query_Parameter (Req, "owner", Owner);
         Impl.Do_List_Tickets
            (Status,
             Owner, Result, Context);
         Stream.Start_Document;
         TestAPI.Models.Serialize (Stream, "", Result);
         Stream.End_Document;
      end Do_List_Tickets;

      procedure Register (Server : in out Swagger.Servers.Application_Type'Class) is
      begin
         Swagger.Servers.Register (Server, API_Do_Create_Ticket.Definition);
         Swagger.Servers.Register (Server, API_Do_Delete_Ticket.Definition);
         Swagger.Servers.Register (Server, API_Do_Update_Ticket.Definition);
         Swagger.Servers.Register (Server, API_Do_Get_Ticket.Definition);
         Swagger.Servers.Register (Server, API_Do_List_Tickets.Definition);
      end Register;

   end Skeleton;

   package body Shared_Instance is


      --  Create a ticket
      procedure Do_Create_Ticket
         (Req     : in out Swagger.Servers.Request'Class;
          Reply   : in out Swagger.Servers.Response'Class;
          Stream  : in out Swagger.Servers.Output_Stream'Class;
          Context : in out Swagger.Servers.Context_Type) is
         Title : Swagger.UString;
         Owner : Swagger.Nullable_UString;
         Status : Swagger.Nullable_UString;
         Description : Swagger.Nullable_UString;
      begin
         if not Context.Is_Authenticated then
            Context.Set_Error (401, "Not authenticated");
            return;
         end if;
         if not Context.Has_Permission (ACL_Write_Ticket.Permission) then
            Context.Set_Error (403, "Permission denied");
            return;
         end if;
         Swagger.Servers.Get_Parameter (Context, "owner", Owner);
         Swagger.Servers.Get_Parameter (Context, "status", Status);
         Swagger.Servers.Get_Parameter (Context, "title", Title);
         Swagger.Servers.Get_Parameter (Context, "description", Description);
         Server.Do_Create_Ticket
            (Title,
             Owner,
             Status,
             Description, Context);

      end Do_Create_Ticket;

      package API_Do_Create_Ticket is
         new Swagger.Servers.Operation (Handler => Do_Create_Ticket,
                                        Method  => Swagger.Servers.POST,
                                        URI     => "/tickets");

      --  Delete a ticket
      procedure Do_Delete_Ticket
         (Req     : in out Swagger.Servers.Request'Class;
          Reply   : in out Swagger.Servers.Response'Class;
          Stream  : in out Swagger.Servers.Output_Stream'Class;
          Context : in out Swagger.Servers.Context_Type) is
         Tid : Swagger.Long;
      begin
         if not Context.Is_Authenticated then
            Context.Set_Error (401, "Not authenticated");
            return;
         end if;
         if not Context.Has_Permission (ACL_Write_Ticket.Permission) then
            Context.Set_Error (403, "Permission denied");
            return;
         end if;
         Swagger.Servers.Get_Path_Parameter (Req, 1, Tid);
         Server.Do_Delete_Ticket
            (Tid, Context);

      end Do_Delete_Ticket;

      package API_Do_Delete_Ticket is
         new Swagger.Servers.Operation (Handler => Do_Delete_Ticket,
                                        Method  => Swagger.Servers.DELETE,
                                        URI     => "/tickets/{tid}");

      --  Update a ticket
      procedure Do_Update_Ticket
         (Req     : in out Swagger.Servers.Request'Class;
          Reply   : in out Swagger.Servers.Response'Class;
          Stream  : in out Swagger.Servers.Output_Stream'Class;
          Context : in out Swagger.Servers.Context_Type) is
         Tid : Swagger.Long;
         Owner : Swagger.Nullable_UString;
         Status : Swagger.Nullable_UString;
         Title : Swagger.Nullable_UString;
         Description : Swagger.Nullable_UString;
         Result : TestAPI.Models.Ticket_Type;
      begin
         if not Context.Is_Authenticated then
            Context.Set_Error (401, "Not authenticated");
            return;
         end if;
         if not Context.Has_Permission (ACL_Write_Ticket.Permission) then
            Context.Set_Error (403, "Permission denied");
            return;
         end if;
         Swagger.Servers.Get_Path_Parameter (Req, 1, Tid);
         Swagger.Servers.Get_Parameter (Context, "owner", Owner);
         Swagger.Servers.Get_Parameter (Context, "status", Status);
         Swagger.Servers.Get_Parameter (Context, "title", Title);
         Swagger.Servers.Get_Parameter (Context, "description", Description);
         Server.Do_Update_Ticket
            (Tid,
             Owner,
             Status,
             Title,
             Description, Result, Context);
         Stream.Start_Document;
         TestAPI.Models.Serialize (Stream, "", Result);
         Stream.End_Document;
      end Do_Update_Ticket;

      package API_Do_Update_Ticket is
         new Swagger.Servers.Operation (Handler => Do_Update_Ticket,
                                        Method  => Swagger.Servers.PUT,
                                        URI     => "/tickets/{tid}");

      --  Get a ticket
      procedure Do_Get_Ticket
         (Req     : in out Swagger.Servers.Request'Class;
          Reply   : in out Swagger.Servers.Response'Class;
          Stream  : in out Swagger.Servers.Output_Stream'Class;
          Context : in out Swagger.Servers.Context_Type) is
         Tid : Swagger.Long;
         Result : TestAPI.Models.Ticket_Type;
      begin
         if not Context.Is_Authenticated then
            Context.Set_Error (401, "Not authenticated");
            return;
         end if;
         if not Context.Has_Permission (ACL_Read_Ticket.Permission) then
            Context.Set_Error (403, "Permission denied");
            return;
         end if;
         Swagger.Servers.Get_Path_Parameter (Req, 1, Tid);
         Server.Do_Get_Ticket
            (Tid, Result, Context);
         Stream.Start_Document;
         TestAPI.Models.Serialize (Stream, "", Result);
         Stream.End_Document;
      end Do_Get_Ticket;

      package API_Do_Get_Ticket is
         new Swagger.Servers.Operation (Handler => Do_Get_Ticket,
                                        Method  => Swagger.Servers.GET,
                                        URI     => "/tickets/{tid}");

      --  List the tickets
      procedure Do_List_Tickets
         (Req     : in out Swagger.Servers.Request'Class;
          Reply   : in out Swagger.Servers.Response'Class;
          Stream  : in out Swagger.Servers.Output_Stream'Class;
          Context : in out Swagger.Servers.Context_Type) is
         Status : Swagger.Nullable_UString;
         Owner : Swagger.Nullable_UString;
         Result : TestAPI.Models.Ticket_Type_Vectors.Vector;
      begin
         if not Context.Is_Authenticated then
            Context.Set_Error (401, "Not authenticated");
            return;
         end if;
         if not Context.Has_Permission (ACL_Read_Ticket.Permission) then
            Context.Set_Error (403, "Permission denied");
            return;
         end if;
         Swagger.Servers.Get_Query_Parameter (Req, "status", Status);
         Swagger.Servers.Get_Query_Parameter (Req, "owner", Owner);
         Server.Do_List_Tickets
            (Status,
             Owner, Result, Context);
         Stream.Start_Document;
         TestAPI.Models.Serialize (Stream, "", Result);
         Stream.End_Document;
      end Do_List_Tickets;

      package API_Do_List_Tickets is
         new Swagger.Servers.Operation (Handler => Do_List_Tickets,
                                        Method  => Swagger.Servers.GET,
                                        URI     => "/tickets");

      procedure Register (Server : in out Swagger.Servers.Application_Type'Class) is
      begin
         Swagger.Servers.Register (Server, API_Do_Create_Ticket.Definition);
         Swagger.Servers.Register (Server, API_Do_Delete_Ticket.Definition);
         Swagger.Servers.Register (Server, API_Do_Update_Ticket.Definition);
         Swagger.Servers.Register (Server, API_Do_Get_Ticket.Definition);
         Swagger.Servers.Register (Server, API_Do_List_Tickets.Definition);
      end Register;

      protected body Server is
         --  Create a ticket
         procedure Do_Create_Ticket
            (Title : in Swagger.UString;
             Owner : in Swagger.Nullable_UString;
             Status : in Swagger.Nullable_UString;
             Description : in Swagger.Nullable_UString;
             Context : in out Swagger.Servers.Context_Type) is
         begin
            Impl.Do_Create_Ticket
               (Title,
                Owner,
                Status,
                Description,
                Context);
         end Do_Create_Ticket;

         --  Delete a ticket
         procedure Do_Delete_Ticket
            (Tid : in Swagger.Long;
             Context : in out Swagger.Servers.Context_Type) is
         begin
            Impl.Do_Delete_Ticket
               (Tid,
                Context);
         end Do_Delete_Ticket;

         --  Update a ticket
         procedure Do_Update_Ticket
            (Tid : in Swagger.Long;
             Owner : in Swagger.Nullable_UString;
             Status : in Swagger.Nullable_UString;
             Title : in Swagger.Nullable_UString;
             Description : in Swagger.Nullable_UString;
             Result : out TestAPI.Models.Ticket_Type;
             Context : in out Swagger.Servers.Context_Type) is
         begin
            Impl.Do_Update_Ticket
               (Tid,
                Owner,
                Status,
                Title,
                Description,
                Result,
                Context);
         end Do_Update_Ticket;

         --  Get a ticket
         procedure Do_Get_Ticket
            (Tid : in Swagger.Long;
             Result : out TestAPI.Models.Ticket_Type;
             Context : in out Swagger.Servers.Context_Type) is
         begin
            Impl.Do_Get_Ticket
               (Tid,
                Result,
                Context);
         end Do_Get_Ticket;

         --  List the tickets
         procedure Do_List_Tickets
            (Status : in Swagger.Nullable_UString;
             Owner : in Swagger.Nullable_UString;
             Result : out TestAPI.Models.Ticket_Type_Vectors.Vector;
             Context : in out Swagger.Servers.Context_Type) is
         begin
            Impl.Do_List_Tickets
               (Status,
                Owner,
                Result,
                Context);
         end Do_List_Tickets;

      end Server;

   end Shared_Instance;

end TestAPI.Skeletons;
