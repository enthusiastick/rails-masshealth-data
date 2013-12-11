class CreateTownHealthRecords < ActiveRecord::Migration
  def change
    create_table :town_health_records do |t|
      t.string :town
      t.integer :total_pop_year_2005
      t.integer :age_0_to_19_year_2005
      t.integer :age_65_plus_year_2005
      t.integer :per_capita_income_year_2000
      t.integer :persons_living_below_twox_poverty_year_2000
      t.float :persons_living_below_twox_poverty_level_as_percent_year_2000
      t.float :adequacy_prenatal_care
      t.float :c_section_deliveries_2005_to_2008
      t.integer :infant_deaths_2005_to_2008
      t.float :infant_mortality_rate_2005_to_2008
      t.float :low_birthweight_2005_to_2008
      t.float :publicly_financed_prenatal_care_2005_to_2008
      t.float :teen_births_2005_to_2008

      t.timestamps
    end
  end
end
