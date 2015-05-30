require "rails_helper"
require 'capybara/rails'
require 'capybara/rspec'


RSpec.describe "sampleApp Router", :type => :routing do
  
 	it "should have a Home page at '/'" do
		expect(:get => "/").to route_to(:controller => "pages", :action =>"home")
	end

	it "should have a Contact page at '/contact'" do
		expect(:get => "/contact").to route_to(:controller => "pages", :action =>"contact")
	end
	
	it "should have an About page at '/about'" do
		expect(:get => "/about").to route_to(:controller => "pages", :action =>"about")
	end
	
	it "should have a Help page at '/help'" do
		expect(:get => "/help").to route_to(:controller => "pages", :action =>"help")
	end

	it "should have the right links on the layout" do
		visit root_path
		click_link "About"
		expect(page).to have_content 'Success'
		click_link "Help"
		expect(page).to have_content 'Success'
		click_link "Contact"
		expect(page).to have_content 'Success'
		click_link "Home"
		expect(page).to have_content 'Success'
		click_link "Sign up now!"
		expect(page).to have_content 'Success'
	end
end


