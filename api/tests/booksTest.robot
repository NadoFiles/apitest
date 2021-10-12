*** Settings ***

Resource            ../../api/base/base.robot
Resource            ../../api/request/booksRequest.robot

Suite Setup          Create session fakeAPI
#Suite Teardown       Close session

*** Test Cases ***
##GET​/api​/v1​/Books
Deve buscar todos os livros
    Requisitar todos os livros
    Conferir o status code    200
    Conferir o reason    OK
    Conferir se retorna uma lista com "200" livros

##GET​/api​/v1​/Books​/{id}
Deve buscar um livro
    Requisitar o livro     15
    Conferir o status code    200
    Conferir o reason    OK