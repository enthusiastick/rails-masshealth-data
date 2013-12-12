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
    t.integer  "total_pop"
    t.integer  "age_0_to_19"
    t.integer  "age_65_plus"
    t.integer  "per_capita_income"
    t.integer  "persons_living_below_twox_poverty"
    t.float    "persons_living_below_twox_poverty_level_as_percent"
    t.float    "adequacy_prenatal_care"
    t.float    "c_section_deliveries"
    t.integer  "infant_deaths"
    t.float    "infant_mortality_rate"
    t.float    "low_birthweight"
    t.float    "multiple_births"
    t.float    "publicly_financed_prenatal_care"
    t.float    "teen_births"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
