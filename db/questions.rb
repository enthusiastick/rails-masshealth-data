# What 3 towns have the highest population of citizens that are 65 years and older?
TownHealthRecords.select('town').order(age_65_plus: :desc).first(3)

# What 3 towns have the highest population of citizens that are 19 years and younger?
TownHealthRecords.select('town').order(age_0_to_19: :desc).first(3)

# What 5 towns have the lowest per capita income?
TownHealthRecords.select('town').order(:per_capita_income).first(5)

# Omitting Boston, Becket, and Beverly, what town has the highest percentage of teen births?
TownHealthRecords.select('town').where.not(teen_births: nil).where.not(town: 'Boston').where.not(town: 'Becket').where.not(town: 'Beverly').order(teen_births: :desc).first

# Omitting Boston, what town has the highest number of infant mortalities?
TownHealthRecords.select('town').where.not(infant_deaths: nil).where.not(town: 'Boston').order(infant_deaths: :desc).first
