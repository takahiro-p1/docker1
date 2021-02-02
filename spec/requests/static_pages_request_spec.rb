require 'rails_helper'

RSpec.describe "StaticPages", type: :request do

    it 'Should get home' do
        get root_path
        assert_response :success
        assert_select "title" , "Ruby on Rails Tutorial Sample App"
    end

    it 'Should get help' do
        get help_path
        assert_response :success
        assert_select "title" , "Help | Ruby on Rails Tutorial Sample App"
    end

    it 'Should get about' do
        get about_path
        assert_response :success
        assert_select "title" , "About | Ruby on Rails Tutorial Sample App"

    end

    it 'Should get contact' do
        get contact_path
        assert_response :success
        assert_select "title" , "Contact | Ruby on Rails Tutorial Sample App"

    end

end
