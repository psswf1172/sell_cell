class IphonesController < ApplicationController

	def index
		@iphones = Iphone.all
	end

	def show
		@iphone = Iphone.find(params[:id])
	end

	def create
		@iphone = Iphone.new(iphone_params)
		if @iphone.save
			redirect_to @iphone
		else 
			render 'new'
		end
	end

	def update
		@iphone = Iphone.find(params[:id])
		if @iphone.update(galaxy_params)
			flash[:success] = 'Your iphone device has been updated.'
		else
			render 'new'
		end
	end

	def destroy
		@iphone = Iphone.find(params[:id])
		@iphone.destroy
		flash[:success] = 'Your iphone device has been destroyed.'
		redirect_to iphones_path
	end

	private
	def iphone
		Iphone.find(params[:id])
	end

	def iphone_params
		params.require(:iphone).permit(:name, :network, :size, :image, :price_cents)
	end



end
