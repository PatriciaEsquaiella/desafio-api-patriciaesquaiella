#language:pt

Funcionalidade: Alterar Usuário

    Contexto:
        Dado url da API e cabeçalho
        E tenho um usuário criado

    @alterar_usuario @usuario_valido
    Esquema do Cenario: Alterar usuário com sucesso
        Quando envio um "<dado>" válido para alterar um usuário
        Então o usuário é alterado com sucesso
        E busco por esse usuário
        E é apresentado com o "<dado>" alterado

        Exemplos:
            |dado       |
            |nome       |
            |email      |
            |genero     |
            |status     |

    @alterar_usuario @usuario_invalido
    Esquema do Cenario: Alterar usuário com insucesso
        Quando envio um "<dado>" inválido para alterar um usuário
        Então o usuário não é alterado com sucesso

        Exemplos:
            |dado       |
            |nome       |
            |email      |
            |genero     |
            |status     |