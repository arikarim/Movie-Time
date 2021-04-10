require 'rails_helper'

RSpec.describe Vote, type: :model do
  describe 'associations' do
    it { should belong_to(:user) }
  end

  describe 'associations' do
    it { should belong_to(:article) }
  end

  describe 'associations' do
    it { should_not belong_to(:category) }
  end

  describe 'associations' do
    it { should_not belong_to(:post) }
  end
end
