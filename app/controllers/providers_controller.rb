class ProvidersController < ApplicationController

def index
	@providers = Provider.search(params[:cityzip])
	@providers = @providers.paginate(:per_page => 10, :page => params[:page])
end

end