*** Keywords ***
que realizei o acesso ao sistema de alunos
    ${validaTelaAluno}=    BuiltIn.Run Keyword And Ignore Error   Wait until element is visible    ${alunos.telaAlunos}   5s
    # Run Keyword If  '${validaTelaAluno[0]}' == 'FAIL'   FazerAlgumaCoisa
    
seleciono a lista de cidades dos alunos
    Click element   ${alunos.cbbCidades}
    Sleep   4s

seleciono o item ${cidade} na lista de cidade dos alunos
    seleciono a lista de cidades dos alunos
    select from list by label       ${alunos.cbbCidades}     ${cidade}
    Sleep   4s

a quantidade de itens na lista de cidades dos alunos é igual a ${qtdEsperada}    
    ${list_cidades}=    Get WebElements    ${alunos.itens_cbbCidades}
    ${qtdEncontrada}=    Get length    ${list_cidades}
    Should Be True  '${qtdEncontrada}' == '${qtdEsperada}'

clico no botão Load records
    Click element   ${alunos.btnLoadRecords}
    Sleep   4s

a tabela Student List será atualizada com uma quantidade de registros maior ou igual a ${qtdEsperada}
    Wait until element is visible    ${alunos.linhasTabelaStudents}   5s
    ${list_linhasTabela}=    Get WebElements    ${alunos.linhasTabelaStudents}
    ${qtdEncontrada}=    Get length    ${list_linhasTabela}
    Should Be True  '${qtdEncontrada}' >= '${qtdEsperada}'
    Sleep   4s