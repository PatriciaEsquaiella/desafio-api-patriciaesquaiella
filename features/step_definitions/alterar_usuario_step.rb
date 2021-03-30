include Helpers

Dado('tenho um usuário criado') do
    @response_create = @create_user_page.create_valid_user(@url, @headers)
    expect(@response_create['code']).to eq(201)
end

Quando('eu envio um nome válido para alterar um usuário') do
    @user_id = parse_response(@response_create)['data']['id']
    @response_change = @change_user_page.change_name_user(@url, @headers, @user_id)
end
  
Então('o usuário é alterado com sucesso') do
    expect(@response_change['code']).to eq(200)
end
  
Então('busco por esse usuário') do
    @response_search = @search_user_page.search_user(@url, @user_id)
end
  
Então('é apresentado com o nome alterado') do
    user_name_old = @response_create['data']['name']
    user_name_new = @response_change['data']['name']
    expect(@user_name_new).not_to eq user_name_old 
end