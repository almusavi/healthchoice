class Provider < ApplicationRecord

	acts_as_mappable :lat_column_name => :maillatitude, :lng_column_name => :maillongitude

	def self.search(search)
		if search != ""
			providers = self.within(10, :origin => search)	
		else
			self.all
		end
	end

	def self.insurancesearch(insurancesearch)
		if insurancesearch != ""
			self.where("insurancepanels LIKE ?", "%#{insurancesearch}%").all	
		else
			self.all
		end
	end

end
