-- kartKay�t
create PROCEDURE usp_kartKay�t
       
       @Kartturu nvarchar(50),
	   @KartNo int
	  
       
AS
BEGIN
     
     
    
       INSERT INTO tbl_Kart
              (KartT�r�,KartNo)
       VALUES
              (@Kartturu,@KartNo)
END

exec usp_kartKay�t 'Maa� Kart',4591


Select * from tbl_Kart