gci -Recurse

$todosOsItens = gci -Recurse
$todosOsItens.Length
$todosOsArquivos = gci -Recurse -File
$todosOsArquivos.Length

gci -recurse -file | ? Name -like "*_migrando_*" | select Name, Length


1KB
1MB
1GB
1TB

654654654 / 1GB

 "{0:N2}MB = {1:N2}KB" -f (1gb / 1mb), (1gb / 1kb)

gci -recurse -file |
	? Name -like "*_migrando_*" |
	select `
		Name, `
		{ "{0:N2}KB" -f ($_.Length / 1KB) }
