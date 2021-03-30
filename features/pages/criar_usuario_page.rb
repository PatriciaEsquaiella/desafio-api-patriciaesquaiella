class CreateUserPage
    include HTTParty

    def initialize
        @payload = PayloadUser.new
    end

    def create_valid_user(url, headers)
        body = @payload.create_valid_user
        HTTParty.post(url, headers: headers, body: body.to_json)
    end

    def create_invalid_user(url, headers)
        body = @payload.create_invalid_user
        HTTParty.post(url, headers: headers, body: body.to_json)
    end
end