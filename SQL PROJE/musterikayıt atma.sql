--- musteri kayýta kayýt atma
ALTER PROCEDURE usp_MusteriKayit
       
       @Adý nvarchar(50),
	   @Soyadý nvarchar(50),
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
              (Adý,Soyadý,DogumTarihi,Cinsiyet,TC,Tel,Email,Adres,Durum,Þifre)
       VALUES
              (@Adý,@Soyadý,@DogumTarihi,@Cinsiyet,@TC,@Tel,@Adý+@Soyadý+'@gmail.com',@adres,@Durum,@Sifre)
END




exec usp_MusteriKayit 'sinan','kýlý.','1999-07-20','E','8614057834','5357668406','','ÝSTANBUL / Çengelköy','A','4523'

select * from tbl_Banka
select * from tbl_MusteriBilgi
select * from tbl_MusteriBanka
select*from tbl_MusteriBilgi


--- inner join ile iki tabloyu birleþtirip kullanmak
Select b.BankaAdý,musb.Adý,musb.Soyadý, musb.Email from tbl_MusteriBanka mb 
inner join tbl_MusteriBilgi musb on  mb.MusteriID= musb.ID
inner join tbl_Banka b on  b.ID= mb.BankaID



