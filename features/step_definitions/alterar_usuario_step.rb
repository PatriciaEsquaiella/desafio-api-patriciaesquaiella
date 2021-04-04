include Helpers

Dado('tenho um usuário criado') do
    @response_create = @create_user_page.create_valid_user(@url, @headers)
    expect(@response_create['code']).to eq(201)
end

Quando('envio um {string} válido para alterar um usuário') do |dado|
    @user_id = parse_response(@response_create)['data']['id']
    if dado == 'genero'
        gender = @response_create['data']['gender']
        @response_change = @change_user_page.change_gender_user(@url, @headers, @user_id, gender)
    else
        @response_change = @change_user_page.change_attribute_user(@url, @headers, @user_id, dado)
    end
end
  
Então('o usuário é alterado com sucesso') do
    expect(@response_change['code']).to eq(200)
end
  
Então('busco por esse usuário') do
    @response_search = @search_user_page.search_user(@url, @user_id)
end
  
Então('é apresentado com o {string} alterado') do |dado|
    case dado
    when 'nome'
        expect(@response_search['data']['name']).not_to eq (@response_create['data']['name'])
    when 'email'
        expect(@response_search['data']['email']).not_to eq (@response_create['data']['email'])
    when 'genero'
        expect(@response_search['data']['gender']).not_to eq (@response_create['data']['gender'])
    when 'status'
        expect(@response_search['data']['status']).not_to eq (@response_create['data']['status'])
    end
end

Quando('envio um {string} inválido para alterar um usuário') do |dado|
    @user_id = parse_response(@response_create)['data']['id']
    @response_change = @change_user_page.change_invalid_attribute_user(@url, @headers, @user_id, dado)
end
  
Então('o usuário não é alterado com sucesso') do
    expect(@response_change['code']).to eq(422)
end