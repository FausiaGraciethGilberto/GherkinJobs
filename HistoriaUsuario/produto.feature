#encoding:UTF-8
#language:pt

Feature: Configuracao
Configuração de produto na EBAC-SHOP

Scenario Outline: seleção de cor, tamanho e quantidade de um produto
 Given que estou na página da EBAC-SHOP
 When eu seleciono a cor "<cor>", o tamanho "<tamanho>" e a quantidade "<quantidade>"
 And clico no botao "adcionar ao carrinho"
 Then o produto e adcionado ao carrinho com as opcoes escolhidas

Scenario: Seleção de cor, tamanho e quantidade obrigatórias
 Given que estou na página de um produto na EBAC-SHOP
 When não seleciono a cor, o tamanho e/ou a quantidade
 Then vejo uma mensagem de erro indicando que a seleção é obrigatória

Scenario: Limite de 10 produtos por venda
 Given que estou na página de EBAC-SHOP
 When tento adicionar mais de 10 produtos ao carrinho
 Then vejo uma mensagem indicando que excedi o limite de produtos por venda

Scenario: Limpar seleção de cor, tamanho e quantidade
  Given que selecionei a cor, o tamanho e a quantidade de um produto na EBAC-SHOP
  When clico no botão "Limpar"
  Then a seleção de cor, tamanho e quantidade volta ao estado original

Examples:
Cor              	Tamanho	          Quantidade	        Resultado
|Azul             	|S	              |15	                |Excedeu limite
|Laranja	        |Xl	              |08                   |Inserir produto no carrinho
|Azul              	|	              |09                  	|E obrigatorio selecioar todos campos
	                |M	              |01	                |E obrigatorio selecioar todos campos
|Vermelho           |L                |10	                |Inserir produto no carrinho

