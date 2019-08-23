class HeroAttributesController < ApplicationController

    before_action :set_hero_attribute, only: [:destroy]

    def create
        @hero_attribute = HeroAttribute.new(hero_attribute_params)
        
        if @hero_attribute.save
            render json: @hero_attribute, status: :created
        else
            render json: @hero_attribute.errors, status: :unprocessable_entity
        end
    end

    def destroy
        @hero_attribute.destroy
    end

    private

    def set_hero_attribute
        @hero_attribute = HeroAttribute.find(params[:id])
    end

    def hero_attribute_params
        params.require(:hero_attribute).permit(:hero_id, :power_id)
    end

end
