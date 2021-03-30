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
    Cenario: Criar um usuário inválido
        Quando eu envio dados inválido de um usuário
        Então o usuário não é criado