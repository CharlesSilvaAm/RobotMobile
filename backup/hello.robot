***Settings***
Library      hello.py

***Test Cases***
Deve retornar mensagem de boas vindas
    ${resultado}      Hello Robot     Charles Silva
    Should Be Equal   ${resultado}    Olá, Charles Silva.
