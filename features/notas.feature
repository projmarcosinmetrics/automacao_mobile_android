# language: pt
# encoding UTF-8

Funcionalidade: Criar notas

  Esquema do Cenário: Criar uma nova nota
    Dado que estou na home do aplicativo
    E toco no botão de adicionar no canto inferior da tela
    E digito o título "<TITULO>"
    Quando toco no botão create
    Então sou direcionado para a Home e visualizo as nota "<TITULO>"
      Exemplos:
      |   TITULO    |
      | Hello Word  |


  Esquema do Cenário: Editar uma nota
    Dado que estou na home do aplicativo
    E dou um toque longo sobre a nota com título "<TITULO>"
    E toco na opção Rename
    E digito o título "<TITULO>"
    Quando toco no botão Rename
    Então sou direcionado para a Home e visualizo a nota com o novo título "<NOVO_TITULO>"
      Exemplos:
      |   TITULO    | NOVO_TITULO |
      | Hello Word  | Olá Mundo   |
