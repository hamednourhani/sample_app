
require 'rails_helper'

RSpec.describe PagesController, :type => :controller do 
  

  render_views
  
  describe "GET 'home'" do
    
        
    it "should have the right title" do
      get :home
      expect(response).to be_success
      expect(response).to render_template("home")
      expect(response.body).to include("Home</title>")
      expect(controller.instance_variable_get(:@title)).to eql("Home")
    end

  end
  
  describe "GET 'about'" do
    
    it "should have the right title" do
      get :about
      expect(response).to be_success
      expect(response).to render_template("about")
      expect(response.body).to include("About</title>")
      expect(controller.instance_variable_get(:@title)).to eql("About")
    end

  end

  describe "GET 'contact'" do
    
    it "should have the right title" do
      get :contact
      expect(response).to be_success
      expect(response).to render_template("contact")
      expect(response.body).to include("Contact</title>")
      expect(controller.instance_variable_get(:@title)).to eql("Contact")
    end

  end

  describe "GET 'help'" do
    
    it "should have the right title" do
      get :help
      expect(response).to be_success
      expect(response).to render_template("help")
      expect(response.body).to include("Help</title>")
      expect(controller.instance_variable_get(:@title)).to eql("Help")
    end

  end

end

