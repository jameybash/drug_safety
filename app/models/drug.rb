class Drug < ApplicationRecord
  validates :name, presence: true
  
  def self.setup_drugs
    Drug.create!(name: 'LSD')
    Drug.create!(name: 'Mushrooms')
    Drug.create!(name: 'DMT')
    Drug.create!(name: 'Mescaline')
    Drug.create!(name: 'DOx')
    Drug.create!(name: 'NBOMes')
    Drug.create!(name: '2C-x')
    Drug.create!(name: '2C-T-x')
    Drug.create!(name: '5-MeO-xxT')
    Drug.create!(name: 'Cannabis')
    Drug.create!(name: 'Ketamine')
    Drug.create!(name: 'MXE')
    Drug.create!(name: 'DXM')
    Drug.create!(name: 'Nitrous')
    Drug.create!(name: 'Amphetamines')
    Drug.create!(name: 'MDMA')
    Drug.create!(name: 'Cocaine')
    Drug.create!(name: 'Caffeine')
    Drug.create!(name: 'Alcohol')
    Drug.create!(name: 'GHB/GBL')
    Drug.create!(name: 'Opioids')
    Drug.create!(name: 'Tramadol')
    Drug.create!(name: 'Benzodiazepines')
    Drug.create!(name: 'MAOIs')
    Drug.create!(name: 'SSRIs')
  end
  
end
