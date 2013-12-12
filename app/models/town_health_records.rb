class TownHealthRecords < ActiveRecord::Base
  validates :town, uniqueness: true
end
