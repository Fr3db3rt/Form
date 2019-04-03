Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

#mainForm
	$mainForm = New-Object Windows.Forms.Form
	$mainForm.StartPosition = "CenterScreen"
	$mainForm.Size = "1024,768"
	$mainForm.FormBorderStyle = "Fixed3D" #FixedSingle, FixedDialog, FixedToolWindow, None, Sizeable, SizableToolWindow, Fixed3D
	$mainForm.backcolor = "Khaki"
	$mainForm.Name = "mainForm"
	$mainForm.Text = "LD System Wartungs Tool (ALPHA 2.0)"
	#$global:$mainForm.Icon="C:\Windows\System32\msconfig.exe"
	#$global:$mainForm.Topmost = $true
$mainForm.ShowDialog()
