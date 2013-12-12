# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'



def expurgate_integer(int)
  unless int == nil
    int.strip.delete('$').delete(',').to_i
  end
end

def expurgate_float(flo)
  unless flo == nil
    flo.strip.delete('$').delete(',').to_f
  end
end

CSV.foreach(Rails.root.join('db/data/mass_health_data.csv'), headers:true) do |row|
  # find_or_create_by(town: row['geography'])
  unless row['geography'] == nil
    town = TownHealthRecords.new
    town.town = (row['geography'])
    town.total_pop_year_2005 = expurgate_integer(row['total_pop_2005'])
    town.age_0_to_19_year_2005 = expurgate_integer(row['age_0_19_2005'])
    town.age_65_plus_year_2005 = expurgate_integer(row['age_65_2005'])
    town.per_capita_income_year_2000 = expurgate_integer(row['per_capita_income_2000'])
    town.persons_living_below_twox_poverty_year_2000 = expurgate_integer(row['persons_living_below_200_poverty_2000'])
    town.persons_living_below_twox_poverty_level_as_percent_year_2000 = expurgate_float(row['all_persons_living_below_200_poverty_level_2000'])
    town.adequacy_prenatal_care = expurgate_float(row['adequacy_prenatal_care_kotelchuck'])
    town.c_section_deliveries_2005_to_2008 = expurgate_float(row['c_section_deliveries_2005to2008'])
    town.infant_deaths_2005_to_2008 = expurgate_integer(row['number_of_infant_deaths_2005to2008'])
    town.infant_mortality_rate_2005_to_2008 = expurgate_float(row['infant_mortality_rate_deaths_per_1000_live_births_2005to2008'])
    town.low_birthweight_2005_to_2008 = expurgate_float(row['low_birthweight_2005to2008'])
    town.publicly_financed_prenatal_care_2005_to_2008 = expurgate_float(row['publicly_financed_prenatal_care_2005to2008'])
    town.teen_births_2005_to_2008 = expurgate_float(row['teen_births_2005to2008'])
    town.save
  end
end

