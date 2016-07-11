class GalaxiesController < ApplicationController

	def index
		@galaxies = Galaxy.all
	end

	def show
		@galaxy = Galaxy.find(params[:id])
	end

	def create
		@galaxy = Galaxy.new(galaxy_params)
		if @galaxy.save
			redirect_to @galaxy
		else 
			render 'new'
		end
	end

	def update
		@galaxy = Galaxy.find(params[:id])
		if @galaxy.update(galaxy_params)
			flash[:success] = 'Your Galaxy device has been updated.'
		else
			render 'new'
		end
	end

	def destroy
		@galaxy = Galaxy.find(params[:id])
		@galaxy.destroy
		flash[:success] = 'Your Galaxy device has been destroyed.'
		redirect_to galaxies_path
	end

	private
	def galaxy
		Galaxy.find(params[:id])
	end

	def galaxy_params
		params.require(:galaxy).permit(:name, :network, :size, :image, :price_cents)
	end

end

