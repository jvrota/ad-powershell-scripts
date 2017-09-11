# Créditos: https://github.com/rot4ndano/

import-csv "CAMINHO\ARQUIVO.csv" | ForEach-Object {add-ADGroupMember -Identity NOMEDOGRUPO -Members $_.username -Verbose} 

<#
Os dados no "ARQUIVO.csv" devem seguir o padrão abaixo:
username (é necessário adicionar este atributo na primeira linha do "ARQUIVO.csv" para ativar o padrão e localizar os usuários listados no Active Directory
usuário1
usuário2

NOMEDOGRUPO (neste campo você deverá adicionar o nome do grupo exatamente como está no Active Directory
#>



