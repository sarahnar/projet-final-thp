class OpeningController < ApplicationController
    before_action :authenticate_user!, :except => [:home, :show, :reservation]

    def add
        open = Opening.new
        open.open_at = params[:open_at]
        open.close_at = params[:close_at]
        open.restaurant_id = params[:id_restaurant]

        @restaurant_id = params[:id_restaurant]
        @saved = open.save
    end

    def destroy
        open = Opening.find params[:id_opening]
        @restaurant_id = open.restaurant_id
        @destroyed = open.destroy
    end
end