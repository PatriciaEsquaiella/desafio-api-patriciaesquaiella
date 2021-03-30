module Helpers
    def parse_response(response)
      JSON.parse(response.body)
    end

    def url_api_users
      url = URL['rote_users']
    end

    def headers_api_users
      headers = {'Authorization' => TOKEN['token'], 'Content-Type' => 'application/json'}
    end
end