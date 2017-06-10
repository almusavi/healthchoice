class ProvidersController < ApplicationController
	require 'will_paginate/array'
	def index
		if params[:cityzip] == "" && params[:searchname] == ""
			p "***************"
			@error = "You must enter a location"
			p "***************"
			@providers = Provider.all
			render'welcome/index.html.erb'
		elsif params[:searchname] != "" 
			@providers = Provider.searchname(params[:searchname].capitalize)
		elsif params[:cityzip] != "" && params[:insurance][0] == "---"
			@providers = Provider.search(params[:cityzip])
		elsif params[:cityzip] != "" && params[:insurance][0] != ""
			@providers = Provider.search(params[:cityzip]).insurancesearch(params[:insurance][0].upcase)			
		end
		@searchname = params[:searchname]
		@search = params[:cityzip]
		@insurancesearch = params[:insurance]
		@locations = []
		@filters = []
		if params[:searchname] != ""
			@filters << params[:searchname]
		end
		if params[:insurance][0] != ""
			@filters << params[:insurance][0]
		end
		def latlon(city)
			url = 'https://maps.googleapis.com/maps/api/geocode/json?address=' + city + '&key=AIzaSyC_VdOLBtVFbR-6rRP5-hRFXChHa78bDmM'
			citylatlon =[]
			city = open(url).read
			city = JSON.parse(city)
			
			city["results"][0]["geometry"]["location"]
		end

		@providers = @providers.order("lastname")
		@providers = @providers.order('distance asc').paginate(:per_page => 30, :page => params[:page])
	end

	def search
		@locations = []
		@search = params[:search]
		@insurancesearch = params[:insurancesearch].strip
		@filters = []
		@searchname = params[:searchname]
		@providers = Provider.search(params[:search]).insurancesearch(params[:insurancesearch].upcase).searchname(params[:searchname].capitalize)
		# @providers = @providers.insurancesearch(params[:insurancesearch][0].upcase)
		@providers = @providers.locsearch(params[:locprovider])
		@providers = @providers.credentialssearch(params[:credentials])
		@providers = @providers.languagessearch(params[:languages])
		@providers = @providers.agespecialtysearch(params[:agespecialty])
		@providers = @providers.acceptedinsurancesearch(params[:acceptedinsurance])
		@providers = @providers.specialtyareassearch(params[:specialtyareas])
		@providers = @providers.treatmentmodalitysearch(params[:treatmentmodality])
		@providers = @providers.order("lastname")
		@providers = @providers.paginate(:per_page => 30, :page => params[:page])	
		if params[:searchname] != ""
			@filters << params[:searchname]
		end
		if params[:insurancesearch][0] != nil
			@filters << params[:insurancesearch]
		end

		if params[:locprovider] != nil
			params[:locprovider].each do |each_provider|
				@filters << each_provider
			end
		end

		if params[:credentials] != nil
			params[:credentials].each do |each|
				@filters << each
			end
		end

		if params[:languages] != nil
			params[:languages].each do |each|
				@filters << each
			end
		end

		if params[:agespecialty] != nil
			params[:agespecialty].each do |each|
				@filters << each
			end
		end

		if params[:acceptedinsurance] != nil
			params[:acceptedinsurance].each do |each|
				@filters << each
			end
		end

		if params[:specialtyareas] != nil
			params[:specialtyareas].each do |each|
				@filters << each
			end
		end

		if params[:treatmentmodality] != nil
			params[:treatmentmodality].each do |each|
				@filters << each
			end
		end


		
		render "index.html.erb"
	end

	def phonenumber
		@provider = Provider.find(params{:id})
		if request.xhr?
			@provider.clrphonenumber
		end

	end


	def show
		@provider = Provider.find_by(id: params[:id])
	end

	def contact
		p params
		@provider = Provider.find_by(id: params[:provider])
	end

end