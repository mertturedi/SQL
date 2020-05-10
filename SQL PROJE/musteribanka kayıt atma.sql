--- musteri bankaya kayýt atma

create PROCEDURE usp_MusteriBanka
       
       @BankaID int,
        @MusteriID int
AS
BEGIN
     
     
    
       INSERT INTO tbl_MusteriBanka
              (BankaID,MusteriID)
       VALUES
              (@BankaID,@MusteriID)
END

exec usp_MusteriBanka 5,1

select * from tbl_Banka
select * from tbl_MusteriBilgi
select * from tbl_MusteriBanka

