class ProvidersController < ApplicationController
require 'will_paginate/array'
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
	@locations = []
		def latlon(city)
		url = 'https://maps.googleapis.com/maps/api/geocode/json?address=' + city + '&key=AIzaSyDWGnx38pydVSCIUiGUaMnVRrNmZ_jBnZk'
		citylatlon =[]
		city = open(url).read
		city = JSON.parse(city)
		
		city["results"][0]["geometry"]["location"]
	end


# 	def coor_dist(lat1, lon1, lat2, lon2)

# 	  earthRadius = 6371 # Earth's radius in KM

# 	  deltaLat = (lat2-lat1)
# 	  deltaLon = (lon2-lon1)
# 	  deltaLat = conv_deg_rad(deltaLat)
# 	  deltaLon = conv_deg_rad(deltaLon)

# 	  # Calculate square of half the chord length between latitude and longitude
# 	  a = Math.sin(deltaLat/2) * Math.sin(deltaLat/2) +
# 	      Math.cos((lat1/180 * Math::PI)) * Math.cos((lat2/180 * Math::PI)) *
# 	          Math.sin(deltaLon/2) * Math.sin(deltaLon/2);

# 	  # Calculate the angular distance in radians
# 	  c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a))

# 	  distance = earthRadius * c

# 	  distance
# 	end

# 	# convert degrees to radians
# 	def conv_deg_rad(value)
# 	  (value/180) * Math::PI unless value.nil? or value == 0
# 	end


# # puts coor_dist(lat1, lon1, lat2, lon2)

# 	def distance(city1, city2)
# 		url1 = 'https://maps.googleapis.com/maps/api/geocode/json?address=' + city1 + '&key=AIzaSyDWGnx38pydVSCIUiGUaMnVRrNmZ_jBnZk'
# 		url2 = 'https://maps.googleapis.com/maps/api/geocode/json?address=' + city2 + '&key=AIzaSyDWGnx38pydVSCIUiGUaMnVRrNmZ_jBnZk'

# 	end
# 	@providers.each do |each_provider|
# 		lat1 = latlon(@search)["lat"]
# 		lng1 = latlon(@search)["lng"]
# 		each_provider.distance = coor_dist(lat1, lng1, each_provider.maillatitude, each_provider.maillongitude ).to_f.round(3)
# 		each_provider.save!
# 	end
	# @providers = @providers.sort_by{|p| p.distance}
	@providers = @providers.order("lastname")

	@providers.each do |each|
		p each.distance
	end
	@providers = @providers.order('distance asc').paginate(:per_page => 30, :page => params[:page])
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