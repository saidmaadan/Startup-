class CreateStartupps < ActiveRecord::Migration
  def change
    create_table :startupps do |t|
      t.text :title
      t.text :description
      t.string :founders
      t.date :founding_date
      t.string :tagline
      t.string :category
      t.string :website_url
      t.string :tags
      t.string :status
      t.decimal :employees
      t.text :award
      t.string :contact_email
      t.text :contact_address
      t.string :fb_url
      t.string :twitter_url
      t.string :linkedin_url

      t.timestamps
    end
  end
end
