--- kredikay�t

ALTER PROCEDURE usp_kredikay�t

        @t�r� int,
		 @tutar money,
		 @taksitsay�s� int,
		 @musteri�d int,
		 @banka�d int
		
       
AS
BEGIN
     
     
    
       INSERT INTO tbl_Kredi
              (T�r�,Tutar,TaksitSay�s�,MusteriID,BankaID)
       VALUES
              ( @t�r�,@tutar,@taksitsay�s�,@musteri�d,@banka�d)
END

exec usp_kredikay�t 2,3000,10,1,1

select *from tbl_Kredi
select * from tbl_kredit�r�
select * from tbl_Banka
