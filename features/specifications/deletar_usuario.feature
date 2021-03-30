#language:pt

Funcionalidade: Deletar Usuário

    Contexto:
        Dado url da API e cabeçalho
        E tenho um usuário criado

    @deletar_usuario
    Cenario: Deletar um usuário com sucesso
        Quando deleto um usuário
        Então o usuário é excluído com sucesso
        E não é apresentado na lista de usuários