*** Settings ***

Documentation            FakeAPI: https://fakerestapi.azurewebsites.net/index.html
Library                  RequestsLibrary
Library                  Collections
Resource                 ../../api/base/base.robot

*** Variables ***
${ALIAS}                 fakeAPI
${URI}                   /books


*** Keywords ***

#Requisições    
Requisitar todos os livros
    ${RESPONSE}          GET On Session      ${ALIAS}            ${URI}
    Log    ${RESPONSE.text}
    Set Test Variable    ${RESPONSE} 

Requisitar o livro
    [Arguments]    ${ID_BOOK}
    ${RESPONSE}          GET On Session      ${ALIAS}            ${URI}/${ID_BOOK}
    Log    ${RESPONSE.text}
    Set Test Variable    ${RESPONSE} 


#Conferêncis
Conferir o status code
    [Arguments]    ${STATUS_CODE}
    Should Be Equal As Strings    ${RESPONSE.status_code}     ${STATUS_CODE}
        
Conferir o reason
    [Arguments]    ${STATUS_REASON}
    Should Be Equal As Strings    ${RESPONSE.reason}     ${STATUS_REASON}

Conferir se retorna uma lista com "${QTD_BOOKS}" livros
    Length Should Be    ${RESPONSE.json()}    ${QTD_BOOKS}
    