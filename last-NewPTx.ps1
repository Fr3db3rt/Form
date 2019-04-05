cls
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

write-host "=== #mainForm"
	$mainForm = New-Object Windows.Forms.Form
	$mainForm.StartPosition = "CenterScreen"
	$mainForm.Size = "1024,768"
	$mainForm.Name = "mainForm"
	$mainForm.Text = "LD System Wartungs Tool (ALPHA 2.0)"

write-host "=== #tabControl"
	$tabControl = New-object Windows.Forms.TabControl
	$tabControl.Location = "75,85"
	$tabControl.Size = "800,400"
$mainForm.Controls.Add($tabControl)

write-host "=== #tabPages"
	$System = New-Object Windows.Forms.TabPage
	$System.Text = "System"
$tabControl.Controls.Add($System)

write-host "=== #tabPage System"
	$tx = 10
	$MachineName = New-Object Windows.Forms.Label
	$MachineName.Location = "$tx,30"
	$MachineName.Size = "130,20"
	$MachineName.Text = "MachineName"
$System.Controls.Add($MachineName)
	$tx += 10
	$MachineName.Location = "$tx,30"
$System.Controls.Add($MachineName)

$mainForm.ShowDialog()
