module Api
  class ShortensController < ApplicationController

    def create
      @urls = Url.all
    end
  end
end
