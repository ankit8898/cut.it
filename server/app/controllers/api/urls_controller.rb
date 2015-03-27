module Api
  class UrlsController < ApplicationController

    def index
      @urls = Url.all
      render json: @urls
    end

    def create
      logger.info("------#{url_params}")
      @url = Url.new(url_params)
      if @url.save
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
