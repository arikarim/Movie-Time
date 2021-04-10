require 'rails_helper'

RSpec.describe 'the signin process', type: :system do
  before do
    driven_by(:rack_test)
  end
  it 'Create category' do
    user1 = User.create(name: 'ari5', email: 'testuser1@email.com', password: '123456')
    visit root_path
    click_link_or_button 'Sign in'
    fill_in 'user[email]', with: user1.email
    fill_in 'user[password]', with: '123456'
    click_button 'Log in'
    click_link_or_button 'New Category'
    fill_in 'name', with: 'social'
    click_button 'create'
    expect(page).to have_text('category created')
  end

  it 'Create category' do
    user1 = User.create(name: 'ari5', email: 'testuser1@email.com', password: '123456')
    visit root_path
    click_link_or_button 'Sign in'
    fill_in 'user[email]', with: user1.email
    fill_in 'user[password]', with: '123456'
    click_button 'Log in'
    click_link_or_button 'New Category'
    fill_in 'name', with: ''
    click_button 'create'
    expect(page).not_to have_text('category created')
  end
end
