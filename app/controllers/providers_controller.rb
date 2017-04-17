class ProvidersController < ApplicationController

def index
	if params[:cityzip] == ""
		@error = "You must enter a location"
		render "welcome/index"
	elsif params[:cityzip] != "" && params[:insurance][0] == ""
		@providers = Provider.search(params[:cityzip])
	elsif params[:cityzip] != "" && params[:insurance][0] != ""
		@providers = Provider.search(params[:cityzip]).insurancesearch(params[:insurance][0].upcase)			
	end
	@search = params[:cityzip]
	@insurancesearch = params[:insurance]
	p "*****************"
	p params
	p "****************"
	@locations = []
	@providers = @providers.paginate(:per_page => 5, :page => params[:page])
end

def show
@provider = Provider.find_by(id: params[:id])
end


end