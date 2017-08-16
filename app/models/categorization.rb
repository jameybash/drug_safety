class Categorization < ApplicationRecord
  
  
  def self.setup_categorizations
    Categorization.create!(scale: 1,
                           color: '#197319',
                           description: 'Low Risk & Synergy')
    Categorization.create!(scale: 2,
                           color: '#32CD32',
                           description: 'Low Risk & No Synergy')
    Categorization.create!(scale: 3,
                           color: '#3232ff',
                           description: 'Low Risk & Decrease')
    Categorization.create!(scale: 4,
                           color: '#ffff4c',
                           description: 'Caution')
    Categorization.create!(scale: 5,
                           color: '#FFA500',
                           description: 'Unsafe')
    Categorization.create!(scale: 6,
                           color: '#e50000',
                           description: 'Dangerous')
  end
  
end
