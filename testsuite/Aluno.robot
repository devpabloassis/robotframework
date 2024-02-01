*** Settings ***
Documentation   Validação de fluxos e funcionalidades presentes na Home

#Default Tags    Home

# IMPORT DE VARIÁVEIS DE OUTROS ARQUIVOS
Resource            ${EXECDIR}/environment.robot

# O QUE FAZER ANTES DA EXECUÇÃO DOS TESTES
Suite Setup         Before Suite

# O QUE FAZER ANTES DE CADA UM DOS TESTES - ABRIR NAVEGADOR
Test Setup          Before Scenario

# O QUE FAZER APÓS CADA UM DOS TESTES - FECHAR NAVEGADOR
Test Teardown       After Scenario

Default Tags      Fluxo_Positivo    Aluno   Validacao

*** Test Cases ***
# Validar exibição e transição automática de destaques premium na home
#     [Tags]      Home    Destaque Premium
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Então o destaque premium deve ser exibido
#     E ocorrer a transição entre todos os itens no trilho de destaques premium

# Buscar aluno pelo filtro de Cidade
#     [Tags]      Home    Destaque Premium
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Então o destaque premium deve ser exibido
#     E ocorrer a transição entre todos os itens no trilho de destaques premium

Validar o total de cidades disponiveis
    Dado que realizei o acesso ao sistema de alunos
    Quando seleciono a lista de cidades dos alunos
    Então a quantidade de itens na lista de cidades dos alunos é igual a 71

Buscar aluno pelo filtro de cidade
    [Tags]      Fluxo_Positivo  Aluno   Filtro_Cidade
    Dado que realizei o acesso ao sistema de alunos
    E seleciono o item Rio de Janeiro na lista de cidade dos alunos
    E clico no botão Load records
    Então a tabela Student List será atualizada com uma quantidade de registros maior ou igual a 1
    
# Buscar aluno pelo filtro de cidade e nome
#     [Tags]      Fluxo_Positivo  Aluno   Filtro_Cidade   Filtro_Nome_Aluno
#     Dado que realizei o acesso ao sistema de alunos
#     E seleciono o item "Rio de Janeiro" na lista de cidade dos alunos
#     E informo o dado "Parker" no campo nome do aluno
#     E clico no botão Load records
#     Então a tabela Student List será atualizada com uma quantidade de registros maior ou igual a 1