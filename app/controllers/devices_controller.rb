class DevicesController < ApplicationController
  
  def index
  	@devices = Device.all
  end

  def show
  	@device = Device.find(params[:id])
  end

  def create
  	@device = Device.new(device_params)
  	if @device.save
  		redirect_to @device
  	else
  		render 'new'
  	end
  end

  def update
  	@device = Device.find(params[:id])
  	if @device.update(device_params)
  		flash[:success] = 'Your device has been updated.'
  	else
  		render 'new'
  	end
  end

  def destroy
  	@device = Device.find(params[:id])
  	@device.destroy
  	flash[:success] = 'Your device has been destroyed.'
  	redirect_to devices_path
  end

  private
  def device
  	Device.find(params[:id])
  end

  def device_params
  	params.require(:device).permit(:model, :name, :network, :size, :image, :price_cents)
  end

end
