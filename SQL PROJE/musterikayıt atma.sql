--- musteri kay�ta kay�t atma
ALTER PROCEDURE usp_MusteriKayit
       
       @Ad� nvarchar(50),
	   @Soyad� nvarchar(50),
	   @DogumTarihi date,
	   @Cinsiyet char,
	   @TC char(11),
	   @Tel char(10),
	   @email nvarchar(70),
	   @adres nvarchar(Max),
	   @Durum char (1),
	   @Sifre nvarchar(50)

       
AS
BEGIN
     
     
    
       INSERT INTO tbl_MusteriBilgi
              (Ad�,Soyad�,DogumTarihi,Cinsiyet,TC,Tel,Email,Adres,Durum,�ifre)
       VALUES
              (@Ad�,@Soyad�,@DogumTarihi,@Cinsiyet,@TC,@Tel,@Ad�+@Soyad�+'@gmail.com',@adres,@Durum,@Sifre)
END




exec usp_MusteriKayit 'sinan','k�l�.','1999-07-20','E','8614057834','5357668406','','�STANBUL / �engelk�y','A','4523'

select * from tbl_Banka
select * from tbl_MusteriBilgi
select * from tbl_MusteriBanka
select*from tbl_MusteriBilgi


--- inner join ile iki tabloyu birle�tirip kullanmak
Select b.BankaAd�,musb.Ad�,musb.Soyad�, musb.Email from tbl_MusteriBanka mb 
inner join tbl_MusteriBilgi musb on  mb.MusteriID= musb.ID
inner join tbl_Banka b on  b.ID= mb.BankaID



