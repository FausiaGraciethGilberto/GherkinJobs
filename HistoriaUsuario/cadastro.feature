#encoding:UTF-8
#language:pt

Feature:Conclusao cadastro
Concluir cadastro para finalizar a compra

Scenario: Cadastro com todos os dados obrigatórios
    Given que estou na página de cadastro da EBAC-SHOP
   And preencho todos os campos obrigatórios marcados com asteriscos
    When confirmo o cadastro
   Then meu cadastro é concluído e posso finalizar minha compra
Examples:
Nome               Sobrenome	 Pais         Endereco                 CEP	        Telefone        Email	                  Resultado
|Fausia Gracieth   Gilberto      Mocambique   Casa04,apartamento O6    |Fausia456   841234598   |fausiagrcaieth123@gmail.com  |Finalizar compra
|Riva Marlis       Gilberto      Mocambique   Casa04,apartamento 06    |Riva456     867234590   |rivamarlisa123@gmail.com         |Finalizar compra 
|Linda Victoria    Gilberto      Mocambique   Casa04,apartamento 06    |Fausia456   821945601   |lindavictoria123@gmail.com    |Finalizar compra
|Celso Gilberto    Gilberto      Mocambique   Casa04,apartamento 06    |Celso456    851592045   |celsogilberto123@gmail.com   |Finalizar compra


Scenario: Cadastro com e-mail em formato inválido
 Given que estou na página de cadastro da EBAC-SHOP
 And insiro um e-mail inválido no campo de e-mail
 When tento confirmar o cadastro
 Then devo ver uma mensagem de erro indicando que o e-mail está em formato inválido

Examples:
Nome               Sobrenome	 Pais         Endereco                 CEP	        Telefone        Email	                  Resultado
|Fausia Gracieth   Gilberto      Mocambique   Casa04,apartamento O6    |Fausia456   841234598   |fausiagrcaieth123@gmail.com  |Cadastro feito com sucesso
|Riva Marlis       Gilberto      Mocambique   Casa04,apartamento 06    |Riva456     867234590   |rivamarlisa123@gmail         |Formato de email inválido 
|Linda Victoria    Gilberto      Mocambique   Casa04,apartamento 06    |Fausia456   821945601   |lindavictoria123@gmailcom    |Formato de email inválido 
|Celso Gilberto    Gilberto      Mocambique   Casa04,apartamento 06    |Celso456    851592045   |celsogilberto123@gmail.com   |Cadastro feito com sucesso


Scenario: Cadastro com campos vazios
    Given que estou na página de cadastro da EBAC-SHOP
    And deixo algum campo obrigatório em branco
    When tento confirmar o cadastro
   Then devo ver uma mensagem indicando os campos em branco

Examples:
Nome               Sobrenome	 Pais         Endereco                 CEP	        Telefone        Email	                  Resultado
|Fausia Gracieth   Gilberto      Mocambique   Casa04,apartamento O6    |Fausia456   841234598   |                             |Campo de email vazio
|                  Gilberto      Mocambique   Casa04,apartamento 06    |Riva456     867234590   |rivamarlisa123@gmail         |Campo de nome vazio
|Linda Victoria    Gilberto      Mocambique   Casa04,apartamento 06    |            821945601   |lindavictoria456@gmailcom    |Campo de CEP vazio 
|Celso Gilberto    Gilberto      Mocambique   Casa04,apartamento 06    |Celso456    851592045   |                             |Campo de email