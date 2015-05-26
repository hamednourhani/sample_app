# require 'rails_helper'

# RSpec.describe PagesController, type: :controller do

#   describe "GET #home" do
#     it "returns http success" do
#       get :home
#       expect(response).to have_http_status(:success)
#     end
#   end

#   describe "GET #contact" do
#     it "returns http success" do
#       get :contact
#       expect(response).to have_http_status(:success)
#     end
#   end

#   describe "GET #about" do
#     it "returns http success" do
#       get :about
#       expect(response).to have_http_status(:success)
#     end
#   end

# end

require 'rails_helper'

RSpec.describe PagesController, type: :controller do 
  
 
  render_views
  
  describe "GET 'home'" do
    
    it "should be successful" do
      get 'home'
      expect(response).to be_success
    end
    
    it "should have the right title" do
      get 'home'
      expect(response).to have_selector("title",
      :content => "| Home")
    end

  end
  
  describe "GET 'contact'" do
    
    it "should be successful" do
      get 'contact'
      expect(response).to be_success
    end
    
    it "should have the right title" do
      get 'contact'
      expect(response).to have_tag("title",
         :content =>"Ruby on Rails Tutorial Sample App | Contact")
    end
  
  end

  describe "GET 'about'" do
  
    it "should be successful" do
      get 'about'
      expect(response).to be_success
    end

    it "should have the right title" do
      get 'about'
      expect(response).to have_selector("title",
      :content =>
      "Ruby on Rails Tutorial Sample App | About")
    end

  end

end

