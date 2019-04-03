#tabPages
	$ti = 0
	$tabsCol = @("Gainsboro","Khaki","Bisque")
	$temp = @()
	
	("System","Veeam","WSUS").
	ForEach{$_
	write-host $_
	$temp += "$_"
	write-host "--- " $temp[$ti]
	$_ = New-Object Windows.Forms.TabPage
	$_.backcolor = ($tabsCol[$ti])
	$_.Text = $temp[$ti]
	$_.ToolTipText = $temp[$ti]
	$tabControl.Controls.Add($_)
	$temp[$ti] = $_
	$ti++
}

