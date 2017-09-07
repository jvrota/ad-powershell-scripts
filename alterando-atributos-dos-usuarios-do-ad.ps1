# Créditos: https://github.com/rot4ndano/

Import-Csv -Path 'CAMINHO\ARQUIVO.csv' -Encoding UTF8 | ForEach-Object {
 
    $user = $_.termo1
    $termo2 = $_.termo2
    $termo3 = $_.termo3
 
 Get-ADUser $user | Set-ADUser -Replace @{ Campo_no_AD_1 = $termo2 ;Campo_no_AD_2 = $termo3 } –Verbose
 
}


<# ESTE SCRIPT SERVE PARA VOCÊ ALTERAR ATRIBUTOS DE UM OU MAIS USUÁRIOS DENTRO DO ACTIVE DIRECTORY #>

<# O arquivo ".csv" deve seguir o padrão abaixo:

                termo1,termo2,termo3 -> É obrigatório o uso dos três termos no início do arquivo ".csv" para "ativar" o padrão para os termos abaixo que devem ser separados por vírgulas
                Thiago,111111,Gerente
                Vágner,333333,Analista
#>

# OBS: O "termo1", somente irá ser utilizado para localizar o usuário dentro do Active Directory

# Estrutura necessária do arquivo ".cvs" -> termo1,termo2,termo3 (RELEMBRANDO)

# Para buscar o arquivo ".csv" que servirá de "banco de dados" altere o seguinte texto -> CAMINHO\ARQUIVO.csv

# Os nomes Campo_no_AD_1 e Campo_no_AD_2 devem ser substituidos pelo códigos dos atributos que você deseja fazer a alteração ou inserção dos valores

# Para saber o código de cada atributo do Active Directory, acesse: https://github.com/rot4ndano/ad-powershell-scripts


