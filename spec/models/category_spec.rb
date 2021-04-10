require 'rails_helper'

RSpec.describe Category, type: :model do
  describe 'associations' do
    it { should have_many(:articles) }
  end

  describe 'associations' do
    it { should_not have_many(:votes) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
  end
end
