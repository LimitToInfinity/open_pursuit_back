class HerosController < ApplicationController

    before_action :set_hero, only: [:show, :update, :destroy, :destroy_hero_attributes]
    before_action :destroy_hero_attributes, only: [:destroy]

    def index
        @heros = Hero.all

        render json: HeroSerializer.new(@heros)
    end

    def show
        render json: HeroSerializer.new(@hero)
    end

    def create
        @hero = Hero.new(hero_params)

        if @hero.save
            
            # powers = params[:hero_attributes_params]
            # powers.each do |power|
            #     HeroAttribute.create({ hero_id: @hero.id, power_id: power[:power_id] })
            # end
            
            render json: HeroSerializer.new(@hero), status: :created
        else
            render json: @hero.errors, status: :unprocessable_entity
        end
    end

    def update
        if @hero.update(hero_params)
            render json: HeroSerializer.new(@hero)
        else
            render json: @hero.errors, status: :unprocessable_entity
        end
    end

    def destroy
        @hero.destroy
    end

    private

    def set_hero
        @hero = Hero.find(params[:id])
    end

    def hero_params
        params.require(:hero).permit(:name, :weapon_id, power_ids: [])
    end

    def destroy_hero_attributes
        @hero.hero_attributes.destroy_all
    end

end
