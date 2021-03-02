Attribute VB_Name = "OGGETTI_FORMS_Mdl02_Esempio_CreaUnaForm"
Option Compare Database

'Esempio di oggetto Form e di insieme Forms _
Nell 'esempio riportato di seguito viene indicato _
come creare una nuova maschera e impostare determinate proprietà.

Sub NuovaMaschera()
    Dim frm As Form

    ' Crea nuova maschera. ed associo il recordsource, manca la creazione di un txt e l'associazione
    Set frm = CreateForm
    ' Imposta proprietà della maschera.
    With frm
        .RecordSource = "MSys_DF02_TIPO_OGGETTO"
        .Caption = "Maschera Prodotti"
        .ScrollBars = 0
        .NavigationButtons = True
    End With
    Dim txt As TextBox
    Set txt = Create
    ' Ripristina maschera.
    DoCmd.Restore
End Sub



'Esempi di metodi CreateControl e CreateReportControl
'Nell 'esempio riportato di seguito viene creata dapprima una nuova maschera basata su una tabella Ordini. Quindi viene utilizzato il metodo CreateControl per creare un controllo di una casella di testo e un controllo di etichetta associato sulla maschera.
'//libreria ----> Metodi CreateControl, CreateReportControl
'//modello
Sub NuoviControlli()
    Dim frm As Form
    Dim ctlLabel As Control, ctlText As Control
    Dim intDataX As Integer, intDataY As Integer
    Dim intLabelX As Integer, intLabelY As Integer
    

    ' Crea una nuova maschera con la tabella Ordini come origine dei record.
    Set frm = CreateForm
    frm.RecordSource = "MSys_DF02_TIPO_OGGETTO"
    ' Imposta i valori di posizione dei nuovi controlli.
    intLabelX = 100
    intLabelY = 100
    intDataX = 2000
    intDataY = 100
    '//modello _    1               2               3           4           5           6          7        8        9 _
     CreateControl(nomemaschera, tipocontrollo[, sezione[, principale[, nomecolonna[, sinistra[, alto[, larghezza[, altezza]]]]]]])
    ' Crea una casella di testo non associata di dimensione predefinita nella sezione dettagli.
    Set ctlText = CreateControl(frm.Name, _
                                acTextBox, _
                                , _
                                "", _
                                "TIPOGGETTO_s", _
                                intDataX, _
                                intDataY, _
                                1000, _
                                200)    '//mancano i parametri 8+9
    ' Crea un controllo etichetta secondaria per la casella di testo.
    Set ctlLabel = CreateControl(frm.Name, acLabel, , _
         ctlText.Name, "NuovaEtichetta", intLabelX, intLabelY)
    ' Ripristina la maschera.
    DoCmd.Restore
End Sub

