-- kartKayýt
create PROCEDURE usp_kartKayýt
       
       @Kartturu nvarchar(50),
	   @KartNo int
	  
       
AS
BEGIN
     
     
    
       INSERT INTO tbl_Kart
              (KartTürü,KartNo)
       VALUES
              (@Kartturu,@KartNo)
END

exec usp_kartKayýt 'Maaþ Kart',4591


Select * from tbl_Kart