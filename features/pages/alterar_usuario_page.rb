class ChangeUserPage
    include HTTParty

    def initialize
        @payload = PayloadUser.new
    end

    def change_attribute_user(url, headers, user_id, attribute)
        case attribute
        when 'nome'
            body = @payload.change_name_user
        when 'email'
            body = @payload.change_email_user
        when 'status'
            body = @payload.change_status_user
        end
        HTTParty.put(url + "/#{user_id}", headers: headers, body: body.to_json)
    end

    def change_gender_user(url, headers, user_id, gender)
        if gender == 'Female'
            body = @payload.gender_male
        else
            body = @payload.gender_female
        end
        HTTParty.put(url + "/#{user_id}", headers: headers, body: body.to_json)
    end

    def compare_attribute_user(attribute, changed_user, old_user)
        case attribute
        when 'nome'
            expect(changed_user['data']['name']).not_to eq (old_user['data']['name'])
        end
    end

    def change_invalid_attribute_user(url, headers, user_id, attribute)
        case attribute
        when 'nome'
            body = @payload.change_invalid_name_user
        when 'email'
            body = @payload.change_invalid_email_user
        when 'genero'
            body = @payload.change_invalid_gender_user
        when 'status'
            body = @payload.change_invalid_status_user
        end
        HTTParty.put(url + "/#{user_id}", headers: headers, body: body.to_json)
    end
end