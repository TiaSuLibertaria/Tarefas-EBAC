      #language: pt

      Funcionalidade: Login de autenticação
      Como cliente da EBAC-SHOP
      Quero fazer o login (autenticação) na plataforma
      Para visualizar meus pedidos

      Cenário: Autenticação Válida
      Dado que acesse a plataforma da loja EBAC-SHOP
      Quando inserir o login "jose@gmail.com"
      E senha "123243"
      Entao o cliente será direcionado para tela de checkout com a mensagem "Olá José!"

      Cenário: Autenticação senha inválida
      Dado que o cliente acesse a plataforma da loja EBAC-SHOP
      Quando inserir o login "jose@gmail.com"
      E senha "123243Martinelo"
      Entao deve exibir uma mensagem "Usuário ou senha inválida"

      Cenário: Autenticação usuário inválido
      Dado que o cliente acesse a plataforma da loja EBAC-SHOP
      Quando inserir o login "joseee@gmail.com"
      E senha "123243"
      Entao deve exibir uma mensagem "Usuário ou senha inválida"

      Esquema do Cenário: Autenticar vários usuários
      Quando eu digitar <"Usuário">
      E a <"Senha">
      Entao o cliente receberá uma <"Mensagem">

      Exemplos:

      | Usuário            | Senha             | Mensagem                    |
      | "jose@gmail.com"   | "123243"          | "Olá José!"                 |
      | "jose@gmail.com"   | "123243Martinelo" | "Usuário ou senha inválida" |
      | "joseee@gmail.com" | "123243"          | "Usuário ou senha inválida" |
      | "maria@bol.com.br" | "769812"          | "Olá Maria"                 |
      | "sonia@com"        | "34er56"          | "Usuário ou senha inválida" |
