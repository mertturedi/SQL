
-- kerdi türü
create PROCEDURE usp_kreditürü

        @adý nvarchar(50),
		 @açýklama nvarchar(max)
		
		
       
AS
BEGIN
     
     
    
       INSERT INTO tbl_KrediTürü
              (Adý,Açýklama)
       VALUES
              (@adý,@açýklama)
END


exec usp_kreditürü 'Araç','Araç Kredisi'