require 'rails_helper'

RSpec.describe 'the signin process', type: :system do
  before do
    driven_by(:rack_test)
  end
  it 'Sign in' do
    user1 = User.create(name: 'ari5', email: 'testuser1@email.com', password: '123456')
    visit root_path
    click_link_or_button 'Sign in'
    fill_in 'user[email]', with: user1.email
    fill_in 'user[password]', with: '123456'
    click_button 'Log in'
    expect(page).to have_text('Signed in successfully.')
  end

  it 'Sign in' do
    user1 = User.create(name: 'ari5', email: 'testuser1@email.com', password: '123456')
    visit root_path
    click_link_or_button 'Sign in'
    fill_in 'user[email]', with: user1.email
    fill_in 'user[password]', with: '12345'
    click_button 'Log in'
    expect(page).not_to have_text('Signed in successfully.')
  end

  it 'Sign out' do
    user1 = User.create(name: 'ari5', email: 'testuser1@email.com', password: '123456')
    visit root_path
    click_link_or_button 'Sign in'
    fill_in 'user[email]', with: user1.email
    fill_in 'user[password]', with: '123456'
    click_button 'Log in'
    expect(page).to have_text('Signed in successfully.')
    click_link_or_button 'Sign out'
    expect(page).to have_text('Signed out successfully.')
  end

  it 'Sign out' do
    user1 = User.create(name: 'ari5', email: 'testuser1@email.com', password: '123456')
    visit root_path
    click_link_or_button 'Sign in'
    fill_in 'user[email]', with: user1.email
    fill_in 'user[password]', with: '123456'
    click_button 'Log in'
    expect(page).to have_text('Signed in successfully.')
    click_link_or_button 'Sign out'
    expect(page).not_to have_text('signed out successfully.')
  end
end
