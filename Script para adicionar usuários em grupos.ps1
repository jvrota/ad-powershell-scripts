import-csv "C:\Users\adm.joao\Desktop\Pasta1asas.csv" | ForEach-Object {add-ADGroupMember -Identity BA-SL-CAD -Members $_.username -Verbose} 







