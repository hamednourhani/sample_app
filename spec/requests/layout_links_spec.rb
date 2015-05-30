require "rails_helper"

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
end


