require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validation test' do
    it 'ensures the user entered information correctly' do
      user = User.new(firstname: 'first', lastname: 'last', username: 'username', password: '123', email: 'sample@example.com').save
      expect(user).to eq(false)
    end
  end

  

end
