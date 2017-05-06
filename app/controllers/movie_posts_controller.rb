class MoviePostsController < ProtectedController
  before_action :set_movie_post, only: [:show, :update, :destroy]

  # GET /movie_posts
  def index
    @movie_posts = MoviePost.where 'user_id= ?', @current_user.id

    render json: @movie_posts
  end

  # GET /movie_posts/1
  def show
    render json: @movie_post
  end

  # POST /movie_posts
  def create
    @movie_post = MoviePost.new(movie_post_params)
    @movie_post.user_id = @current_user.id
    if @movie_post.save
      render json: @movie_post, status: :created, location: @movie_post
    else
      render json: @movie_post.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /movie_posts/1
  def update
    return false if @movie_post.user_id != @current_user.id
    if @movie_post.update(movie_post_params)
      render json: @movie_post
    else
      render json: @movie_post.errors, status: :unprocessable_entity
    end
  end

  # DELETE /movie_posts/1
  def destroy
    return false if @movie_post.user_id != @current_user.id
    @movie_post.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie_post
      @movie_post = MoviePost.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def movie_post_params
      params.require(:movie_post).permit(:title, :director, :comment)
    end
end
