--- kredikayýt

ALTER PROCEDURE usp_kredikayýt

        @türü int,
		 @tutar money,
		 @taksitsayýsý int,
		 @musteriýd int,
		 @bankaýd int
		
       
AS
BEGIN
     
     
    
       INSERT INTO tbl_Kredi
              (Türü,Tutar,TaksitSayýsý,MusteriID,BankaID)
       VALUES
              ( @türü,@tutar,@taksitsayýsý,@musteriýd,@bankaýd)
END

exec usp_kredikayýt 2,3000,10,1,1

select *from tbl_Kredi
select * from tbl_kreditürü
select * from tbl_Banka
