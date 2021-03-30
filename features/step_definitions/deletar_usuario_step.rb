Quando('deleto um usuário') do
    @user_id = parse_response(@response_create)['data']['id']
    @response_delete = @delete_user_page.delete_user(@url, @headers, @user_id)
end
  
Então('o usuário é excluído com sucesso') do
    expect(@response_delete.code).to eq(200)
end
  
Então('não é apresentado na lista de usuários') do
    @response_search = @search_user_page.search_user_list(@url, @user_id)
    expect(@response_search['data']).to be_empty
end