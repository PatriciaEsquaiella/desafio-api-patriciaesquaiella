class ChangeUserPage
    include HTTParty

    def initialize
        @payload = PayloadUser.new
    end

    def change_name_user(url, headers, user_id)
        body = @payload.change_name_user
        HTTParty.put(url + "/#{user_id}", headers: headers, body: body.to_json)
    end
end