class ProvidersController < ApplicationController

def index
	@search = params[:cityzip]
	@insurancesearch = params[:insurance]

	@locations = []
	@providers = Provider.search(params[:cityzip])
	@providersarray = []
	if params[:insurance][0] != ""
		@providers.reject {|provider| provider.insurancepanels.include? @insurancesearch[0].upcase}
	end
	@providers = @providers.paginate(:per_page => 5, :page => params[:page])
end

def show
@provider = Provider.find_by(id: params[:id])
end


end