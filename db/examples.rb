# frozen_string_literal: true
# This file should contain all the record creation needed to experiment with
# your app during development.
#
# The data can then be loaded with the rake db:examples (or created alongside
# the db with db:nuke_pave).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# %w(antony jeff matt jason).each do |name|
#   email = "#{name}@#{name}.com"
#   next if User.exists? email: email
#   User.create!(email: email,
#                password: 'abc123',
#                password_confirmation: nil)
# end

User.create(email: 'a@a',
            password: 'a',
            password_confirmation: 'a')

example_movies = [
  {
    user_id: 1,
    title: 'Inception',
    title_imdb_url: 'http://www.imdb.com/title/tt1375666/',
    title_rotten_url: 'https://www.rottentomatoes.com/m/inception/',
    director: 'Christopher Nolan',
    director_imdb_url: 'http://www.imdb.com/name/nm0634240/',
    writer: 'Christopher Nolan',
    writer_imdb_url: 'http://www.imdb.com/name/nm0634240/',
    cinematographer: 'Wally Pfister',
    cinematographer_imdb_url: 'http://www.imdb.com/name/nm0002892/',
    music: 'Hans Zimmer',
    music_imdb_url: 'http://www.imdb.com/name/nm0001877/',
    img_url: 'http://cdn.collider.com/wp-content/uploads/Inception-movie-poster-7.jpg'
  },
  {
    user_id: 1,
    title: 'Aliens',
    title_imdb_url: 'http://www.imdb.com/title/tt0090605/',
    title_rotten_url: 'https://www.rottentomatoes.com/m/1000617_aliens',
    director: 'James Cameron',
    director_imdb_url: 'http://www.imdb.com/name/nm0000116/',
    writer: 'James Cameron',
    writer_imdb_url: 'http://www.imdb.com/name/nm0000116/',
    cinematographer: 'Adrian Biddle',
    cinematographer_imdb_url: 'http://www.imdb.com/name/nm0000939/',
    music: 'James Horner',
    music_imdb_url: 'http://www.imdb.com/name/nm0000035/',
    img_url: 'http://www.impawards.com/1986/posters/aliens_ver1_xlg.jpg'
  }
]

example_movies.each do |movie|
  Movie.create(movie)
end
