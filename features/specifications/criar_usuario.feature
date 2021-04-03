#language:pt

Funcionalidade: Criar Usuário

    Contexto:
        Dado url da API e cabeçalho

    @criar_usuario @usuario_valido
    Cenario: Criar um usuário válido
        Quando eu envio dados válidos de um usuário
        Então o usuário é criado com sucesso
        E é apresentado na lista de usuários

    @criar_usuario @usuario_invalido
    Cenario: Criar um usuário com email inválido
        Quando eu envio um usuário com email inválido
        Então o usuário não é criado

    @criar_usuario @usuario_invalido
    Cenario: Criar um usuário com gênero inválido
        Quando eu envio um usuário com gênero inválido
        Então o usuário não é criado

    @criar_usuario @usuario_invalido
    Cenario: Criar um usuário com status inválido
        Quando eu envio um usuário com status inválido
        Então o usuário não é criado