class DeleteUserPage
    include HTTParty

    def delete_user(url, headers, user_id)
        HTTParty.delete(url + "/#{user_id}", headers: headers)
    end
end