PS > $servico = Get-Service -Name "ByteBank Interface Service" -ComputerName "SRV01"
PS > $servico.Status
Running
PS > if ($servico.Status -eq "Running") {
>> $servico.Stop()
>> $servico.Start()
>> } else {
>> echo "Serviço não estava executando! 
>> }"