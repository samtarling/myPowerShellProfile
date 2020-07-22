# Increase history
$MaximumHistoryCount = 10000

#Functions
#> sudo [application/command]
function sudo {
	$file, [string]$arguments = $args;
	$psi = new-object System.Diagnostics.ProcessStartInfo $file;
	$psi.Arguments = $arguments;
	$psi.Verb = "runas";
	$psi.WorkingDirectory = get-location;
	[System.Diagnostics.Process]::Start($psi) >> $null
}

#> touch [filename]
function touch($file) {
	"" | Out-File $file -Encoding ASCII
}