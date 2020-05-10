--- bankaya kayýt atma
select * from tbl_Banka

alter PROCEDURE usp_BankaKayýt
       
       @BankaAdý nvarchar(50)
       
AS
BEGIN
     
     
    
       INSERT INTO tbl_Banka
              (BankaAdý)
       VALUES
              (@BankaAdý)
END

exec usp_BankaKayýt 'AnadoluBank'