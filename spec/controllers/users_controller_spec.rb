require 'rails_helper'

RSpec.describe UsersController , :type => :controller do

	
	render_views
	
	describe "GET 'new'" do
		it "should be successful" do
			get 'new'
			expect(response).to be_success
		end
		
		it "should have the right title" do
			get 'new'
			expect(response.body).to include("Sing Up</title>")
		end
	end
end
