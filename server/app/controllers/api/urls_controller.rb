module Api
  class UrlsController < ApplicationController

    def index
      @urls = Url.all
      render json: @urls
    end

    def show
      @url = Url.find_by(code: params[:code])
      render json: @url
    end

    def create
      #@url = Url.new(url_params)
      @url = Url.find_or_create_by(url_params)
      puts @url.inspect
      if @url.valid?
        render json: @url
      else
        render json: @url.errors.full_messages
      end
    end


    private

    def url_params
      params.require(:url).permit(:name)
    end
  end
end
