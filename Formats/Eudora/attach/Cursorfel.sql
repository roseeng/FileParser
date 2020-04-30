
ALTER PROCEDURE ge_listaAllaPosterIPeriod_sp
	@Patpnr	 CHAR(10),
	@Utskrkod CHAR(04),
	@InskrDat DATETIME,
	@UtskrDat DATETIME

AS

	DECLARE @KodArGallande	CHAR(01)

	DECLARE @Va_KundId_1 INT
	DECLARE	@InskrivnDat_1 DATETIME
	DECLARE	@PatPnr_1 CHAR(10)
	DECLARE	@UtskrivnDat_1 DATETIME
	DECLARE	@utskrKod_1 CHAR(4)

	DECLARE @Va_KundId_2 INT
	DECLARE	@InskrivnDat_2 DATETIME
	DECLARE	@PatPnr_2 CHAR(10)
	DECLARE	@UtskrivnDat_2 DATETIME
	DECLARE	@utskrKod_2 CHAR(4)

	DECLARE @Tabell_1 VARCHAR(20)
	DECLARE @Tabell_2 VARCHAR(20)


/* Börja med att ta reda på om vi har en utskriftskod som anger att 
vårdperioden fortsätter */
	EXEC ge_KodForFortsattPeriod_sp @Utskrkod, @UtskrDat, @KodArGallande OUTPUT

/* Skapa en temptabell att lägga raderna i */
CREATE TABLE #TmpKund_tb
(Tabell	VARCHAR(20),
	Va_KundId int NOT NULL ,
	AvstGrupp varchar (50) NULL ,
	Fildatum datetime NULL ,
	AvsandarId char (10) NULL ,
	Vardtyp char (2) NULL ,
	Rakningsnr char (8) NULL ,
	Kundnr char (10) NULL ,
	PatNamn char (30) NULL ,
	PatGatuadress char (20) NULL ,
	PatPostnr char (5) NULL ,
	PatPostadress char (15) NULL ,
	InskrivnDat datetime NULL ,
	Namd char (2) NULL ,
	KostnStalle char (3) NULL ,
	BehandlKod char (1) NULL ,
	AntDagar char (4) NULL ,
	Avgift char (10) NULL ,
	Reseersattning char (10) NULL ,
	AnnanBetPnr char (10) NULL ,
	AnnanBetNamn char (30) NULL ,
	AnnanBetGatuadr char (20) NULL ,
	AnnanBetPostNr char (5) NULL ,
	AnnanBetPostAdr char (15) NULL ,
	PatPnr char (10) NULL ,
	UtskrivnDat datetime NULL ,
	AmbulansAvgift char (8) NULL ,
	OppenvardsAvgift char (9) NULL ,
	Avdelningsnamn char (30) NULL ,
	Avdelningstelefon char (12) NULL ,
	Landstingskundnr char (10) NULL ,
	FaktDat datetime NULL ,
	InFilnamn char (20) NULL ,
	HistFilnamn char (20) NULL ,
	FaktOmgang int NULL ,
	utskrKod char (4) NULL ,
	patientKatKod char (4) NULL
)

/* Del 1 */
/* Oavsett utskriftskoden så ska vi kolla om det finns tidiagre poster inom 
samma period */
	DECLARE KundCursor CURSOR
	FOR SELECT Va_KundId,
		InskrivnDat,
		UtskrivnDat,
		utskrKod,
		'va_kund_tb'
	FROM va_kund_tb
	WHERE patpnr = @patPnr
	AND utskrivndat <= @InskrDat
	AND (vardtyp = 'SV' OR vardtyp = 'KV')
	UNION ALL
	SELECT in_KundFelId,
		InskrivnDat,
		UtskrivnDat,
		utskrKod,
  		'in_KundFel_tb'
	FROM in_kundFel_tb
	WHERE patpnr = @patPnr
	AND utskrivndat <= @InskrDat
	AND (vardtyp = 'SV' OR vardtyp = 'KV')
	UNION ALL
	SELECT In_KundId,
		InskrivnDat,
		UtskrivnDat,
		utskrKod,
		'in_Kund_tb'
	FROM in_kund_tb
	WHERE patpnr = @patPnr
	AND utskrivndat <= @InskrDat
	AND (vardtyp = 'SV' OR vardtyp = 'KV')
	ORDER BY InskrivnDat

	OPEN KundCursor

	FETCH NEXT FROM KundCursor
	INTO @Va_KundId_1,
		@InskrivnDat_1,
		@UtskrivnDat_1,
		@utskrKod_1,
		@tabell_1

	/* Bläddra igenom alla posterna och kolla om de hör ihop. */
	WHILE @@FETCH_STATUS = 0
	BEGIN
		FETCH NEXT FROM KundCursor
		INTO @Va_KundId_2,
			@InskrivnDat_2,
			@UtskrivnDat_2,
			@utskrKod_2,
			@Tabell_2

		/* Om det fanns fler rader att hämta */
		IF @@FETCH_STATUS = 0
		BEGIN
			/* Är rad 1 och 2 del av samma vårdperiod ? */
			IF @UtskrivnDat_1 = @InskrivnDat_2
			BEGIN
				/* Har ettan dessutom en gällande utskr-kod så ska den sparas */
				EXEC ge_KodForFortsattPeriod_sp @Utskrkod_1, @UtskrivnDat_1, 
@KodArGallande OUTPUT
				IF @KodArGallande = 'J'
				BEGIN
					IF @Tabell_1 = 'va_kund_tb'
					BEGIN
					INSERT INTO #TmpKund_tb
						SELECT 	@Tabell_1,
							Va_KundId,
							AvstGrupp,
							Fildatum,
							AvsandarId,
							Vardtyp,
							Rakningsnr,
							Kundnr,
							PatNamn,
							PatGatuadress,
							PatPostnr,
							PatPostadress,
							InskrivnDat,
							Namd,
							KostnStalle,
							BehandlKod,
							AntDagar,
							Avgift,
							Reseersattning,
							AnnanBetPnr,
							AnnanBetNamn,
							AnnanBetGatuadr,
							AnnanBetPostNr,
							AnnanBetPostAdr,
							PatPnr,
							UtskrivnDat,
							AmbulansAvgift,
							OppenvardsAvgift,
							Avdelningsnamn,
							Avdelningstelefon,
							Landstingskundnr,
							FaktDat,
							InFilnamn,
							HistFilnamn,
							FaktOmgang,
							utskrKod,
							patientKatKod
						FROM va_kund_tb
						WHERE Va_KundId = @Va_KundId_1
					END
					IF @Tabell_1 = 'in_kund_tb'
					BEGIN
					INSERT INTO #TmpKund_tb
						SELECT 	@Tabell_1,
							in_KundId,
							AvstGrupp,
							Fildatum,
							AvsandarId,
							Vardtyp,
							Rakningsnr,
							Kundnr,
							PatNamn,
							PatGatuadress,
							PatPostnr,
							PatPostadress,
							InskrivnDat,
							Namd,
							KostnStalle,
							BehandlKod,
							AntDagar,
							Avgift,
							Reseersattning,
							AnnanBetPnr,
							AnnanBetNamn,
							AnnanBetGatuadr,
							AnnanBetPostNr,
							AnnanBetPostAdr,
							PatPnr,
							UtskrivnDat,
							AmbulansAvgift,
							OppenvardsAvgift,
							Avdelningsnamn,
							Avdelningstelefon,
							Landstingskundnr,
							NULL,
							InFilnamn,
							HistFilnamn,
							NULL,
							utskrKod,
							patientKatKod
						FROM in_kund_tb
						WHERE in_KundId = @Va_KundId_1
					END
					IF @Tabell_1 = 'in_kundfel_tb'
					BEGIN
					INSERT INTO #TmpKund_tb
						SELECT 	@Tabell_1,
							in_KundfelId,
							AvstGrupp,
							Fildatum,
							AvsandarId,
							Vardtyp,
							Rakningsnr,
							Kundnr,
							PatNamn,
							PatGatuadress,
							PatPostnr,
							PatPostadress,
							InskrivnDat,
							Namd,
							KostnStalle,
							BehandlKod,
							AntDagar,
							Avgift,
							Reseersattning,
							AnnanBetPnr,
							AnnanBetNamn,
							AnnanBetGatuadr,
							AnnanBetPostNr,
							AnnanBetPostAdr,
							PatPnr,
							UtskrivnDat,
							AmbulansAvgift,
							OppenvardsAvgift,
							Avdelningsnamn,
							Avdelningstelefon,
							Landstingskundnr,
							NULL,
							InFilnamn,
							HistFilnamn,
							NULL,
							utskrKod,
							patientKatKod
						FROM in_kundfel_tb
						WHERE in_KundFelId = @Va_KundId_1
					END

				END /* Kod gällande */
			END /* Utskr = Inskr */
			ELSE
			BEGIN
				DELETE FROM #TmpKund_tb
			END

			/* Då tar vi och flyttar 2 -> 1 för vidare jämförelser */
			SET @Va_KundId_1 = @Va_KundId_2
			SET @InskrivnDat_1 = @InskrivnDat_2
			SET @UtskrivnDat_1 = @UtskrivnDat_2
			SET @utskrKod_1	= @utskrKod_2
			SET @Tabell_1 = @Tabell_2
		END /* det gick att hämta post 2 */

		END /* While @@Fetsc... */

/* Slut på loopandet - då återstår bara att jämföra med inparametern */
		/* Det gick inte att hämta en andra post- jämför då med parametrarna */
		IF @UtskrivnDat_1 = @InskrDat
		BEGIN
			/* Har ettan dessutom en gällande utskr-kod så ska den sparas */
			EXEC ge_KodForFortsattPeriod_sp @Utskrkod_1, @UtskrivnDat_1, 
@KodArGallande OUTPUT
			IF @KodArGallande = 'J'
			BEGIN
					IF @Tabell_1 = 'va_kund_tb'
					BEGIN
					INSERT INTO #TmpKund_tb
						SELECT 	@Tabell_1,
							Va_KundId,
							AvstGrupp,
							Fildatum,
							AvsandarId,
							Vardtyp,
							Rakningsnr,
							Kundnr,
							PatNamn,
							PatGatuadress,
							PatPostnr,
							PatPostadress,
							InskrivnDat,
							Namd,
							KostnStalle,
							BehandlKod,
							AntDagar,
							Avgift,
							Reseersattning,
							AnnanBetPnr,
							AnnanBetNamn,
							AnnanBetGatuadr,
							AnnanBetPostNr,
							AnnanBetPostAdr,
							PatPnr,
							UtskrivnDat,
							AmbulansAvgift,
							OppenvardsAvgift,
							Avdelningsnamn,
							Avdelningstelefon,
							Landstingskundnr,
							FaktDat,
							InFilnamn,
							HistFilnamn,
							FaktOmgang,
							utskrKod,
							patientKatKod
						FROM va_kund_tb
						WHERE Va_KundId = @Va_KundId_1
					END
					IF @Tabell_1 = 'in_kund_tb'
					BEGIN
					INSERT INTO #TmpKund_tb
						SELECT 	@Tabell_1,
							in_KundId,
							AvstGrupp,
							Fildatum,
							AvsandarId,
							Vardtyp,
							Rakningsnr,
							Kundnr,
							PatNamn,
							PatGatuadress,
							PatPostnr,
							PatPostadress,
							InskrivnDat,
							Namd,
							KostnStalle,
							BehandlKod,
							AntDagar,
							Avgift,
							Reseersattning,
							AnnanBetPnr,
							AnnanBetNamn,
							AnnanBetGatuadr,
							AnnanBetPostNr,
							AnnanBetPostAdr,
							PatPnr,
							UtskrivnDat,
							AmbulansAvgift,
							OppenvardsAvgift,
							Avdelningsnamn,
							Avdelningstelefon,
							Landstingskundnr,
							NULL,
							InFilnamn,
							HistFilnamn,
							NULL,
							utskrKod,
							patientKatKod
						FROM in_kund_tb
						WHERE in_KundId = @Va_KundId_1
					END
					IF @Tabell_1 = 'in_kundfel_tb'
					BEGIN
					INSERT INTO #TmpKund_tb
						SELECT 	@Tabell_1,
							in_KundfelId,
							AvstGrupp,
							Fildatum,
							AvsandarId,
							Vardtyp,
							Rakningsnr,
							Kundnr,
							PatNamn,
							PatGatuadress,
							PatPostnr,
							PatPostadress,
							InskrivnDat,
							Namd,
							KostnStalle,
							BehandlKod,
							AntDagar,
							Avgift,
							Reseersattning,
							AnnanBetPnr,
							AnnanBetNamn,
							AnnanBetGatuadr,
							AnnanBetPostNr,
							AnnanBetPostAdr,
							PatPnr,
							UtskrivnDat,
							AmbulansAvgift,
							OppenvardsAvgift,
							Avdelningsnamn,
							Avdelningstelefon,
							Landstingskundnr,
							NULL,
							InFilnamn,
							HistFilnamn,
							NULL,
							utskrKod,
							patientKatKod
						FROM in_kundfel_tb
						WHERE in_KundFelId = @Va_KundId_1
					END
				END /* Kod gällande */
			END /* Utskr = Inskr */
			ELSE
			BEGIN
				DELETE FROM #TmpKund_tb
			END



/* Städa */
	CLOSE KundCursor
	DEALLOCATE KundCursor

/* Del 2 */

/* Om posten vi håller på med inte innehåller någon giltig utskrivningskod - 
så är vi klara */
	EXEC ge_KodForFortsattPeriod_sp @Utskrkod, @UtskrDat, @KodArGallande OUTPUT
	IF @KodArGallande = 'N'
	BEGIN
		SELECT * FROM #TmpKund_tb
		CLOSE KundCursor2
		DEALLOCATE KundCursor2

		RETURN
	END

/* Då ska vi fortsätta med att leta efterföljande delar av perioden */
	DECLARE KundCursor2 CURSOR
	FOR SELECT Va_KundId,
		InskrivnDat,
		UtskrivnDat,
		utskrKod,
		'va_kund_tb'
	FROM va_kund_tb
	WHERE patpnr = @patPnr
	AND inskrivndat >= @utskrdat
	AND (vardtyp = 'SV' OR vardtyp = 'KV')
	UNION ALL
	SELECT in_KundId,
		InskrivnDat,
		UtskrivnDat,
		utskrKod,
		'in_kund_tb'
	FROM in_kund_tb
	WHERE patpnr = @patPnr
	AND inskrivndat >= @utskrdat
	AND (vardtyp = 'SV' OR vardtyp = 'KV')
	UNION ALL
	SELECT in_KundFelId,
		InskrivnDat,
		UtskrivnDat,
		utskrKod,
		'in_kundfel_tb'
	FROM in_kundfel_tb
	WHERE patpnr = @patPnr
	AND inskrivndat >= @utskrdat
	AND (vardtyp = 'SV' OR vardtyp = 'KV')
	ORDER BY InskrivnDat

	/* Lyft över parametrarna till värdeuppsättning 1 */
	SET @InskrivnDat_1 = @InskrDat
	SET @UtskrivnDat_1 = @UtskrDat
	SET @utskrKod_1 = @Utskrkod

	OPEN KundCursor2

	FETCH NEXT FROM KundCursor2
	INTO @Va_KundId_2,
		@InskrivnDat_2,
		@UtskrivnDat_2,
		@utskrKod_2,
		@Tabell_2

	/* Bläddra igenom alla posterna och kolla om de hör ihop. */
	WHILE @@FETCH_STATUS = 0
	BEGIN
		/* Är rad 1 och 2 del av samma vårdperiod ? */
			IF @UtskrivnDat_1 = @InskrivnDat_2
			BEGIN
		IF @Tabell_2 = 'va_kund_tb'
					BEGIN
					INSERT INTO #TmpKund_tb
						SELECT 	@Tabell_2,
							Va_KundId,
							AvstGrupp,
							Fildatum,
							AvsandarId,
							Vardtyp,
							Rakningsnr,
							Kundnr,
							PatNamn,
							PatGatuadress,
							PatPostnr,
							PatPostadress,
							InskrivnDat,
							Namd,
							KostnStalle,
							BehandlKod,
							AntDagar,
							Avgift,
							Reseersattning,
							AnnanBetPnr,
							AnnanBetNamn,
							AnnanBetGatuadr,
							AnnanBetPostNr,
							AnnanBetPostAdr,
							PatPnr,
							UtskrivnDat,
							AmbulansAvgift,
							OppenvardsAvgift,
							Avdelningsnamn,
							Avdelningstelefon,
							Landstingskundnr,
							FaktDat,
							InFilnamn,
							HistFilnamn,
							FaktOmgang,
							utskrKod,
							patientKatKod
						FROM va_kund_tb
						WHERE Va_KundId = @Va_KundId_2
					END
					IF @Tabell_2 = 'in_kund_tb'
					BEGIN
					INSERT INTO #TmpKund_tb
						SELECT 	@Tabell_2,
							in_KundId,
							AvstGrupp,
							Fildatum,
							AvsandarId,
							Vardtyp,
							Rakningsnr,
							Kundnr,
							PatNamn,
							PatGatuadress,
							PatPostnr,
							PatPostadress,
							InskrivnDat,
							Namd,
							KostnStalle,
							BehandlKod,
							AntDagar,
							Avgift,
							Reseersattning,
							AnnanBetPnr,
							AnnanBetNamn,
							AnnanBetGatuadr,
							AnnanBetPostNr,
							AnnanBetPostAdr,
							PatPnr,
							UtskrivnDat,
							AmbulansAvgift,
							OppenvardsAvgift,
							Avdelningsnamn,
							Avdelningstelefon,
							Landstingskundnr,
							NULL,
							InFilnamn,
							HistFilnamn,
							NULL,
							utskrKod,
							patientKatKod
						FROM in_kund_tb
						WHERE in_KundId = @Va_KundId_2
					END
					IF @Tabell_2 = 'in_kundfel_tb'
					BEGIN
					INSERT INTO #TmpKund_tb
						SELECT 	@Tabell_2,
							in_KundfelId,
							AvstGrupp,
							Fildatum,
							AvsandarId,
							Vardtyp,
							Rakningsnr,
							Kundnr,
							PatNamn,
							PatGatuadress,
							PatPostnr,
							PatPostadress,
							InskrivnDat,
							Namd,
							KostnStalle,
							BehandlKod,
							AntDagar,
							Avgift,
							Reseersattning,
							AnnanBetPnr,
							AnnanBetNamn,
							AnnanBetGatuadr,
							AnnanBetPostNr,
							AnnanBetPostAdr,
							PatPnr,
							UtskrivnDat,
							AmbulansAvgift,
							OppenvardsAvgift,
							Avdelningsnamn,
							Avdelningstelefon,
							Landstingskundnr,
							NULL,
							InFilnamn,
							HistFilnamn,
							NULL,
							utskrKod,
							patientKatKod
						FROM in_kundfel_tb
						WHERE in_KundFelId = @Va_KundId_2
					END
			END /* Utskr = Inskr */
			ELSE
			BEGIN
				SELECT * FROM #TmpKund_tb
				CLOSE KundCursor2
				DEALLOCATE KundCursor2

				RETURN
			END

			/* Då tar vi och flyttar 2 -> 1 för vidare jämförelser */
			SET @Va_KundId_1 = @Va_KundId_2
			SET @InskrivnDat_1 = @InskrivnDat_2
			SET @UtskrivnDat_1 = @UtskrivnDat_2
			SET @utskrKod_1	= @utskrKod_2
			SET @Tabell_1 = @Tabell_2


		IF @@FETCH_STATUS = 0
			FETCH NEXT FROM KundCursor2
			INTO @Va_KundId_2,
			@InskrivnDat_2,
			@UtskrivnDat_2,
			@utskrKod_2,
			@Tabell_2

		END /* While @@Fetsc... */

/*----------------------------------*/
	select * from #TmpKund_tb


	CLOSE KundCursor2
	DEALLOCATE KundCursor2



GO
/******************************************************/

ALTER PROCEDURE ge_listaVAPosterIPeriod_sp
	@Patpnr	 CHAR(10),
	@Utskrkod CHAR(04),
	@InskrDat DATETIME,
	@UtskrDat DATETIME
AS

	DECLARE @KodArGallande	CHAR(01)

	DECLARE @Va_KundId_1 INT
	DECLARE	@InskrivnDat_1 DATETIME
	DECLARE	@PatPnr_1 CHAR(10)
	DECLARE	@UtskrivnDat_1 DATETIME
	DECLARE	@utskrKod_1 CHAR(4)

	DECLARE @Va_KundId_2 INT
	DECLARE	@InskrivnDat_2 DATETIME
	DECLARE	@PatPnr_2 CHAR(10)
	DECLARE	@UtskrivnDat_2 DATETIME
	DECLARE	@utskrKod_2 CHAR(4)


/* Börja med att ta reda på om vi har en utskriftskod som anger att 
vårdperioden fortsätter */
	EXEC ge_KodForFortsattPeriod_sp @Utskrkod, @UtskrDat, @KodArGallande OUTPUT

/* Skapa en temptabell att lägga raderna i */
CREATE TABLE #TmpKund_tb
(Va_KundId int NOT NULL ,
	AvstGrupp varchar (50) NULL ,
	Fildatum datetime NULL ,
	AvsandarId char (10) NULL ,
	Vardtyp char (2) NULL ,
	Rakningsnr char (8) NULL ,
	Kundnr char (10) NULL ,
	PatNamn char (30) NULL ,
	PatGatuadress char (20) NULL ,
	PatPostnr char (5) NULL ,
	PatPostadress char (15) NULL ,
	InskrivnDat datetime NULL ,
	Namd char (2) NULL ,
	KostnStalle char (3) NULL ,
	BehandlKod char (1) NULL ,
	AntDagar char (4) NULL ,
	Avgift char (10) NULL ,
	Reseersattning char (10) NULL ,
	AnnanBetPnr char (10) NULL ,
	AnnanBetNamn char (30) NULL ,
	AnnanBetGatuadr char (20) NULL ,
	AnnanBetPostNr char (5) NULL ,
	AnnanBetPostAdr char (15) NULL ,
	PatPnr char (10) NULL ,
	UtskrivnDat datetime NULL ,
	AmbulansAvgift char (8) NULL ,
	OppenvardsAvgift char (9) NULL ,
	Avdelningsnamn char (30) NULL ,
	Avdelningstelefon char (12) NULL ,
	Landstingskundnr char (10) NULL ,
	FaktDat datetime NULL ,
	InFilnamn char (20) NULL ,
	HistFilnamn char (20) NULL ,
	FaktOmgang int NULL ,
	utskrKod char (4) NULL ,
	patientKatKod char (4) NULL
)

/* Del 1 */
/* Oavsett utskriftskoden så ska vi kolla om det finns tidiagre poster inom 
samma period */
	DECLARE KundCursor_b CURSOR
	FOR SELECT Va_KundId,
		InskrivnDat,
		UtskrivnDat,
		utskrKod
	FROM va_kund_tb
	WHERE patpnr = @patPnr
	AND utskrivndat <= @InskrDat
	AND (vardtyp = 'SV' OR vardtyp = 'KV')
	ORDER BY InskrivnDat

	OPEN KundCursor_b

	FETCH NEXT FROM KundCursor_b
	INTO @Va_KundId_1,
		@InskrivnDat_1,
		@UtskrivnDat_1,
		@utskrKod_1

	/* Bläddra igenom alla posterna och kolla om de hör ihop. */
	WHILE @@FETCH_STATUS = 0
	BEGIN
		FETCH NEXT FROM KundCursor_b
		INTO @Va_KundId_2,
			@InskrivnDat_2,
			@UtskrivnDat_2,
			@utskrKod_2

		/* Om det fanns fler rader att hämta */
		IF @@FETCH_STATUS = 0
		BEGIN
			/* Är rad 1 och 2 del av samma vårdperiod ? */
			IF @UtskrivnDat_1 = @InskrivnDat_2
			BEGIN
				/* Har ettan dessutom en gällande utskr-kod så ska den sparas */
				EXEC ge_KodForFortsattPeriod_sp @Utskrkod_1, @UtskrivnDat_1, 
@KodArGallande OUTPUT
				IF @KodArGallande = 'J'
				BEGIN
					INSERT INTO #TmpKund_tb
						SELECT Va_KundId,
							AvstGrupp,
							Fildatum,
							AvsandarId,
							Vardtyp,
							Rakningsnr,
							Kundnr,
							PatNamn,
							PatGatuadress,
							PatPostnr,
							PatPostadress,
							InskrivnDat,
							Namd,
							KostnStalle,
							BehandlKod,
							AntDagar,
							Avgift,
							Reseersattning,
							AnnanBetPnr,
							AnnanBetNamn,
							AnnanBetGatuadr,
							AnnanBetPostNr,
							AnnanBetPostAdr,
							PatPnr,
							UtskrivnDat,
							AmbulansAvgift,
							OppenvardsAvgift,
							Avdelningsnamn,
							Avdelningstelefon,
							Landstingskundnr,
							FaktDat,
							InFilnamn,
							HistFilnamn,
							FaktOmgang,
							utskrKod,
							patientKatKod
						FROM va_kund_tb
						WHERE Va_KundId = @Va_KundId_1
				END /* Kod gällande */
			END /* Utskr = Inskr */
			ELSE
			BEGIN
				DELETE FROM #TmpKund_tb
			END

			/* Då tar vi och flyttar 2 -> 1 för vidare jämförelser */
			SET @Va_KundId_1 = @Va_KundId_2
			SET @InskrivnDat_1 = @InskrivnDat_2
			SET @UtskrivnDat_1 = @UtskrivnDat_2
			SET @utskrKod_1	= @utskrKod_2
		END /* det gick att hämta post 2 */

		/*IF @@FETCH_STATUS = 0
			FETCH NEXT FROM KundCursor_b
			INTO @Va_KundId_2,
			@InskrivnDat_2,
			@UtskrivnDat_2,
			@utskrKod_2*/

		END /* While @@Fetsc... */

/* Slut på loopandet - då återstår bara att jämföra med inparametern */
		/* Det gick inte att hämta en andra post- jämför då med parametrarna */
		IF @UtskrivnDat_1 = @InskrDat
		BEGIN
			/* Har ettan dessutom en gällande utskr-kod så ska den sparas */
			EXEC ge_KodForFortsattPeriod_sp @Utskrkod_1, @UtskrivnDat_1, 
@KodArGallande OUTPUT
			IF @KodArGallande = 'J'
			BEGIN
				INSERT INTO #TmpKund_tb
				SELECT Va_KundId,
					AvstGrupp,
						Fildatum,
							AvsandarId,
							Vardtyp,
							Rakningsnr,
							Kundnr,
							PatNamn,
							PatGatuadress,
							PatPostnr,
							PatPostadress,
							InskrivnDat,
							Namd,
							KostnStalle,
							BehandlKod,
							AntDagar,
							Avgift,
							Reseersattning,
							AnnanBetPnr,
							AnnanBetNamn,
							AnnanBetGatuadr,
							AnnanBetPostNr,
							AnnanBetPostAdr,
							PatPnr,
							UtskrivnDat,
							AmbulansAvgift,
							OppenvardsAvgift,
							Avdelningsnamn,
							Avdelningstelefon,
							Landstingskundnr,
							FaktDat,
							InFilnamn,
							HistFilnamn,
							FaktOmgang,
							utskrKod,
							patientKatKod
						FROM va_kund_tb
						WHERE Va_KundId = @Va_KundId_1
				END /* Kod gällande */
			END /* Utskr = Inskr */
			ELSE
			BEGIN
				DELETE FROM #TmpKund_tb
			END



/* Städa */
	CLOSE KundCursor_b
	DEALLOCATE KundCursor_b

/* Del 2 */

/* Om posten vi håller på med inte innehåller någon giltig utskrivningskod - 
så är vi klara */
	EXEC ge_KodForFortsattPeriod_sp @Utskrkod, @UtskrDat, @KodArGallande OUTPUT
	IF @KodArGallande = 'N'
	BEGIN
		SELECT * FROM #TmpKund_tb
		CLOSE KundCursor_b
		DEALLOCATE KundCursor_b
		RETURN
	END

/* Då ska vi fortsätta med att leta efterföljande delar av perioden */
	DECLARE KundCursor2 CURSOR
	FOR SELECT Va_KundId,
		InskrivnDat,
		UtskrivnDat,
		utskrKod
	FROM va_kund_tb
	WHERE patpnr = @patPnr
	AND inskrivndat >= @utskrdat
	AND (vardtyp = 'SV' OR vardtyp = 'KV')
	ORDER BY InskrivnDat

	/* Lyft över parametrarna till värdeuppsättning 1 */
	SET @InskrivnDat_1 = @InskrDat
	SET @UtskrivnDat_1 = @UtskrDat
	SET @utskrKod_1 = @Utskrkod

	OPEN KundCursor2

	FETCH NEXT FROM KundCursor2
	INTO @Va_KundId_2,
		@InskrivnDat_2,
		@UtskrivnDat_2,
		@utskrKod_2

	/* Bläddra igenom alla posterna och kolla om de hör ihop. */
	WHILE @@FETCH_STATUS = 0
	BEGIN
		/* Är rad 1 och 2 del av samma vårdperiod ? */
			IF @UtskrivnDat_1 = @InskrivnDat_2
			BEGIN
				INSERT INTO #TmpKund_tb
					SELECT Va_KundId,
							AvstGrupp,
							Fildatum,
							AvsandarId,
							Vardtyp,
							Rakningsnr,
							Kundnr,
							PatNamn,
							PatGatuadress,
							PatPostnr,
							PatPostadress,
							InskrivnDat,
							Namd,
							KostnStalle,
							BehandlKod,
							AntDagar,
							Avgift,
							Reseersattning,
							AnnanBetPnr,
							AnnanBetNamn,
							AnnanBetGatuadr,
							AnnanBetPostNr,
							AnnanBetPostAdr,
							PatPnr,
							UtskrivnDat,
							AmbulansAvgift,
							OppenvardsAvgift,
							Avdelningsnamn,
							Avdelningstelefon,
							Landstingskundnr,
							FaktDat,
							InFilnamn,
							HistFilnamn,
							FaktOmgang,
							utskrKod,
							patientKatKod
						FROM va_kund_tb
						WHERE Va_KundId = @Va_KundId_2
			END /* Utskr = Inskr */
			ELSE
			BEGIN
				SELECT * FROM #TmpKund_tb
				CLOSE KundCursor_b
				DEALLOCATE KundCursor_b
				RETURN
			END

			/* Då tar vi och flyttar 2 -> 1 för vidare jämförelser */
			SET @Va_KundId_1 = @Va_KundId_2
			SET @InskrivnDat_1 = @InskrivnDat_2
			SET @UtskrivnDat_1 = @UtskrivnDat_2
			SET @utskrKod_1	= @utskrKod_2


		IF @@FETCH_STATUS = 0
			FETCH NEXT FROM KundCursor2
			INTO @Va_KundId_2,
			@InskrivnDat_2,
			@UtskrivnDat_2,
			@utskrKod_2

		END /* While @@Fetsc... */

/*----------------------------------*/
	select * from #TmpKund_tb


	CLOSE KundCursor2
	DEALLOCATE KundCursor2



GO
