class ProvidersController < ApplicationController

def index
	@search = params[:cityzip]
	@locations = []
	@providers = Provider.search(params[:cityzip])
	@providers = @providers.paginate(:per_page => 5, :page => params[:page])
end

def show
@provider = Provider.find_by(id: params[:id])
end


end