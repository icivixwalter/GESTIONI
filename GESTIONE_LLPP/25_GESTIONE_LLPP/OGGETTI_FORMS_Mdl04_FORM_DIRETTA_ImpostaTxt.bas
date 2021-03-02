Attribute VB_Name = "OGGETTI_FORMS_Mdl04_FORM_DIRETTA_ImpostaTxt"
Option Compare Database


'//IMPOSTA LA CASELLA TXT = la form deve essere aperta, si può fare riferimento direttamente _
            alla form aperta mediante la variabile oggetto di tipo Form e direttamente alla _
            casella di testo mediante la variabile di tipo Control ctl; e dall'esterno si _
            può impostare il valore della casella di testo con l'assegnazione.
Private Sub ImpostaCasellaTXT()


'//QUALIFICA LA FORM PRINCIPALE ITERARE
'//===================================================================================================================//
'//Note:  vengono esaminati i controlli e le sottoform conseguenti
    '//Le variabili della form e di controlli
    Dim frm As Form
    Dim ctl As Control
    Dim Bool1 As Boolean
    
        
  
        '//CODICE----------->CONTROLLO_OGGETTO_FORM_LaFormAPERTA.Salvataggio_ATTIVITA.Attivazione
        '//---------------------------------------------------------------------------------//
        '//CLASSE_OSPITE        : CLASSE_GESTIONE_OGGETTI_DATABASE
        '//PARAMETRI            : stringa che rappresenta il nome della form.
        '//RESTITUISCE          : bool True se la form è aperta
        
                '//LE VARIABILI
                '--->                    Dim par_sxNameForm   As String                      '//La variabile della form passato come parametro

                '1) ISTANZIO LA CLASSE
                '........................................................
                        
                'ISTANZIO LA CLASSE CLASSE_GESTIONE_OGGETTI_DATABASE
                'Assegno e creo l'oggetto di classe
                '--->
                        Dim MyCls_CLASSE_GESTIONE_OGGETTI_DATABASE As CLASSE_GESTIONE_OGGETTI_DATABASE
                '--->
                        Set MyCls_CLASSE_GESTIONE_OGGETTI_DATABASE = New CLASSE_GESTIONE_OGGETTI_DATABASE
                    
                    
                
                    'CONTROLLO SE LA FORM E' APERTA
                    'Passo come parametro la stringa nome form e ritora True se è aperta
                     '--->                            par_sxNameForm = Str1
                     '--->
                    Bool1 = MyCls_CLASSE_GESTIONE_OGGETTI_DATABASE.Controlla_FormGESTIONE_APERTA("MODELLO_Frm01_S12_01_SOTTO_FORM_A_SCHEDE_H15_L35_NoButton")
                

                    '--->
                    Set MyCls_CLASSE_GESTIONE_OGGETTI_DATABASE = Nothing

                    If Bool1 = False Then
                                MsgBox "ATTENZIONE LA FORM NON E' APERTA"
                            Exit Sub

                    End If

        '//---------------------------------------------------------------------------------//

  '//IMPOSTO GLI OGGETTI - Dagli oggetti Oggetto form e clt puo fare riferimento diretto alla form aperta e alla _
             CASELLA DI TESTO valorizzarla ed attivare il requery della form
   
    '//IMPOSTO GLI OGGETTI - Dagli oggetti Oggetto form e clt puo fare riferimento diretto alla form aperta e alla _
             CASELLA DI TESTO valorizzarla ed attivare il requery della form
    Set frm = Forms![MODELLO_Frm01_S12_01_SOTTO_FORM_A_SCHEDE_H15_L35_NoButton]


    'Bool1 = application.Forms.Application

    Set ctl = frm.[TXT_01]
        '//Imposto il valore della casella di testo
        ctl.Value = "MODULES"
                '//ctl.statusBarTex = "TESTO DELLA BARRA"      '//Per applicarlo occorre la form in visualizzatura struttura.
        frm.Requery


    ' Elenca insieme Controls.
    For Each ctl In frm.Controls
        ' Verifica se il controllo è una casella di testo.
        Debug.Print
        Debug.Print Vv1


        '// LE SOTTOFORM
        '// acTextBox = 112 è una sottoform = schende nella sottoform sottostante.
        '//-------------------------------------------------------------------------//

                If ctl.ControlType = acSubform Then
                        With ctl
                            '//OGGETTO sottoform
                            Debug.Print
                            Debug.Print "   LA SOTTOFORM"
                            Debug.Print "......................................."
                                Debug.Print " La sottoform"
                                Debug.Print " .ControlType      ---------> " & .ControlType
                                Debug.Print " .ControlName      ---------> " & .ControlName
                                
                                '//PER ESTRARRE le proprieta della sottoform occorre applicare _
                                    la qualificazione .form.Recordsource
                                Debug.Print "CTL.RecordSource: " & ctl.Form.RecordSource
                                
                                '//esempio di attivazione del filtro nella sottoform
                                '//--------------------------------------------------------//
                                Debug.Print "il filtro della form: " & ctl.Form.Filter
                                    '//impostazione ed attivazione del filtro
                                    ctl.Form.Filter = "((MSsys_DF02_Qry01_TIPO_OGGETTO.TIPOGGETTO_s='FORMS'))"
                                    ctl.Form.FilterOn = True
                                    ctl.Form.Requery
                                '//--------------------------------------------------------//
                            
        
                            Debug.Print
                            Debug.Print "......................................."
        
                        End With
                End If
        '//-------------------------------------------------------------------------//
    
    Next ctl
    '//-------------------------------------------------------------------------//


End Sub

'//QUALIFICA LA FORM PRINCIPALE ITERARE         *** FINE ***
'//===================================================================================================================//









