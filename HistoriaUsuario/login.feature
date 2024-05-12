#encoding:UTF-8
#language:pt

Funcionalidade:Autenticacao do Cliente 
Fazer login na EBAC-SHOP para visualizar os pedidos

Scenario: Login com dados válidos
Given que estou na página de autenticacao da EBAC-SHOP
 When insiro um usuário "<usuario>" e senha "<senha>" válidos
 And clico no botao "login"
 Then devo ser direcionado para a tela de checkout

Examples:
Usuário 	          Senha	            Mensagem
|Fausia Gracieth 	  |Fausia456	    |Login efectuado com sucesso
|Riva Marlisa         |Riva456	        |Login efectuado com sucesso
|Linda Victoria	      |Linda456	        |Login efectuado com sucesso 
|Celso Gilberto       |Celso456         |Login efectuado com sucesso  

Scenario: Login com dados inválidos
 Given que estou na página de autenticacao da EBAC-SHOP
 When insiro um usuário ou senha inválidos
 Then devo ver a mensagem de alerta "Usuário ou senha inválidos"

 Examples:
 Usuário 	          Senha	            Mensagem
|Fausia Gracieth 	  |Fausia345	    |Usuario ou senha incorrectas
|Riva Marlis          |Riva456	        |Usuario ou senha incorrectas
|Lind Victoria	      |Lind456	        |Usuario ou senha incorrectas 
|Celso Gilberto       |Celso45          |Usuario ou senha incorrectas  



