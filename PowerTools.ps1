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
	#$mainForm.Icon="C:\Windows\System32\msconfig.exe"
	#$mainForm.Topmost = $true

#tabControl
  $tabControl = New-object Windows.Forms.TabControl
  $tabControl.Alignment = "Top" #Bottom, Left, Right, Top
  $tabControl.Appearance = "FlatButtons" #Buttons, FlatButtons, Normal
  $tabControl.Padding = "10,5"
  $tabControl.SizeMode = "Normal" #FillToRight, Fixed, Normal
  $tabControl.Location = "75,85"
  $tabControl.Size = "800,400"
  $tabControl.ShowToolTips = "true"
$mainForm.Controls.Add($tabControl)

$mainForm.ShowDialog()
