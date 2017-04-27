require 'csv'
require 'date'
Provider.delete_all

csv = SmarterCSV.process("providers.csv", :row_sep => :auto, :col_sep => ",")

csv.each do |row|
	Provider.create!(row.to_hash)
	# Provider.create!(accountid: row['accountid'], crlauditdate: row['crlauditdate'], website: row['website'], accountrating: row['accountrating'], accountphone: row['accountphone'], accountfax: row['accountfax'], billingstreet: row['billingstreet'], billingaddressline3: row['billingaddressline3'], billingcity: row['billingcity'], billingzip: row['billingzip'], billingstate: row['billingstate'], billlatitude: row['billlatitude'], billlongitude: row['billlongitude'], contactid: row['contactid'], locprovided: row['locprovided'], firstname: row['firstname'], lastname: row['lastname'], title: row['title'], credentials: row['credentials'], phone: row['phone'], crlphone: row['crlphone'], formerLOH: row['formerLOH'], mailingaddressline1: row['mailingaddressline1'], mailingcity: row['mailingcity'], mailingstate: row['mailingstate'], mailingzip: row['mailingzip'], maillatitude: row['maillatitude'], maillongitude: row['maillongitude'], email: row['email'], otheremail: row['otheremail'], description: row['description'], languages: row['languages'], patientagebracket: row['patientagebracket'], insurancepanels: row['insurancepanels'], specialtyareas: row['specialtyareas'], treatmentmodality: row['treatmentmodality'], treatmentorientation: row['treatmentorientation'], treatmentphilosophy: row['treatmentphilosophy'], mailingstreet: row['mailingstreet'], accountname: row['accountname'])

	# Provider.create!(accountid: row[0], crlauditdate: row[1], website: row[2], accountrating: row[3], accountphone: row[4], accountfax: row[5], billingstreet: row[6], billingaddressline3: row[7], billingcity: row[8], billingzip: row[9], billingstate: row[10], billlatitude: row[11], billlongitude: row[12], contactid: row[13], locprovided: row[14], firstname: row[15], lastname: row[16], title: row[17], credentials: row[18], phone: row[19], crlphone: row[20], formerLOH: row[21], mailingaddressline1: row[22], mailingcity: row[23], mailingstate: row[24], mailingzip: row[25], maillatitude: row[26], maillongitude: row[27], email: row[28], otheremail: row[29], description: row[30], languages: row[31], patientagebracket: row[32], insurancepanels: row[33], specialtyareas: row[34], treatmentmodality: row[35], treatmentorientation: row[36], treatmentphilosophy: row[37], mailingstreet: row[38], accountname: row[39])
end

# require 'csv'
# require 'date'
# Provider.delete_all
# # csv = SmarterCSV.process('providers.csv')
# CSV.foreach('providers.csv', headers: true, encoding:'iso-8859-1:utf-8') do |row|
# 	Provider.create!(row.to_hash)
# 	# Provider.create!(accountid: row['accountid'], crlauditdate: row['crlauditdate'], website: row['website'], accountrating: row['accountrating'], accountphone: row['accountphone'], accountfax: row['accountfax'], billingstreet: row['billingstreet'], billingaddressline3: row['billingaddressline3'], billingcity: row['billingcity'], billingzip: row['billingzip'], billingstate: row['billingstate'], billlatitude: row['billlatitude'], billlongitude: row['billlongitude'], contactid: row['contactid'], locprovided: row['locprovided'], firstname: row['firstname'], lastname: row['lastname'], title: row['title'], credentials: row['credentials'], phone: row['phone'], crlphone: row['crlphone'], formerLOH: row['formerLOH'], mailingaddressline1: row['mailingaddressline1'], mailingcity: row['mailingcity'], mailingstate: row['mailingstate'], mailingzip: row['mailingzip'], maillatitude: row['maillatitude'], maillongitude: row['maillongitude'], email: row['email'], otheremail: row['otheremail'], description: row['description'], languages: row['languages'], patientagebracket: row['patientagebracket'], insurancepanels: row['insurancepanels'], specialtyareas: row['specialtyareas'], treatmentmodality: row['treatmentmodality'], treatmentorientation: row['treatmentorientation'], treatmentphilosophy: row['treatmentphilosophy'], mailingstreet: row['mailingstreet'], accountname: row['accountname'])

# 	# Provider.create!(accountid: row[0], crlauditdate: row[1], website: row[2], accountrating: row[3], accountphone: row[4], accountfax: row[5], billingstreet: row[6], billingaddressline3: row[7], billingcity: row[8], billingzip: row[9], billingstate: row[10], billlatitude: row[11], billlongitude: row[12], contactid: row[13], locprovided: row[14], firstname: row[15], lastname: row[16], title: row[17], credentials: row[18], phone: row[19], crlphone: row[20], formerLOH: row[21], mailingaddressline1: row[22], mailingcity: row[23], mailingstate: row[24], mailingzip: row[25], maillatitude: row[26], maillongitude: row[27], email: row[28], otheremail: row[29], description: row[30], languages: row[31], patientagebracket: row[32], insurancepanels: row[33], specialtyareas: row[34], treatmentmodality: row[35], treatmentorientation: row[36], treatmentphilosophy: row[37], mailingstreet: row[38], accountname: row[39])
# end