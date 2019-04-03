cls
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

#tabPages
	$ti = 0
	$tabsCol = @("Gainsboro","Khaki","Bisque")
	$temp = @()
	
	("System","Veeam","WSUS").
	ForEach{$_
	write-host "Runde: tabPages ... " $ti
	write-host "-$_-: " $_
	$temp += "$_"
	write-host "-$temp- " $temp[$ti]
	$_ = New-Object Windows.Forms.TabPage
	$_.backcolor = ($tabsCol[$ti])
	$_.Text = $temp[$ti]
	$_.ToolTipText = $temp[$ti]
$tabControl.Controls.Add($_)
	$temp[$ti] = $_
	$ti++
}

#tabPage System
	$ti = 0
	$tx = 10
	$temp = @()

	("MachineName","OSVersion","UserDomainName","UserName","Version").
	ForEach{$_
	write-host "Runde: tabPage System ... " $ti
	write-host "-$_- " $_
	$temp += "$_"
	$label = $temp[$ti]
	write-host "-$temp[$ti]- " $temp[$ti]
	$_ = New-Object Windows.Forms.Label
	$_.backcolor = "Khaki"
	$_.Location = "$tx,30"
	$_.Size = "130,20"
	$_.Font = 'Consolas, 10pt, style=Bold'
	$_.Text = $temp[$ti]
	write-host "-$temp[$ti]- " $temp[$ti]
$label.Controls.Add($_)
	write-host "-$temp[$ti]- " $temp[$ti]
	write-host "-$label- " $label
	$ti++
	$tx += 10
	}

$mainForm.ShowDialog()
