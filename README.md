# O Desafio
Utilizando a Collection do Postman abaixo:
(https://www.getpostman.com/collections/77cfd2465c5d146503d0)

Faça os seguintes cenários de automação:

Cenários:
* Usar o endpoint de 'Criar um Usuario' para criar um usuário válido, e então validar se o mesmo foi criado no endpoint 'Listar todos Usuarios';
* Alterar o nome deste usuário criado com o endpoint 'Alterar dados do Usuario' e então validar as alterações no endpoint 'Listar um unico Usuario';
* Deletar o usuário criado no endpoint 'Deletar Usuario' e validar se o mesmo foi removido no endpoint 'Listar todos Usuarios'';

## O Projeto

Além dos cenários pedidos no desafio, criei mais alguns cenários que considerei importante para validação das possíveis regras de negócio, como criar um usuário com insucesso e alteração de dados além do nome.

Utilizei: 

* Cucumber para escrita de cenários
* A gem HTTParty para as interações com as rotas da api.
* A gem Rspec para validações
* A gem Faker para dados fictícios válidos
* O padrão PageObject para concentrar os métodos criados para a interação com cada rota

## Versão Ruby
2.6.5

## Configurações

1. Instalar o Ruby com a versão 2.6.5
2. Clonar o projeto do github
```
git clone git@github.com:patriciaesquaiella/desafio-api-patriciaesquaiella.git
```
3. Na pasta principal do projeto, executar o bundle para instalar as dependências
```
bundle install
```

## Execução

1. Executar todos os testes. Digite no terminal, na pasta principal
```
cucumber
```
2. Executar testes usando tag
```
cucumber -t @criar_usuario
```
