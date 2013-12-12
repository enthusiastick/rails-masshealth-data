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

CSV.foreach(Rails.root.join('db/data/mass_health_data.csv'),headers:true) do |row|
  unless row['Geography'] == nil
    town = TownHealthRecords.new
    town.town = (row['Geography'])
    town.total_pop_year_2005 = expurgate_integer(row["total pop, year 2005"])
    town.age_0_to_19_year_2005 = expurgate_integer(row["age 0-19, year 2005"])
    town.age_65_plus_year_2005 = expurgate_integer(row["age 65+, year 2005"])
    town.per_capita_income_year_2000 = expurgate_integer(row["Per Capita Income, year 2000"])
    town.persons_living_below_twox_poverty_year_2000 = expurgate_integer(row["Persons Living Below 200% Poverty, year 2000 "])
    town.persons_living_below_twox_poverty_level_as_percent_year_2000 = expurgate_float(row["% all Persons Living Below 200% Poverty Level, year 2000"])
    town.adequacy_prenatal_care = expurgate_float(row['% adequacy prenatal care (kotelchuck)'])
    town.c_section_deliveries_2005_to_2008 = expurgate_float(row["% C-section deliveries, 2005-2008"])
    town.infant_deaths_2005_to_2008 = expurgate_integer(row["Number of infant deaths, 2005-2008"])
    town.infant_mortality_rate_2005_to_2008 = expurgate_float(row["Infant mortality rate (deaths per 1000 live births), 2005-2008"])
    town.low_birthweight_2005_to_2008 = expurgate_float(row['% low birthweight 2005-2008'])
    town.multiple_births_2005_to_2008 = expurgate_float(row["% multiple births, 2005-2008"])
    town.publicly_financed_prenatal_care_2005_to_2008 = expurgate_float(row["% publicly financed prenatal care, 2005-2008"])
    town.teen_births_2005_to_2008 = expurgate_float(row["% teen births, 2005-2008"])
    town.save
  end
end

