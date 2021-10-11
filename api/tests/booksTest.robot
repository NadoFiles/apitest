*** Settings ***

Documentation        FakeAPI: https://fakerestapi.azurewebsites.net/index.html
Resource            ../../api/base/base.robot
Resource            ../../api/request/booksRequest.robot

Suite Setup          Create session fakeAPI
#Suite Teardown       Close session

*** Test Cases ***
Deve buscar a listagem de todos os livros (GET em todos os livros)
    Requisitar todos os livros

