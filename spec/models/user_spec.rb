require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:email) }
  end

  describe 'validations' do
    it { should validate_presence_of(:password) }
  end

  describe 'associations' do
    it { should have_many(:articles) }
  end

  describe 'associations' do
    it { should have_many(:votes) }
  end
end
