$servico = Get-Service AudioSRV
$servico.Stop()
$servico.Start()