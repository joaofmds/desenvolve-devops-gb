param($tipoDeExportacao)

$ErrorActionPreference = "Stop"

$nameExpr = @{
	Label="Nome";
	Expression= { $_.Name }
}

$lengthExpr = @{
	Label="Tamanho";
	Expression= { "{0:N2}KB" -f ($_.Length / 1KB) }
}

$params = $nameExpr, $lengthExpr

$resultado =
	gci -Recurse -File |
		? Name -like "*_migrando_*" |
		select $params

		
if ($tipoDeExportacao -eq "HTML") {
	$estilos = Get-Content c:\scripts\styles.css
	$styleTag = "<style> $estilos </style>"
	$tituloPagina = "Relatorio de Scripts em Migracao"
	$tituloBody = "<h1> $tituloPagina </h1>"

	$resultado |
		ConvertTo-Html -Head $styleTag -Title $tituloPagina -Body $tituloBody  |
		Out-File c:\tempGui\relatorio.html	
} elseif ($tipoDeExportacao -eq "JSON") {
	$resultado |
		ConvertTo-JSON |
		Out-File c:\tempGui\relatorio.json
} elseif ($tipoDeExportacao -eq "CSV") {
	$resultado |
		ConvertTo-CSV -NoTypeInformation |
		Out-File c:\tempGui\relatorio.csv
}
		