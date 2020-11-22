Feature: Login
Como um cliente
Quero poder acessar minha conta e me manter logado
Para que eu possa ver e responder enquetes de forma rapida

Cenário: Credenciais Valídas
Dado que o cliente informou credencias válidas
Quando solicitar para fazer Login
Entao o sitema deve enviar o usuario para a tela de pesquisas
E manter o usuario conectado

Cenário: Credenciais Inválidas
Dado que o cliente informou credencias invalidas
Quando solicitar para fazer Login
Entao o sistema deve enviar uma msg de erro 