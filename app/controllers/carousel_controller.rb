class CarouselController < ApplicationController
    before_action :authenticate_user!, :except => [:home, :show, :reservation]
    
        def add
            carousel = Carousel.new
            carousel.image = params[:image]
            carousel.title = params[:title]
            carousel.baseline = params[:baseline]
            carousel.color = params[:color]
            carousel.offset = params[:offset]
            carousel.restaurant_id = params[:id_restaurant]
    
            @restaurant_id = params[:id_restaurant]
            @saved = carousel.save
    
            if @carousel.save
              flash[:success] = "image a bien été ajouté!"
              redirect_to "http://www.rubyonrails.org"
            else
              render 'new'
            end
          end
        end
    
        def destroy
            carousel = Carousel.find params[:id_carousel]
            @restaurant_id = carousel.restaurant_id
            @destroyed = carousel.destroy
        end

end
