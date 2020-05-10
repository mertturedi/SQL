select * from V_tbl_MusteriBankaHesapBilgi

begin tran HavaleYap
	declare @GidenMusteriId int
	set @GidenMusteriId = (select Top(1) MusteriID from tbl_Hesap where HesapNo = '145843' )
	declare @GidenHesapId int
	set @GidenHesapId = (select Top(1) Id from tbl_Hesap where HesapNo = '145843' )
	-- Para çýkmasýný ekliyoruz...
	insert into tbl_HesapHareket(GelenPara,HesapID,ÝþlemTarihi,MusteriID,GidenPara)
	values(0,@GidenHesapId,GETDATE(),@GidenMusteriId,2000)
	
	--save tran HavaleYap -- kayýt noktasý

	declare @Durum bit

	exec usp_HavaleYap '145843','145956',2000,@Durum output

	select * from tbl_Hesap

	if(@Durum =0)
	begin
		rollback tran HavaleYap
	end
	else
	begin
		declare @GelenMusteriId int
		set @GelenMusteriId = (select Top(1) MusteriID from tbl_Hesap where HesapNo = '145956' )
		declare @GelenHesapId int
		set @GelenHesapId = (select Top(1) Id from tbl_Hesap where HesapNo = '145956' )
		-- Para Hesaba girmesi...
		insert into tbl_HesapHareket(GelenPara,HesapID,ÝþlemTarihi,MusteriID,GidenPara)
		values(2000,@GelenHesapId,GETDATE(),@GelenMusteriId,0)
	end
commit tran HavaleYap


select * from V_tbl_MusteriBankaHesapBilgi


		

select * from V_tbl_MusteriKrediBilgi
select * from V_tbl_MusteriBankaHesapBilgiID
select * from tbl_MusteriBilgi
select * from tbl_HesapHareket
