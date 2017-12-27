DECLARE @ID AS int
DECLARE @XML AS XML
DECLARE @string NVARCHAR(MAX);
Declare c Cursor For Select Distinct Id From [XMLValidateWithXSD].[dbo].[tblXMLDataInformation]
Open c
--Fetch next From c into @Id
While @@Fetch_Status=0 Begin 
  Fetch next From c into @ID
  SELECT @XML=XMLData FROM [XMLValidateWithXSD].[dbo].[tblXMLDataInformation] where Id=@ID 
   BEGIN TRY
     DECLARE @x XML(lista_asignaturas_schema)
     SET @x = @XML    
   END TRY
   BEGIN CATCH
     INSERT INTO [XMLValidateWithXSD].[dbo].[XMLTranformFailedEntry] (Id,Reason)
     VALUES (@Id,'XML validation failed with lista_asignaturas_schema XSD file ');  
   END CATCH
End
Close c
Deallocate c

