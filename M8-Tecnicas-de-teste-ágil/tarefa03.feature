      #language: pt

      Funcionalidade: Cadastro de compra
      Como cliente da EBAC-SHOP
      Quero fazer concluir meu cadastro
      Para finalizar minha compra

      Contexto: Página de cadastro da EBAC-SHOP

      Cenário: Cadastro de dados obrigatórios
      Quando preencher os dados pessoais
      Mas não preencher o campo sinalizado com os asteriscos *""
      Entao deve aparecer a mensagem "Preencha os campos obrigatórios *"

      Cenário: Email inválido
      Quando inserir o Email no campo correspondente
      E este estiver com formato invalido "joão@br"
      Então deve aparecer uma mensagem de erro "Email inválido"

      Cenário: Campo inválido
      Quando preencher os campos para realizar o cadastro
      E um dos campos estiver vazio ""
      Entao deve aparecer uma mensagem "Preencha todos os campos"

      Esquema do Cenário: Autenticar o campo de cadastro
      Quando esquecer de preencher os campos que estiver com <"Asteriscos *">
      E preencher com formatação errada o <"Email">
      E esquecer <"Campos vazios">
      Entao deve aparecer uma <"Mensagem">

      Exemplos:
      | Asteriscos* | Email              | Campos vazios    | Mensagem                            |
      | ""          | "joana@uol.com.br" | "Joana da Silva" | "Preencha os campos obrigatórios *" |
      | "Casado"    | "jose@br"          | "José de Sousa"  | "Email inválido"                    |
      | "Solteiro"  | "Maria@gmail.com"  | ""               | "Preencha todos os campos"          |