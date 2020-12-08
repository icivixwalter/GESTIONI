
@REM 					LE SOSTITUZIONI GENERALI
@REM @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@REN c:\CASA\PROGRAMMI\GITHUB\GESTIONI\ZIP_MODELLO_SALVATAGGI\ZIP_RAR.BAT
@REM  		Disco e codice Disco
@REM .......................................................
@REM -----> 	C:
@REM -----> 	_C
@REM .......................................................


@REM		directory DA CAMBIARE - PARTENZA
@REM .......................................................
@REM ----->	c:\CASA\PROGRAMMI\GITHUB\GESTIONI\
@REM .......................................................


@REM 		Il nome di tutti i file di archivio dei dati - DA CAMBIARE
@REM .......................................................
@REM ----->	ZIP_MODELLO_SALVATAGGI


@REM 		Il file di archivio dei dati
@REM .......................................................
@REM ----->	ZIP_MODELLO_SALVATAGGI.RAR


@REM 					LE SOSTITUZIONI GENERALI *** FINE ***
@REM @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

ECHO OFF


DIR W *.* 

:---------------imposta i file da salvare su diverse variabili (ATTENZIONE AGLI SPAZI DOPO VARIABILE=*.XLS ... NO CI DEVONO ESSERE
@REM								ERRATO VARIABILE e spazio es. --> TipoFile_Office_S =*.MDB)
@SET TipoFile_TEXT_S=*.AUX *GZ *.LOG *.OUT *.TEX *.Tws
@SET TipoFile_JAVA_S=*.CLASS *.EXE *HTLM *.IML *.JAR *.JAVA *.LOG *.MF *.LNK *.XML
@SET TipoFile_TXT_S=*.TEX *.TWS *.TXT *BAT
@SET TipoFile_Office_S=*.MDB *.XLS *.PDF



:------------------------CONCATENA controlla ED ESEGUI
SET TIPO_FILE_S=%TipoFile_TEXT_S% %TipoFile_JAVA_S% %TipoFile_TXT_S% %TipoFile_Office_S%

ECHO.	
ECHO. "--------------------------------------------------"
ECHO. "ELENCO FILE CON ESTENSIONE DA SALVARE "
ECHO. %TIPO_FILE_S%
ECHO DIR  %TIPO_FILE_S%

@REM c:\CASA\RAR.EXE U -r -ac ZIP_MODELLO_SALVATAGGI.RAR %TIPO_FILE_S%



:------------------------------ SALVO TUTTI I FILE NELLE SOTTOCARTELLE /S +  
@rem  /A:-d mostra solo i file    /O:n  mostra i file in ordine alfabetico   /W  per vedere l’elenco formato solo dai nomi dei file 

@REM DIR /S /A:-D /O:n /W %TIPO_FILE_S%> ZIP_SALVATAGGI_ARCHIVI_ARCHIVIO_TIPO_FILE_SALVATI.TXT


DIR /S %FILE_S% > zip__________________________________________________________________________ZZ.txt





	
	
@ECHO "--------------------------> USCITA DALLA PROCEDURA "

	
	@echo.
	@echo."=================================================================="
	@echo."			MSG - EXIT_PROCEDURA "
	@echo.
	@echo."ATTENZIONE '!!!' USCITA DALLA PROCEDURA : - USCITA - "			
	@echo."=================================================================="

	
		@REM 01)
		@REM sospensione per 1 secondo con crononometro 
		@REM ---->	timeout /t 2 /nobreak > NUL
		@REM ---->	
		@TIMEOUT /T 2 /NOBREAK



@REM			SOSPENSIONE *** FINE ***
@REM -----------------------------------------------------------------------------------------


@REM 			INDIVIDUA_ANNO_CORRENTE *** FINE ***
@REM *************************************************************************************************************************











@REM 					LE SOSTITUZIONI GENERALI *** FINE ***
@REM @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@



@REM				PARAMETRI DOSE CON VARI ESEMPI DI COMANDO 
@REM *************************************************************************************************************************

GOTO NoteDos


	le opzioni principali sono: 
	/p per vedere l’elenco a schermate 
	/w per vedere l’elenco formato solo dai nomi dei file 
	/a:h mostra i file nascosti 
	/a:s mostra i file di sistema 
	/a:d mostra solo le subdirectory 
	/a:-d mostra solo i file 
	/o:n mostra in ordine alfabetico 
	/o:-n mostra in ordine alfabetico inverso 
	/o:d mostra in ordine di data 
	/o:-d mostra in ordine di data inverso 
	/o:s mostra in ordine di grandezza 
	/o:-s mostra in ordine di grandezza inverso 
	/s mostra tutto il disco 
	>prn stampa l’elenco 
		Esempio: 
		C:\> DIR C:\LETTERE\ROSSI /a:-d/o:n >prn

		stampa l’elenco, in ordine alfabetico, di tutti i file contenuti nella 
		subdirectory \LETTERE\ROSSI, omettendo i nomi delle eventuali subdirectory presenti. 




		@REM DIR ORDINAMENTO_ALFABETICO_DECRESCENTE_PER_DATA_DI_CREAZIONE
		@REM ------------------------------------------------------------------------------------------- 
		@REM Sintassi 	DIR  [unità:][percorso][nomefile] [/P] [/W] [/O[[:]ordinamento]] [/S]
		@REM      	[/B] [/L] [/V]


		@REM  /A          Visualizza i file con gli attributi specificati.
		@REM  attributo	a:-d  (-d) = non le directory
		@REM		-h = non i file nascosti
		@REM /O		 Elenca file ordinandoli.
		@REM attributo	o:-n (-n) = escluso ordine alfabetico
		@REM /T		Controlla campo data visualizzato o utilizzato per ordinare.
		@REM attributo   t:c (:c)= ordina per creazione


			@REM ORDINA tutti i file escluso le directory ed i file nascosti in ordine alfabetico
			@REM decrescente e per data di creazione e salva nel file di testo.
			dir "c:\GESTIONI\GESTIONE_LLPP\02_SCANNER\" /a:-d -h /o:-n /t:c >>DOS_DIR_N01.txt

		@REM DIR ORDINAMENTO_ALFABETICO_DECRESCENTE_PER_DATA_DI_CREAZIONE *** fine ***
		@REM ----------------------------------------------------





		@REM DOS STRINGHE CONCATENA
		@REM ----------------------------------------------------

			:-------------------------------imposto le variabili set
			set str1="Hello"
			set str2="World"
			set str3= "1"

			:-------------------------------unisco le stringhe su una variabile 
			set "str3=%str1% %str3% %str2%"
			set "str4=%str1% %str2%"

			@REM qui scrivo str1 + la parola dos  + str2
			set "str1=%str1% DOS %str2%"

			:-------------------------------controllo concatenamento
			echo "str3 concatenata ->" %str3%
			echo "str4 concatenata ->" %str4%
			echo "str1 concatenata ->" %str1%




		@REM DOS STRINGHE CONCATENA	*** fine ***
		@REM ----------------------------------------------------





:NoteDos

@REM *************************************************************************************************************************
