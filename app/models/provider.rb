class Provider < ApplicationRecord
	has_many :clicks
	acts_as_mappable :lat_column_name => :maillatitude, :lng_column_name => :maillongitude

	def self.search(search)
		if search != ""
			providers = self.within(10, :origin => search)	
		else
			self.all
		end
	end

	def fullname
		"#{firstname} #{lastname}"
	end

	def self.searchname(name)
		if name != ""
			self.where("firstname || ' ' || lastname like :s", :s => "%#{name}")
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

	def self.acceptedinsurancesearch(insurancesearch)
		if insurancesearch != nil
			insurancesearch.each do |each_insurance|
				@providers = self.where("insurancepanels LIKE ?", "%#{each_insurance}%").all	
			end
		else
			@providers = self.all
		end
		@providers
	end


	def self.locsearch(locsearch)
		if locsearch != nil 
			locsearch.each do |each_loc|
				@providers = self.where("locprovided LIKE ?", "%#{each_loc}%").all
			end
		else
			@providers = self.all
		end
			@providers
	end

	def self.credentialssearch(credentialssearch)
		if credentialssearch != nil 
			credentialssearch.each do |each_credentials|
				@providers = self.where("credentials LIKE ?", "%#{each_credentials}%").all
			end
		else
			@providers = self.all
		end
			@providers
	end

	def self.languagessearch(languagessearch)
		if languagessearch != nil 
			languagessearch.each do |each_languages|
				@providers = self.where("languages LIKE ?", "%#{each_languages}%").all
			end
		else
			@providers = self.all
		end
			@providers
	end

	def self.agespecialtysearch(agespecialtysearch)
		if agespecialtysearch != nil 
			agespecialtysearch.each do |each_agespecialty|
				@providers = self.where("patientagebracket LIKE ?", "%#{each_agespecialty}%").all
			end
		else
			@providers = self.all
		end
			@providers
	end

	def self.specialtyareassearch(specialtyareassearch)
		if specialtyareassearch != nil 
			specialtyareassearch.each do |each_specialtyareas|
				@providers = self.where("specialtyareas LIKE ?", "%#{each_specialtyareas}%").all
			end
		else
			@providers = self.all
		end
			@providers
	end

	def self.treatmentmodalitysearch(treatmentmodalitysearch)
		if treatmentmodalitysearch != nil 
			treatmentmodalitysearch.each do |each_treatmentmodality|
				@providers = self.where("treatmentmodality LIKE ?", "%#{each_treatmentmodality}%").all
			end
		else
			@providers = self.all
		end
			@providers
	end

end
