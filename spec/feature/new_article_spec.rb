require 'rails_helper'

RSpec.describe 'the signin process', type: :system do
  before do
    driven_by(:rack_test)
  end

  it 'Create category' do
    user1 = User.create(name: 'ari5', email: 'testuser1@email.com', password: '123456')
    visit root_path
    click_link_or_button 'sign in'
    fill_in 'user[email]', with: user1.email
    fill_in 'user[password]', with: '123456'
    click_button 'Log in'
    click_link_or_button 'New Category'
    fill_in 'name', with: 'social'
    click_button 'create'
    expect(page).to have_text('category created')
  end

  it 'Create article' do
    user1 = User.create(name: 'ari5', email: 'testuser1@email.com', password: '123456')
    visit root_path
    click_link_or_button 'sign in'
    fill_in 'user[email]', with: user1.email
    fill_in 'user[password]', with: '123456'
    click_button 'Log in'
    click_link_or_button 'New Category'
    fill_in 'name', with: 'social'
    click_button 'create'
    expect(page).to have_text('category created')
    click_link_or_button 'New Article'
    fill_in 'Title', with: 'shutter island'
    fill_in 'Text', with: 'is one of the best'
    attach_file 'Image', "#{Rails.root}/img/test.jpg"
    click_button 'create'
    expect(page).to have_text('Article created')
  end

  it 'vote article' do
    user1 = User.create(name: 'ari5', email: 'testuser1@email.com', password: '123456')
    visit root_path
    click_link_or_button 'sign in'
    fill_in 'user[email]', with: user1.email
    fill_in 'user[password]', with: '123456'
    click_button 'Log in'
    click_link_or_button 'New Category'
    fill_in 'name', with: 'social'
    click_button 'create'
    expect(page).to have_text('category created')
    click_link_or_button 'New Article'
    fill_in 'Title', with: 'shutter island'
    fill_in 'Text', with: 'is one of the best'
    attach_file 'Image', "#{Rails.root}/img/test.jpg"
    click_button 'create'
    expect(page).to have_text('Article created')
    visit root_path
    click_link_or_button 'social'
    click_link_or_button 'Vote'
    expect(page).to have_text('You Voted this article')
  end
end
