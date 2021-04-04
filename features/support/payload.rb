class PayloadUser
    def create_valid_user
        {
            name: Faker::Name.name,
            email: Faker::Internet.email,
            gender: Faker::Gender.binary_type,
            status: 'Active'
        }
    end

    def create_user_invalid_email
        {
            name: Faker::Name.name,
            email: 'naoeumemail',
            gender: Faker::Gender.binary_type,
            status: 'Active'
        }
    end

    def create_user_invalid_gender
        {
            name: Faker::Name.name,
            email: Faker::Internet.email,
            gender: 'INVALID',
            status: 'Active'
        }
    end

    def create_user_invalid_status
        {
            name: Faker::Name.name,
            email: Faker::Internet.email,
            gender: Faker::Gender.binary_type,
            status: 'INVALID'
        }
    end

    def change_name_user
        {
            name: Faker::Name.name
        }
    end

    def change_email_user
        {
            email: Faker::Internet.email
        }
    end

    def gender_male
        {
            gender: 'Male'
        }
    end

    def gender_female
        {
            gender: 'Female'
        }
    end

    def change_status_user
        {
            status: 'Inactive'
        }
    end

    def change_invalid_name_user
        {
            name: ''
        }
    end
    
    def change_invalid_email_user
        {
            email: ''
        }
    end
    
    def change_invalid_gender_user
        {
            gender: 'INVALID'
        }
    end

    def change_invalid_status_user
        {
            status: 'INVALID'
        }
    end
end