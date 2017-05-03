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
	@providers = @providers.paginate(:per_page => 30, :page => params[:page])
end

def search
	@locations = []
	@search = params[:search]
	@providers = Provider.search(params[:search])
	@providers = @providers.locsearch(params[:locprovider])
	@providers = @providers.credentialssearch(params[:credentials])
	@providers = @providers.languagessearch(params[:languages])
	@providers = @providers.agespecialtysearch(params[:agespecialty])
	@providers = @providers.acceptedinsurancesearch(params[:acceptedinsurance])
	@providers = @providers.specialtyareassearch(params[:specialtyareas])
	@providers = @providers.treatmentmodalitysearch(params[:treatmentmodality])
	@providers = @providers.paginate(:per_page => 30, :page => params[:page])	
	render "index.html.erb"
end


def show
@provider = Provider.find_by(id: params[:id])
end


end