module Api
  class GenresController < ApplicationController

    def index
      @genres = Genre.all
      render json: @genres.to_json
    end
  end
end
