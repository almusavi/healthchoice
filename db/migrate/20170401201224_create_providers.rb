class CreateProviders < ActiveRecord::Migration[5.0]
  def change
    create_table :providers do |t|
    	t.string :accountid
    	t.date :crlauditdate
    	t.string :website
    	t.string :accountrating
    	t.string :accountphone
    	t.string :accountfax
    	t.string :contactid
    	t.string :locprovided
    	t.string :firstname
    	t.string :lastname
    	t.string :title
    	t.string :credentials
    	t.string :phone
    	t.string :crlphonenumber
    	t.string :formerloh
    	t.string :mailingaddress
    	t.string :mailingcity
    	t.string :mailingstate
    	t.string :mailingzip
    	t.float :maillatitude
    	t.float :maillongitude
    	t.string :email
    	t.string :otheremail
    	t.string :description
    	t.string :languages
    	t.string :patientagebracket
    	t.string :insurancepanels
        t.string :specialtyareas
    	t.string :treatmentmodality
    	t.string :treatmentorientation
    	t.string :mailingstreet
    	t.string :accountname
        t.decimal :distance
    	
      t.timestamps
    end
  end
end
