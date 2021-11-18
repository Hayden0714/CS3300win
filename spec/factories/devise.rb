FactoryBot.define do
    sequence :email do |n|
        "email#{n}@example.com"
    end

    sequence :username do |n|
        "user#{n}name"
    end
    

    factory :user do
        email
        password {"testingpassword"}
        firstname {"firstname"}
        lastname {"lastname"}
        username
    end
end