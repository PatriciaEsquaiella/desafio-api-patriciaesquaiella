class CreateUserPage
    include HTTParty

    def initialize
        @payload = PayloadUser.new
    end

    def create_valid_user(url, headers)
        body = @payload.create_valid_user
        HTTParty.post(url, headers: headers, body: body.to_json)
    end

    def create_user_invalid_email(url, headers)
        body = @payload.create_user_invalid_email
        HTTParty.post(url, headers: headers, body: body.to_json)
    end

    def create_user_invalid_gender(url, headers)
        body = @payload.create_user_invalid_gender
        HTTParty.post(url, headers: headers, body: body.to_json)
    end

    def create_user_invalid_status(url, headers)
        body = @payload.create_user_invalid_status
        HTTParty.post(url, headers: headers, body: body.to_json)
    end
end