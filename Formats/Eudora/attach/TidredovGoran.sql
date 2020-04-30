
CREATE TABLE [dbo].[TidRedovGoro] (
	[Anst] [char] (50) NULL ,
	[Datum] [datetime] NULL ,
	[Kund] [char] (50) NULL ,
	[Deb] [decimal](5, 2) NULL ,
	[EjDeb] [decimal](5, 2) NULL ,
	[Internt] [decimal](5, 2) NULL ,
	[Kurs] [decimal](5, 2) NULL ,
	[Franvaro] [decimal](5, 2) NULL ,
	[TjLedigt] [decimal](5, 2) NULL ,
	[Sem] [decimal](5, 2) NULL ,
	[Vab] [decimal](5, 2) NULL ,
	[Foraldraledig] [decimal](5, 2) NULL ,
	[Bonus] [decimal](5, 2) NULL) 

select * from tidredov

select Deb=sum(deb),Ej_Deb=sum(EjDeb),Internt=sum(Internt),Frånvaro=sum(Franvaro),TjLedigt=sum(TjLedigt),Sem=sum(sem),
Vab=sum(vab),Föräldraledig=sum(Foraldraledig),Bonus=sum(Bonus) from tidredovGoro


