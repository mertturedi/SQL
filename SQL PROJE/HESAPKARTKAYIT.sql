-- hesapkartkay�t
create PROCEDURE usp_hesapkartkay�t

        @HesapID int,
		 @KartID int
		
       
AS
BEGIN
     
     
    
       INSERT INTO tbl_HesapKart
              (HesapID,KartID)
       VALUES
              ( @HesapID,@KartID)
END


exec usp_hesapkartkay�t 7,7

select * from tbl_HesapKart
select * from tbl_Hesap
select * from tbl_Kart

---------------
--ALTER VIEW V_tbl_MusteriKrediBilgi
--AS 
--Select musb.Ad�,musb.Soyad�,b.BankaAd�,kredi.Tutar,kredi.TaksitSay�s�,h.HesapNo,krdtur.Ad� as KrediT�r�,krdtur.A��klama
--from tbl_MusteriBanka mb 
--inner join tbl_MusteriBilgi musb on  mb.MusteriID= musb.ID
--inner join tbl_Banka b on  b.ID= mb.BankaID 
--inner join tbl_Hesap H on H.BankaID= b.ID and h.MusteriID=musb.ID
--inner join tbl_HesapKart hk on hk.HesapID=h.ID 
--inner join tbl_Kart kart on hk.KartID= kart.ID
--inner join tbl_MusteriBanka mbank on mbank.BankaID= b.ID and mbank.MusteriID = musb.ID
--inner join tbl_Kredi kredi on kredi.MusteriID=musb.ID and kredi.BankaID = b.ID
--inner join tbl_KrediT�r� krdtur on krdtur.ID= kredi.T�r�

------------

exec usp_kredikay�t 1,2000,3,4,2

select * from tbl_HesapKart
--select * from tbl_Kart
select * from tbl_Hesap
select * from tbl_KrediT�r�
delete from tbl_Kredi where ID = 1



select * from V_tbl_MusteriKrediBilgi

------

Select musb.ID,SUM(h.Bakiye)
from tbl_MusteriBanka mb 
inner join tbl_MusteriBilgi musb on  mb.MusteriID= musb.ID
inner join tbl_Banka b on  b.ID= mb.BankaID 
inner join tbl_Hesap H on H.BankaID= b.ID and h.MusteriID=musb.ID
inner join tbl_HesapKart hk on hk.HesapID=h.ID 
inner join tbl_Kart kart on hk.KartID= kart.ID
inner join tbl_MusteriBanka mbank on mbank.BankaID= b.ID and mbank.MusteriID = musb.ID AND musb.ID=1
group by musb.ID, h.Bakiye

------

select * from V_tbl_MusteriBankaHesapBilgiID WHERE M��teriID=1

--CREATE VIEW V_tbl_MusteriBankaHesapBilgiID
--AS 
--Select musb.ID AS M��teriID,musb.Ad�,musb.Soyad�,b.BankaAd�,h.Bakiye, h.HesapNo ,kart.KartT�r�,kart.KartNo
--from tbl_MusteriBanka mb 
--inner join tbl_MusteriBilgi musb on  mb.MusteriID= musb.ID
--inner join tbl_Banka b on  b.ID= mb.BankaID 
--inner join tbl_Hesap H on H.BankaID= b.ID and h.MusteriID=musb.ID
--inner join tbl_HesapKart hk on hk.HesapID=h.ID 
--inner join tbl_Kart kart on hk.KartID= kart.ID
--inner join tbl_MusteriBanka mbank on mbank.BankaID= b.ID and mbank.MusteriID = musb.ID


--select * from V_tbl_MusteriKrediBilgi

--select * from V_tbl_MusteriBankaHesapBilgi

--select * from tbl_HesapKart
--select * from tbl_Hesap
--select * from tbl_Kart
--delete from tbl_HesapKart where ID = 2




--create function fn_topluKredi
--(
--@MusteriID int
--)
--returns int
--as begin
--	declare @toplam int
--	set @toplam=(Select sum(kredi.Tutar) as KrediTutar�
--from tbl_MusteriBanka mb 
--inner join tbl_MusteriBilgi musb on  mb.MusteriID= musb.ID
--inner join tbl_Banka b on  b.ID= mb.BankaID 
--inner join tbl_Hesap H on H.BankaID= b.ID and h.MusteriID=musb.ID
--inner join tbl_HesapKart hk on hk.HesapID=h.ID 
--inner join tbl_Kart kart on hk.KartID= kart.ID
--inner join tbl_MusteriBanka mbank on mbank.BankaID= b.ID and mbank.MusteriID = musb.ID
--inner join tbl_Kredi kredi on kredi.MusteriID=musb.ID and kredi.BankaID = b.ID
--inner join tbl_KrediT�r� krdtur on krdtur.ID= kredi.T�r� where musb.ID=@MusteriID)

--	return @toplam
--end


--select dbo.fn_topluKredi(1) as KrediToplam