class MoviesController < ProtectedController
  before_action :set_movie, only: [:show, :update, :destroy]

  # GET /movies
  def index
    @movies = Movie.all

    render json: @movies
  end

  # GET /movies/1
  def show
    render json: @movie
  end

  # POST /movies
  def create
    @movie = Movie.new(movie_params)
    @movie.user_id = @current_user.id
    if @movie.save
      render json: @movie, status: :created, location: @movie
    else
      render json: @movie.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /movies/1
  def update
    return false if @movie.user_id != @current_user.id
    if @movie.update(movie_params)
      render json: @movie
    else
      render json: @movie.errors, status: :unprocessable_entity
    end
  end

  # DELETE /movies/1
  def destroy
    return false if @movie.user_id != @current_user.id
    @movie.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_movie
    @movie = Movie.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def movie_params
    params.require(:movie).permit(:user_id, :title, :title_imdb_url,
                                  :title_rotten_url, :director,
                                  :director_imdb_url, :writer, :writer_imdb_url,
                                  :cinematographer, :cinematographer_imdb_url,
                                  :music, :music_imdb_url, :img_url)
  end
end
