
-- kerdi t�r�
create PROCEDURE usp_kredit�r�

        @ad� nvarchar(50),
		 @a��klama nvarchar(max)
		
		
       
AS
BEGIN
     
     
    
       INSERT INTO tbl_KrediT�r�
              (Ad�,A��klama)
       VALUES
              (@ad�,@a��klama)
END


exec usp_kredit�r� 'Ara�','Ara� Kredisi'