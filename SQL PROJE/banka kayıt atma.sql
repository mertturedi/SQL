--- bankaya kay�t atma
select * from tbl_Banka

alter PROCEDURE usp_BankaKay�t
       
       @BankaAd� nvarchar(50)
       
AS
BEGIN
     
     
    
       INSERT INTO tbl_Banka
              (BankaAd�)
       VALUES
              (@BankaAd�)
END

exec usp_BankaKay�t 'AnadoluBank'