class RestaurantesController < ApplicationController
	def index
		@restaurantes = Restaurante.order :nome

		respond_to do |format|
		    format.html {render "index"}
		    format.json {render json: @restaurantes}
		    format.xml { render xml: @restaurantes}
		end
	end

	def show
		@restaurante = Restaurante.find(params[:id])
	end

	def destroy
		@restaurante = Restaurante.find(params[:id])
		@restaurante.destroy
		redirect_to action: 'index'
	end

	def new
		@restaurante = Restaurante.new		
	end

	def create
		@restaurante = Restaurante.new restaurante_params
		if @restaurante.save
			redirect_to restaurantes_path
		else
			render action: "new"
		end
	end

	def edit
		@restaurante = Restaurante.find(params[:id])
	end

	def update
		@restaurante = Restaurante.find(params[:id])
		@restaurante.update_attributes restaurante_params
		if @restaurante.save
			redirect_to restaurantes_path
		else
			render action: "edit"
		end
	end

	private
	def restaurante_params
		params.require(:restaurante).permit(:nome, :especialidade)
	end
end
