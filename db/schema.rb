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

ActiveRecord::Schema.define(version: 20131211205340) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "town_health_records", force: true do |t|
    t.string   "town"
    t.integer  "total_pop_year_2005"
    t.integer  "age_0_to_19_year_2005"
    t.integer  "age_65_plus_year_2005"
    t.integer  "per_capita_income_year_2000"
    t.integer  "persons_living_below_twox_poverty_year_2000"
    t.float    "persons_living_below_twox_poverty_level_as_percent_year_2000"
    t.float    "adequacy_prenatal_care"
    t.float    "c_section_deliveries_2005_to_2008"
    t.integer  "infant_deaths_2005_to_2008"
    t.float    "infant_mortality_rate_2005_to_2008"
    t.float    "low_birthweight_2005_to_2008"
    t.float    "multiple_births_2005_to_2008"
    t.float    "publicly_financed_prenatal_care_2005_to_2008"
    t.float    "teen_births_2005_to_2008"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "town_health_records", ["town"], name: "index_town_health_records_on_town", unique: true, using: :btree

end
