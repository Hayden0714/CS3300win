FactoryBot.define do
    factory :user do
        id {1}
        email {"test@example.com"}
        password {"qwerty"}
        #can add other requirements for building a user such as admin status if needed
    end
end