class FormsController < ApplicationController

	def index
		@forms = Form.all
	end

	def new
		@form = Form.new
	end

	def create
		@form = Form.new(params[:form].permit(:firstname, :lastname, :gender, :address, :email, :country, :state, :goal))
		if @form.save
			redirect_to forms_path
		end
	end

	def destroy
		@form = Form.find_by_id(params[:id])
		if @form.destroy
			redirect_to forms_path
		end
	
		
	end

end
