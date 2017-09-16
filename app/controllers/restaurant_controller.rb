class RestaurantController < ApplicationController
    before_action :authenticate_user!, :except => [:home, :show, :reservation]

    def home
        @restaurants = Restaurant.take 5
    end

    def list
        @id = current_user.id
        @restaurants = Restaurant.where(user_id: @id)
    end

    def show
        @restaurant = Restaurant.find params[:id_restaurant]

        @carousels = Carousel.where(restaurant_id: params[:id_restaurant])

        @openings = Opening.where(restaurant_id: params[:id_restaurant])

        opened = false
        @openings.each do |opening|
            if Time.now.hour >= opening.open_at && Time.now.hour < opening.close_at
                opened = true 
            end
        end
        @isOpen = opened
    end

    def reservation
        res = Reservation.new
        res.when = DateTime.new(2017, Time.now.month, Time.now.day + params[:when_date].to_i, params[:when_hour].to_i, 0, 0)
        res.phone = params[:phone]
        res.person = params[:person].to_i
        res.restaurant_id = params[:id_restaurant].to_i
        @id = res.restaurant_id
        @result = res.save()
    end

    def form
        @isEdit = false
        if params[:id_restaurant]
            @isEdit = true
            @restaurant = Restaurant.find params[:id_restaurant]
            @openings = Opening.where(restaurant_id: params[:id_restaurant])
            @reservations = Reservation.where(restaurant_id: params[:id_restaurant])
        end
    end

    def create
        resto = Restaurant.new
        resto.name = params[:name]
        resto.logo = params[:logo]
        resto.city = params[:city]
        resto.zipcode = params[:zipcode]
        resto.address = params[:address]
        resto.phone = params[:phone]
        resto.place = params[:place]
        resto.menu = params[:menu]
        resto.user_id = current_user.id
        @saved = resto.save()
    end

    def edit
    end

    def destroy
        resto = Restaurant.find params[:id_restaurant]
        if current_user.id == resto.user_id
            resto.destroy
        end
    end
end
