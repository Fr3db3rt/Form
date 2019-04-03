Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

	$mainForm = New-Object Windows.Forms.Form
	$mainForm.StartPosition = "CenterScreen"
	$mainForm.Size = "1024,768"
	$mainForm.FormBorderStyle = "Fixed3D"
	# Other values are: FixedSingle, FixedDialog, FixedToolWindow,
	#                   None, Sizeable, SizableToolWindow, Fixed3D
	$mainForm.backcolor = "Khaki"
	$mainForm.Name = "mainForm"
	$mainForm.Text = "LD System Wartungs Tool (ALPHA 2.0)"
	#$global:$mainForm.Icon="C:\Windows\System32\msconfig.exe"
	#$global:$mainForm.Topmost = $true

	# This will return a custom action when the Enter key is pressed
	# or will close the form when the Esc key is pressed:
	$mainForm.KeyPreview = $True
	$mainForm.Add_KeyDown({if ($_.KeyCode -eq "Enter") {. C:\Scripts\Wartung\PowerTool.ps1}})
	$mainForm.Add_KeyDown({if ($_.KeyCode -eq "Escape") {$mainForm.Close()}})

