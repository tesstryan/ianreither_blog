class WeathersController < ApplicationController

  def index
    @weathers = Weather.all
  end

  def show
    @weather = Weather.find_by(id: params[:id])
  end

  def new
  end

  def create
    @weather = Weather.new
    @weather.city = params[:city]
    @weather.state = params[:state]
    @weather.current_temperature = params[:current_temperature]

    if @weather.save
      redirect_to weathers_url, notice: "Weather created successfully."
    else
      render 'new'
    end
  end

  def edit
    @weather = Weather.find_by(id: params[:id])
  end

  def update
    @weather = Weather.find_by(id: params[:id])
    @weather.city = params[:city]
    @weather.state = params[:state]
    @weather.current_temperature = params[:current_temperature]

    if @weather.save
      redirect_to weathers_url, notice: "Weather updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @weather = Weather.find_by(id: params[:id])
    @weather.destroy

    redirect_to weathers_url, notice: "Weather deleted."
  end
end
