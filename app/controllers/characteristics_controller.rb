class CharacteristicsController < ApplicationController

  def index
    @characteristics = Characteristic.all
  end

  def show
    @characteristic = Characteristic.find_by(id: params[:id])
  end

  def new
  end

  def create
    @characteristic = Characteristic.new
    @characteristic.age = params[:age]
    @characteristic.city = params[:city]
    @characteristic.state = params[:state]   
    @characteristic.zip_code = params[:zip_code]

    if @characteristic.save
      redirect_to characteristics_url, notice: "Characteristic created successfully."
    else
      render 'new'
    end
  end

  def edit
    @characteristic = Characteristic.find_by(id: params[:id])
  end

  def update
    @characteristic = Characteristic.find_by(id: params[:id])
    @characteristic.age = params[:age]
    @characteristic.city = params[:city]
    @characteristic.state = params[:state]    
    @characteristic.zip_code = params[:zip_code]

    if @characteristic.save
      redirect_to characteristics_url, notice: "Characteristic updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @characteristic = Characteristic.find_by(id: params[:id])
    @characteristic.destroy

    redirect_to characteristics_url, notice: "Characteristic deleted."
  end

  
end
