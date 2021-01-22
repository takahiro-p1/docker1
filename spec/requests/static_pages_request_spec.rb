require 'rails_helper'

RSpec.describe "StaticPages", type: :request do

    it 'Should get home' do
        get static_pages_home_url
        assert_response :success
        assert_select "title" , "Home | Ruby on Rails Tutorial Sample App"
    end

    it 'Should get help' do
        get static_pages_help_url
        assert_response :success
        assert_select "title" , "Help | Ruby on Rails Tutorial Sample App"
    end

    it 'Should get about' do
        get static_pages_about_url
        assert_response :success
        assert_select "title" , "About | Ruby on Rails Tutorial Sample App"

    end
end
