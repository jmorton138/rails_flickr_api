class StaticPagesController < ApplicationController
    def index
        flickr = Flickr.new ENV['FLICKR_API_KEY'], ENV['FLICKR_SECRET']
        @static_page = StaticPage.all 
        if params[:user_id]
            @photos = flickr.photos.search(:user_id => params[:user_id])
        end
    end
end
