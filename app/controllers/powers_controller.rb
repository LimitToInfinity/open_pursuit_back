class PowersController < ApplicationController

    before_action :set_power, only: [:show, :update, :destroy]

    def index
        @powers = Power.all

        render json: PowerSerializer.new(@powers)
    end

    # def show
    #     render json: PowerSerializer.new(@power)
    # end

    # def create
    #     @power = power.new(power_params)
        
    #     if @power.save
    #         render json: PowerSerializer.new(@power), status: :created
    #     else
    #         render json: @power.errors, status: :unprocessable_entity
    #     end
    # end

    # def update
    #     if @power.update(power_params)
    #         render json: PowerSerializer.new(@power), status: :updated
    #     else
    #         render json: @power.errors, status: :unprocessable_entity
    #     end
    # end

    # def destroy
    #     @power.destroy
    # end

    # private

    # def set_power
    #     @power = power.find(params[:id])
    # end

    # def power_params
    #     params.require(:power).permit(:name, :weapon_id, power_ids: [])
    # end

end
