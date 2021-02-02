#language: pt

@REST
@auto_users

Funcionalidade: Pesquisar usuários por nome
  Como uma aplicação endpoint de busca de usuários
  Quero buscar usuários
  Para que eu obtenha uma visão de suas informações

  Contexto: Obter usuário através do nome

  @buscar_usuario
  Cenário: Buscar usuário por nome, validar status code 200 e que todos contenham Naik no nome
    Quando envio uma requisição GET para realizar busca de usuário por nome
    Então o retorno do endpoint deve retornar o conteudo adequado conforme parametro

  @buscar_usuario_id
  Cenário: Buscar usuário por id e validar status code 200
    Dado que eu tenha obtido o id
    Quando envio uma requisição GET para realizar busca de usuário id
    Então o retorno do endpoint deve retornar o conteudo adequado conforme id



