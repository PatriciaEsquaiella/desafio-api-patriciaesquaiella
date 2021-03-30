#language:pt

Funcionalidade: Alterar Usuário

    Contexto:
        Dado url da API e cabeçalho
        E tenho um usuário criado

    @alterar_usuario @usuario_valido
    Cenario: Alterar nome do usuário com sucesso
        Quando eu envio um nome válido para alterar um usuário
        Então o usuário é alterado com sucesso
        E busco por esse usuário
        E é apresentado com o nome alterado