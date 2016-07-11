class IpadsController < ApplicationController


	def index
		@ipads = Ipad.all
	end

	def show
		@ipad = Ipad.find(params[:id])
	end

	def create
		@ipad = Ipad.new(ipad_params)
		if @ipad.save
			redirect_to @ipad
		else 
			render 'new'
		end
	end

	def update
		@ipad = Ipad.find(params[:id])
		if @ipad.update(galaxy_params)
			flash[:success] = 'Your iPad device has been updated.'
		else
			render 'new'
		end
	end

	def destroy
		@ipad = Ipad.find(params[:id])
		@ipad.destroy
		flash[:success] = 'Your iPad device has been destroyed.'
		redirect_to ipads_path
	end

	private
	def ipad
		Ipad.find(params[:id])
	end

	def ipad_params
		params.require(:ipad).permit(:name, :network, :size, :image, :price_cents)
	end


end
