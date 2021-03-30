require 'httparty'

Before do
    @create_user_page = CreateUserPage.new
    @search_user_page = SearchUserPage.new
    @change_user_page = ChangeUserPage.new
    @delete_user_page = DeleteUserPage.new
end