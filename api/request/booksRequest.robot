*** Settings ***

Documentation            FakeAPI: https://fakerestapi.azurewebsites.net/index.html
Library                  RequestsLibrary
Library                  Collections
Resource                 ../../api/base/base.robot

*** Variables ***
${ALIAS}                 fakeAPI
${URI}                   /books

*** Keywords ***
Requisitar todos os livros
    ${RESPONSE}          GET On Session      ${ALIAS}            ${URI}
    Log    ${RESPONSE.text}
    