class ProvidersController < ApplicationController

def index
	@search = params[:cityzip]
	@locations = []
	@providers = Provider.search(params[:cityzip])
	@providers = @providers.paginate(:per_page => 10, :page => params[:page])
end

end