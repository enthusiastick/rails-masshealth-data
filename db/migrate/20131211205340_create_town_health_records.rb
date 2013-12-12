class CreateTownHealthRecords < ActiveRecord::Migration
  def change
    create_table :town_health_records do |t|
      t.string :town
      t.integer :total_pop
      t.integer :age_0_to_19
      t.integer :age_65_plus
      t.integer :per_capita_income
      t.integer :persons_living_below_twox_poverty
      t.float :persons_living_below_twox_poverty_level_as_percent
      t.float :adequacy_prenatal_care
      t.float :c_section_deliveries
      t.integer :infant_deaths
      t.float :infant_mortality_rate
      t.float :low_birthweight
      t.float :multiple_births
      t.float :publicly_financed_prenatal_care
      t.float :teen_births

      t.timestamps
    end
    add_index :town_health_records, :town, unique: true
  end
end
