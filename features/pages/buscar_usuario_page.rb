class SearchUserPage
    include HTTParty

    def search_user_list(url, user_id)
        query = {id: user_id}
        HTTParty.get(url, query: query)
    end

    def search_user(url, user_id)
        HTTParty.get(url + "#{user_id}")
    end
end