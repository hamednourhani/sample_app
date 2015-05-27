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
      expect(response).to hav_tag("title")
    end

  end
  
  describe "GET 'contact'" do
    
    it "should be successful" do
      get 'contact'
      expect(response).to be_success
    end
    
    it "should have the right title" do
      get 'contact'
      expect(renderd).to have_tag("title")
    end
  
  end

  describe "GET 'about'" do
  
    it "should be successful" do
      get 'about'
      expect(response).to be_success
    end

    it "should have the right title" do
      get 'about'
      expect(response).to have_selector("title")
    end

  end

end

