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
