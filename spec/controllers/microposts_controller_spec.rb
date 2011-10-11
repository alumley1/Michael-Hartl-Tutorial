require 'spec_helper'

describe "MicropostsController" do
  render_views

  describe "access control" do
    
    it "should deny access to 'create'" do
      post :create
      response.should redirect_to(signin_path) 
    end

    it "should deny access to 'destroy'" do
      post :destroy, :id => 1
      response.should redirect_to(signin_path)
    end
  end
end
