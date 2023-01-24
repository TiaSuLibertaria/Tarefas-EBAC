      #language: pt

      Funcionalidade: Selecionar o Produto
      Como cliente da EBAC-SHOP
      Quero configurar meu produto de acordo com meu tamanho e gosto
      Escolher a quantidade
      Para depois inserir no carrinho

      Contexto: Plataforma da Ebac - Shop

      Cenário: Configuração do produto válido
      Dado que eu acesse a página do produto
      Quando escolher a cor "preta" e o tamanho "pequeno"
      E selecionar a  quantidade "9"
      Entao o produto deve ser direcionado para o carrinho com a mensagem "Falta pouco para ser seu"

      Cenário: Configuração do produto inválido
      Dado que eu acesse a página do produto
      Quando escolher a cor "branca" e o tamanho " "
      E selecionar a  quantidade "7"
      Entao deve aparecer uma mensagem "Por favor selecione o tamanho"


      Cenário: Quantidade inválida
      Dado que eu escolha o prodruto da Plataforma
      Quando escolher a quantidade de "11" produtos
      E clicar no botão de compra
      Então deve exibir uma mensagem de "Só é permitida a compra de até 10 produtos"

      Cenário: Limpar dados da página
      Dado que escolha o produto na Plataforma
      Quando clicar no botão "limpar"
      Entao a pagina deve voltar ao estado original com a mensagem "Cesta vazia"

      Esquema do Cenário: Configuração do produto
      Quando escolher a <"Cor"> , <"Tamanho">
      E selecionar a <"Quantidade">
      E clicar no botão <"Limpar">
      Entao deve aparecer uma <"Mensagem">

      Exemplos:
      | Cor      | Tamanho   | Quantidade | Limpar   | Mensagem                                     |
      | "Preta"  | "Pequena" | "9"        | ""       | "Falta pouco para ser seu"                   |
      | "Branca" | " "       | "7"        | ""       | "Por favor selecione o tamanho"              |
      | "Verde"  | "Média"   | "11"       | ""       | "Só é permitida a compra de até 10 produtos" |
      | "Branca" | "Pequena" | "9"        | "Limpar" | "Cesta vazia"                                |




