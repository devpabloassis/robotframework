*** Settings ***
Documentation           Configurações gerais
Library                 OperatingSystem
#IMPORT SELENIUM E NÃO REALIZA NENHUMA AÇÃO DEFAULT EM CASO DE ERRO DE EXECUÇÃO
Library                 SeleniumLibrary
...                     run_on_failure=nothing
Library                 Collections
Library                 String

Resource                pageobjects/po_alunos.robot
Resource                BDDptbr.robot
Resource                keywords.resource.robot

*** Variables ***
${url}                      https://www.jtable.org/Demo/Filtering/

${browserOptions_chrome}        add_argument("--disable-popup-blocking");
# ...                             add_argument("--headless");
...                             add_argument("--no-sandbox");
...                             add_argument("—-disable-gpu");
...                             add_argument("--disable-infobars");
...                             add_argument("--disable-dev-shm-usage");
...                             add_argument("--user-agent= GloboplayNative/1.0.0M");
...                             add_argument("--start-maximized");
...                             add_argument("window-size=1920,1080");
...                             add_experimental_option("excludeSwitches", ["enable-automation"])

${path_screenshots}     screenshots


*** Keywords ***
Before Suite
    #CRIAR PASTA, SE NÃO EXISTIR
    Create Directory                ${path_screenshots}/${SUITE NAME}

    #ESVAZIAR PASTA COM SCREENSHOTS DA EXECUÇÃO ANTERIOR
    Empty Directory                 ${path_screenshots}/${SUITE NAME}

    #REMOVER ARQUIVOS DE LOG GERADOS LOCALMENTE
    Remove files   ${EXECDIR}/geckodriver-*.log

Before Scenario
    Open Browser                    ${url}  chrome     options=${browserOptions_chrome}

After Scenario
    Set Screenshot Directory    ${path_screenshots}/${SUITE NAME}
    Capture Page Screenshot
    Remove Files                ${EXECDIR}/selenium-screenshot*
    Close All Browsers