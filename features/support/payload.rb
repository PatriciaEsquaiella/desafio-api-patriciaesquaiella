class PayloadUser
    def create_valid_user
        {
            name: Faker::Name.name,
            email: Faker::Internet.email,
            gender: Faker::Gender.binary_type,
            status: 'Active'
        }
    end

    def create_invalid_user
        {
            name: Faker::Name.name,
            email: 'naoeumemail',
            gender: Faker::Gender.binary_type,
            status: 'Active'
        }
    end

    def change_name_user
        {
            name: Faker::Name.name
        }
    end
end