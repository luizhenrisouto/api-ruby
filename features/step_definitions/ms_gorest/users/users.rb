Quando('envio uma requisição GET para realizar busca de usuário por nome') do
  @massa_params = YAML.load_file("#{PATH_MASSA}/users/params.yml")
  @params = @massa_params['users']
  @response = users.users_name_get(@params)
  log(@response.code)
  log(@response.body)
end

Então('o retorno do endpoint deve retornar o conteudo adequado conforme parametro') do
  raise 'Api is not working' if @response.code != 200

  log(@response.body)
  expect(@response['meta']).to_not eql nil
  expect(@response['data'][0]['name']).equal? 'Naik'

end

Dado('que eu tenha obtido o id') do
  step 'envio uma requisição GET para realizar busca de usuário por nome'
  step 'o retorno do endpoint deve retornar o conteudo adequado conforme parametro'
  $id_user = @response['data'][0]['id']
end

Quando('envio uma requisição GET para realizar busca de usuário id') do
  @response = users.users_id_get
  log(@response.code)
  log(@response.body)
end

Então('o retorno do endpoint deve retornar o conteudo adequado conforme id') do
  raise 'Api is not working' if @response.code != 200

  log(@response.body)
  expect(@response['meta']).to_not eql nil

end
