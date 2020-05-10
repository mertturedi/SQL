
-- hesap kayýt

create PROCEDURE usp_HesapKayýt

        @HesapNo int,
		 @Bakiye money,
		  @BankaID int,
	       @MusteriID int
       
AS
BEGIN
     
     
    
       INSERT INTO tbl_Hesap
              (HesapNo,Bakiye,BankaID,MusteriID)
       VALUES
              (@HesapNo,@Bakiye,@BankaID,@MusteriID)
END

select * from tbl_Hesap

EXEC usp_HesapKayýt 145069,4000,9,4

--alter table tbl_Hesap alter column Bakiye money null

---------------
Select b.BankaAdý,musb.Adý,musb.Soyadý,h.Bakiye, h.HesapNo from tbl_MusteriBanka mb 
inner join tbl_MusteriBilgi musb on  mb.MusteriID= musb.ID
inner join tbl_Banka b on  b.ID= mb.BankaID inner join tbl_Hesap H on H.BankaID= b.ID and h.MusteriID=musb.ID
-------------


select * from tbl_MusteriBanka
select * from tbl_Banka

