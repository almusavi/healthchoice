module Distance

	def latlon(city)
		url = 'https://maps.googleapis.com/maps/api/geocode/json?address=' + city + '&key=AIzaSyCkPs8L-7I6XBYnIRMtp0skiMfqoBdk-rk'
		citylatlon =[]
		city = open(url).read
		city = JSON.parse(city)
		p "****"
		p city
		p "****"
		city["results"][0]["geometry"]["location"]
	end


	def coor_dist(lat1, lon1, lat2, lon2)

	  earthRadius = 6371 # Earth's radius in KM

	  deltaLat = (lat2-lat1)
	  deltaLon = (lon2-lon1)
	  deltaLat = conv_deg_rad(deltaLat)
	  deltaLon = conv_deg_rad(deltaLon)

	  # Calculate square of half the chord length between latitude and longitude
	  a = Math.sin(deltaLat/2) * Math.sin(deltaLat/2) +
	      Math.cos((lat1/180 * Math::PI)) * Math.cos((lat2/180 * Math::PI)) *
	          Math.sin(deltaLon/2) * Math.sin(deltaLon/2);

	  # Calculate the angular distance in radians
	  c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a))

	  distance = earthRadius * c

	  distance
	end

# convert degrees to radians
def conv_deg_rad(value)
  (value/180) * Math::PI unless value.nil? or value == 0
end


# puts coor_dist(lat1, lon1, lat2, lon2)

	def distance(city1, city2)
		url1 = 'https://maps.googleapis.com/maps/api/geocode/json?address=' + city1 + '&key=AIzaSyCkPs8L-7I6XBYnIRMtp0skiMfqoBdk-rk'
		url2 = 'https://maps.googleapis.com/maps/api/geocode/json?address=' + city2 + '&key=AIzaSyCkPs8L-7I6XBYnIRMtp0skiMfqoBdk-rk'

	end
end
