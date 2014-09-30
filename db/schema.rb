# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140926162025) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: true do |t|
    t.text     "event_title"
    t.text     "description"
    t.string   "location"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.datetime "starts"
    t.string   "starts_time"
    t.datetime "ends"
    t.string   "ends_time"
    t.string   "organizer_name"
    t.text     "about_organizer"
    t.string   "facebook_link"
    t.string   "twitter_link"
    t.string   "linkedin_link"
    t.decimal  "ticket"
    t.string   "event_type"
    t.string   "event_subject"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_logo_file_name"
    t.string   "image_logo_content_type"
    t.integer  "image_logo_file_size"
    t.datetime "image_logo_updated_at"
  end

  create_table "reviews", force: true do |t|
    t.string   "name"
    t.integer  "ratings"
    t.text     "comment"
    t.integer  "startupp_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reviews", ["startupp_id"], name: "index_reviews_on_startupp_id", using: :btree

  create_table "startupps", force: true do |t|
    t.text     "title"
    t.text     "description"
    t.string   "founders"
    t.date     "founding_date"
    t.string   "tagline"
    t.string   "category"
    t.string   "website_url"
    t.string   "tags"
    t.string   "status"
    t.decimal  "employees"
    t.text     "award"
    t.string   "contact_email"
    t.text     "contact_address"
    t.string   "fb_url"
    t.string   "twitter_url"
    t.string   "linkedin_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "screenshot_file_name"
    t.string   "screenshot_content_type"
    t.integer  "screenshot_file_size"
    t.datetime "screenshot_updated_at"
  end

end
