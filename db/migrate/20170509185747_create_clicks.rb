class CreateClicks < ActiveRecord::Migration[5.0]
  def change
    create_table :clicks do |t|
    	t.string :accountid
    	t.string :emailorphone
    	t.string :provider_id

    	t.timestamps

    end
  end
end
