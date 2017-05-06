# frozen_string_literal: true
class User < ApplicationRecord
  include Authentication
  has_many :examples, inverse_of: :user, dependent: :destroy
  has_many :movie_posts, inverse_of: :user, dependent: :destroy
end
