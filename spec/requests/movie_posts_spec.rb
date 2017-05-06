require 'rails_helper'

RSpec.describe "MoviePosts", type: :request do
  describe "GET /movie_posts" do
    it "works! (now write some real specs)" do
      get movie_posts_path
      expect(response).to have_http_status(200)
    end
  end
end
