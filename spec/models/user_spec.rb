require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validation test' do
    it 'ensures the user entered information correctly' do
      user = User.new(firstname: 'first', lastname: 'last', username: 'username', password: '123', email: 'sample@example.com').save
      expect(user).to eq(false)
    end
  end

  context 'ensures presence of a username' do
    it 'ensures the user entered a username' do
      user = User.new(firstname: 'first', lastname: 'last', username: '', password: '123', email: 'sample@example.com').save
      expect(user).to eq(false)
    end
  end

  context 'ensures the presence of a first name'do
    it 'ensures the user entered a first name' do
      user = User.new(firstname: '', lastname: 'last', username: '', password: '123', email: 'sample@example.com').save
      expect(user).to eq(false)
    end
  end

  context 'ensures the presence of a last name'do
    it 'ensures the user entered a last name' do
      user = User.new(firstname: 'first', lastname: '', username: '', password: '123', email: 'sample@example.com').save
      expect(user).to eq(false)
    end
  end

  context 'ensures the presence of a password'do
    it 'ensures the user entered a password' do
      user = User.new(firstname: 'first', lastname: 'last', username: 'username', password: '', email: 'sample@example.com').save
      expect(user).to eq(false)
    end
  end

end
