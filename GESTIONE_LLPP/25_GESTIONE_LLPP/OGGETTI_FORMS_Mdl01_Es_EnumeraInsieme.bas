Attribute VB_Name = "OGGETTI_FORMS_Mdl01_Es_EnumeraInsieme"
Option Compare Database


Const SottForm_s = "MSsys_Frm01_S01_TABELLE_TUTTE"


'//Nel seguente esempio viene indicato come scorrere tutto l'insieme Forms e stampare il nome di _
    ciascuna maschera dell'insieme. Quindi viene enumerato l'insieme Controls di ciascuna _
    maschera e stampato il nome di ciascun controllo della maschera.

Sub MaschereAperte()
    Dim frm As Form, ctl As Control

    ' Enumera insieme Forms.
    For Each frm In Forms
        ' Stampa nome della maschera.
        Debug.Print frm.Name
        ' Enumera insieme Controls di ciascuna maschera.
        For Each ctl In frm.Controls
            ' Stampa nome di ciascun controllo.
            Debug.Print ">>>"; ctl.Name
        Next ctl
    Next frm
End Sub



'//SE LA FORM NON E'APERTA NON ITERA
Sub MaschereAperte_LA_SOTTOFORM_SPECIFICA()
    Dim frm As Form, ctl As Control

    ' Enumera insieme Forms.
    For Each frm In Forms
        ' Stampa nome della maschera.
        Debug.Print frm.Name
        ' Enumera insieme Controls di ciascuna maschera.
        For Each ctl In frm.Controls
            ' Stampa nome di ciascun controllo.
            Debug.Print ">>>"; ctl.Name & " " & ctl.ControlType '= acSubform
                If ctl.ControlType = 112 Then
                   
                            Debug.Print ctl.Form.RecordSource
                            MsgBox "TROVATO LA SOTTOFORM nella form principale : " & SottForm_s
    
                    
                End If
        Next ctl
    Next frm
End Sub

