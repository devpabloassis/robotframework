*** Settings ***
Documentation       Elementos mapeados presentes no sistema de alunos

*** Variables ***
&{alunos}
...						telaAlunos=xpath:/html/body/div[1]/div[1]/h1/a[contains(text(),'jTable')]/span[contains(text(),'org')]
...                     cbbCidades=//*[@id="cityId"]
...                     itens_cbbCidades=xpath://*[@id="cityId"]/option
...                     btnLoadRecords=//*[@id="LoadRecordsButton"]
...                     linhasTabelaStudents=xpath://*[@id='StudentTableContainer']/div/table/tbody/tr/td[3]