class WelcomeController < ApplicationController
	def index
		flash[:notice] = "Have a nice day!"	
	end
end
