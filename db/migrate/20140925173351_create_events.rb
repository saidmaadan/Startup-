class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.text :event_title
      t.text :description
      t.string :location
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip
      t.datetime :starts
      t.string :starts_time
      t.datetime :ends
      t.string :ends_time
      t.string :organizer_name
      t.text :about_organizer
      t.string :facebook_link
      t.string :twitter_link
      t.string :linkedin_link
      t.decimal :ticket
      t.string :event_type
      t.string :event_subject

      t.timestamps
    end
  end
end
