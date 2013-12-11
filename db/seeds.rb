# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'

CSV.foreach(Rails.root.join('db/data/mass_health_data.csv'),headers:true) do |row|
  TownHealthRecords.find_or_create_by!(town: row['geography'], total_pop_year_2005: row['total_pop_2005'].delete(','), age_0_to_19_year_2005: row['age_0_19_2005'].delete(','), age_65_plus_year_2005: row['age_65_2005'].delete(','), per_capita_income_year_2000: row['per_capita_income_2000'].strip.delete('$').delete(','), persons_living_below_twox_poverty_year_2000: row['persons_living_below_200_poverty_2000'].delete(','), persons_living_below_twox_poverty_level_as_percent_year_2000: row['all_persons_living_below_200_poverty_level_2000'], adequacy_prenatal_care: row['adequacy_prenatal_care_kotelchuck'], c_section_deliveries_2005_to_2008: row['c_section_deliveries_2005to2008'], infant_deaths_2005_to_2008: row['number_of_infant_deaths_2005to2008'], infant_mortality_rate_2005_to_2008: row['infant_mortality_rate_deaths_per_1000_live_births_2005to2008'], low_birthweight_2005_to_2008: row['low_birthweight_2005to2008'], publicly_financed_prenatal_care_2005_to_2008: row['publicly_financed_prenatal_care_2005to2008'], teen_births_2005_to_2008: row['teen_births_2005to2008'])
end
