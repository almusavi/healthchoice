class CreateProviders < ActiveRecord::Migration[5.0]
  def change
    create_table :providers do |t|
    	t.string :accountid
    	t.date :crlauditdate
    	t.string :website
    	t.string :accountrating
    	t.string :accountphone
    	t.string :accountfax
    	t.string :billingstreet
    	t.string :billingaddressline3
    	t.string :billingcity
    	t.string :billingzip
    	t.string :billingstate
    	t.string :billlatitude
    	t.string :billlongitude
    	t.string :contactid
    	t.string :locprovided
    	t.string :firstname
    	t.string :lastname
    	t.string :title
    	t.string :credentials
    	t.string :phone
    	t.string :crlphone
    	t.string :formerloh
    	t.string :mailingaddressline1
    	t.string :mailingcity
    	t.string :mailingstate
    	t.string :mailingzip
    	t.integer :maillatitude
    	t.integer :maillongitude
    	t.string :email
    	t.string :otheremail
    	t.string :description
    	t.string :languages
    	t.string :patientagebracket
    	t.string :insurancepanels
    	t.string :specialtyareas
    	t.string :treatmentmodality
    	t.string :treatmentorientation
    	t.string :treatmentphilosophy
    	t.string :mailingstreet
    	t.string :accountname
      t.timestamps
    end
  end
end
