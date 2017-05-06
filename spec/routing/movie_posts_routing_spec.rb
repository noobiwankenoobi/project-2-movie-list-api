require "rails_helper"

RSpec.describe MoviePostsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/movie_posts").to route_to("movie_posts#index")
    end

    it "routes to #new" do
      expect(:get => "/movie_posts/new").to route_to("movie_posts#new")
    end

    it "routes to #show" do
      expect(:get => "/movie_posts/1").to route_to("movie_posts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/movie_posts/1/edit").to route_to("movie_posts#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/movie_posts").to route_to("movie_posts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/movie_posts/1").to route_to("movie_posts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/movie_posts/1").to route_to("movie_posts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/movie_posts/1").to route_to("movie_posts#destroy", :id => "1")
    end

  end
end
