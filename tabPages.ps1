#tabPages
	$ti = 0
	$tabsCol = @("Gainsboro","Khaki")
	$temp = @()
	
	("System","Veeam","WSUS").
	ForEach{$_
	write-host $_
	$temp += "$_"
	write-host "--- " $temp[$ti]
	$_ = New-Object Windows.Forms.TabPage
	$_.backcolor = ($tabsCol[$ti])
	$_.Text = "$_temp"
	$_.ToolTipText = $tabs[$ti]
	$tabControl.Controls.Add($_)
	$tab[$ti] = $_
	$ti++
}
