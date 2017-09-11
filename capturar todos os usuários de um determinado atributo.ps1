# Créditos: https://github.com/rot4ndano/

get-aduser -Filter {Title -eq "Administrador"}  -Properties Title | Select-Object name,sAMAccountName

<# ESRE SCRIPT SERVE PARA LISTAR USUÁRIOS SE BASEANDO EM UM ATRIBUTO ESPECÍFICO, SEJA ELE TELEFONE, CARGO, ENTRE OUTROS#>

<# Nessa captura foi utilizada o atributo "Title" que se refere ao cargo do usuário.
 Assim foram buscados todos os usuários que possuem o cargo de "Administrador"

 Para listar usuários utilizando outro atributo deve-se trocar o atributo "Title" por outro e o texto "Administrador" por outro
Exemplo:

get-aduser -Filter {telephoneNumber -eq "(00) 0000-0000"}  -Properties telephoneNumber | Select-Object name,sAMAccountName

Nessa pesquisa foram capturados, todos os usuários que têm no campo de Telefone o número (00) 0000-0000

#>
