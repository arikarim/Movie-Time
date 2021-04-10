require 'rails_helper'

RSpec.describe Article, type: :model do
  describe 'associations' do
    it { should belong_to(:category) }
  end

  describe 'associations' do
    it { should_not belong_to(:user) }
  end

  describe 'associations' do
    it { should belong_to(:author).class_name('User') }
  end

  describe 'associations' do
    it { should have_many(:votes) }
  end

  describe 'associations' do
    it { should_not have_many(:authors) }
  end

  describe 'validations' do
    it { should validate_presence_of(:title) }
  end

  describe 'validations' do
    it { should validate_presence_of(:text) }
  end

  describe 'validations' do
    it { should validate_presence_of(:image) }
  end
end
