class Cell < ApplicationRecord
  belongs_to :drug_1, class_name: 'Drug'
  belongs_to :drug_2, class_name: 'Drug'
  belongs_to :categorization
  
  # For reference:
  # Cell.where(drug_1_id: 2, drug_2_id: 1).or(Cell.where(drug_1_id: 1, drug_2_id: 2))
  
  def self.setup_cells
    Cell.setup_lsd_cells
  end
  
  def self.setup_lsd_cells
    lsd = Drug.find_by(name: 'LSD')
    Cell.create!(drug_1: lsd, drug_2: Drug.find_by(name: 'Mushrooms'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: lsd, drug_2: Drug.find_by(name: 'DMT'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: lsd, drug_2: Drug.find_by(name: 'Mescaline'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: lsd, drug_2: Drug.find_by(name: 'DOx'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: lsd, drug_2: Drug.find_by(name: 'NBOMes'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: lsd, drug_2: Drug.find_by(name: '2C-x'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: lsd, drug_2: Drug.find_by(name: '2C-T-x'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: lsd, drug_2: Drug.find_by(name: '5-MeO-xxT'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: lsd, drug_2: Drug.find_by(name: 'Cannabis'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: lsd, drug_2: Drug.find_by(name: 'Ketamine'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: lsd, drug_2: Drug.find_by(name: 'MXE'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: lsd, drug_2: Drug.find_by(name: 'DXM'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: lsd, drug_2: Drug.find_by(name: 'Nitrous'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: lsd, drug_2: Drug.find_by(name: 'Amphetamines'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: lsd, drug_2: Drug.find_by(name: 'MDMA'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: lsd, drug_2: Drug.find_by(name: 'Cocaine'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: lsd, drug_2: Drug.find_by(name: 'Caffeine'), categorization: Categorization.find_by(scale: 2))
    Cell.create!(drug_1: lsd, drug_2: Drug.find_by(name: 'Alcohol'), categorization: Categorization.find_by(scale: 3))
    Cell.create!(drug_1: lsd, drug_2: Drug.find_by(name: 'GHB/GBL'), categorization: Categorization.find_by(scale: 3))
    Cell.create!(drug_1: lsd, drug_2: Drug.find_by(name: 'Opioids'), categorization: Categorization.find_by(scale: 2))
    Cell.create!(drug_1: lsd, drug_2: Drug.find_by(name: 'Tramadol'), categorization: Categorization.find_by(scale: 5))
    Cell.create!(drug_1: lsd, drug_2: Drug.find_by(name: 'Benzodiazepines'), categorization: Categorization.find_by(scale: 3))
    Cell.create!(drug_1: lsd, drug_2: Drug.find_by(name: 'MAOIs'), categorization: Categorization.find_by(scale: 3))
    Cell.create!(drug_1: lsd, drug_2: Drug.find_by(name: 'SSRIs'), categorization: Categorization.find_by(scale: 3))
  end
  
end
