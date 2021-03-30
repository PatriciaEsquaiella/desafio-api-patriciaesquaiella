include Helpers

Dado('url da API e cabeçalho') do
    @url = url_api_users
    @headers = headers_api_users
end
  
Quando('eu envio dados válidos de um usuário') do
    @response_create = @create_user_page.create_valid_user(@url, @headers)
end
  
Então('o usuário é criado com sucesso') do
    expect(@response_create['code']).to eq(201)
end
  
Então('é apresentado na lista de usuários') do
    @user_id = parse_response(@response_create)['data']['id']
    @response_list = @search_user_page.search_user_list(@url, @user_id)
    expect(@response_list['data'][0]['id']).to eq @user_id
end

Quando('eu envio dados inválido de um usuário') do
    @response_create = @create_user_page.create_invalid_user(@url, @headers)
end
  
Então('o usuário não é criado') do
    expect(@response_create['code']).to eq(422)
end