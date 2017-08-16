class Cell < ApplicationRecord
  belongs_to :drug_1, class_name: 'Drug'
  belongs_to :drug_2, class_name: 'Drug'
  belongs_to :categorization
  
  # For reference:
  # Cell.where(drug_1_id: 2, drug_2_id: 1).or(Cell.where(drug_1_id: 1, drug_2_id: 2))
  
  def self.setup_cells
    Cell.setup_lsd_cells
    Cell.setup_mushrooms_cells
    Cell.setup_dmt_cells
    Cell.setup_mescaline_cells
    Cell.setup_dox_cells
    Cell.setup_nbomes_cells
    Cell.setup_2cx_cells
    Cell.setup_2xtc_cells
    Cell.setup_5meoxxt_cells
    Cell.setup_cannabis_cells
    Cell.setup_ketamine_cells
    Cell.setup_mxe_cells
    Cell.setup_dxm_cells
    Cell.setup_nitrous_cells
    Cell.setup_amphetamines_cells
    Cell.setup_mdma_cells
    Cell.setup_cocaine_cells
    Cell.setup_caffeine_cells
    Cell.setup_alcohol_cells
    Cell.setup_ghbgbl_cells
    Cell.setup_opioids_cells
    Cell.setup_tramadol_cells
    Cell.setup_benzo_cells
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
  
  def self.setup_mushrooms_cells
    mushrooms = Drug.find_by(name: 'Mushrooms')
    Cell.create!(drug_1: mushrooms, drug_2: Drug.find_by(name: 'DMT'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: mushrooms, drug_2: Drug.find_by(name: 'Mescaline'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: mushrooms, drug_2: Drug.find_by(name: 'DOx'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: mushrooms, drug_2: Drug.find_by(name: 'NBOMes'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: mushrooms, drug_2: Drug.find_by(name: '2C-x'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: mushrooms, drug_2: Drug.find_by(name: '2C-T-x'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: mushrooms, drug_2: Drug.find_by(name: '5-MeO-xxT'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: mushrooms, drug_2: Drug.find_by(name: 'Cannabis'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: mushrooms, drug_2: Drug.find_by(name: 'Ketamine'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: mushrooms, drug_2: Drug.find_by(name: 'MXE'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: mushrooms, drug_2: Drug.find_by(name: 'DXM'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: mushrooms, drug_2: Drug.find_by(name: 'Nitrous'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: mushrooms, drug_2: Drug.find_by(name: 'Amphetamines'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: mushrooms, drug_2: Drug.find_by(name: 'MDMA'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: mushrooms, drug_2: Drug.find_by(name: 'Cocaine'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: mushrooms, drug_2: Drug.find_by(name: 'Caffeine'), categorization: Categorization.find_by(scale: 2))
    Cell.create!(drug_1: mushrooms, drug_2: Drug.find_by(name: 'Alcohol'), categorization: Categorization.find_by(scale: 3))
    Cell.create!(drug_1: mushrooms, drug_2: Drug.find_by(name: 'GHB/GBL'), categorization: Categorization.find_by(scale: 3))
    Cell.create!(drug_1: mushrooms, drug_2: Drug.find_by(name: 'Opioids'), categorization: Categorization.find_by(scale: 2))
    Cell.create!(drug_1: mushrooms, drug_2: Drug.find_by(name: 'Tramadol'), categorization: Categorization.find_by(scale: 5))
    Cell.create!(drug_1: mushrooms, drug_2: Drug.find_by(name: 'Benzodiazepines'), categorization: Categorization.find_by(scale: 3))
    Cell.create!(drug_1: mushrooms, drug_2: Drug.find_by(name: 'MAOIs'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: mushrooms, drug_2: Drug.find_by(name: 'SSRIs'), categorization: Categorization.find_by(scale: 3))
  end
  
  def self.setup_dmt_cells
    dmt = Drug.find_by(name: 'DMT')
    Cell.create!(drug_1: dmt, drug_2: Drug.find_by(name: 'Mescaline'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: dmt, drug_2: Drug.find_by(name: 'DOx'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: dmt, drug_2: Drug.find_by(name: 'NBOMes'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: dmt, drug_2: Drug.find_by(name: '2C-x'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: dmt, drug_2: Drug.find_by(name: '2C-T-x'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: dmt, drug_2: Drug.find_by(name: '5-MeO-xxT'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: dmt, drug_2: Drug.find_by(name: 'Cannabis'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: dmt, drug_2: Drug.find_by(name: 'Ketamine'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: dmt, drug_2: Drug.find_by(name: 'MXE'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: dmt, drug_2: Drug.find_by(name: 'DXM'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: dmt, drug_2: Drug.find_by(name: 'Nitrous'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: dmt, drug_2: Drug.find_by(name: 'Amphetamines'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: dmt, drug_2: Drug.find_by(name: 'MDMA'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: dmt, drug_2: Drug.find_by(name: 'Cocaine'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: dmt, drug_2: Drug.find_by(name: 'Caffeine'), categorization: Categorization.find_by(scale: 2))
    Cell.create!(drug_1: dmt, drug_2: Drug.find_by(name: 'Alcohol'), categorization: Categorization.find_by(scale: 3))
    Cell.create!(drug_1: dmt, drug_2: Drug.find_by(name: 'GHB/GBL'), categorization: Categorization.find_by(scale: 3))
    Cell.create!(drug_1: dmt, drug_2: Drug.find_by(name: 'Opioids'), categorization: Categorization.find_by(scale: 2))
    Cell.create!(drug_1: dmt, drug_2: Drug.find_by(name: 'Tramadol'), categorization: Categorization.find_by(scale: 5))
    Cell.create!(drug_1: dmt, drug_2: Drug.find_by(name: 'Benzodiazepines'), categorization: Categorization.find_by(scale: 3))
    Cell.create!(drug_1: dmt, drug_2: Drug.find_by(name: 'MAOIs'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: dmt, drug_2: Drug.find_by(name: 'SSRIs'), categorization: Categorization.find_by(scale: 3))
  end
  
  def self.setup_mescaline_cells
    mescaline = Drug.find_by(name: 'Mescaline')
    Cell.create!(drug_1: mescaline, drug_2: Drug.find_by(name: 'DOx'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: mescaline, drug_2: Drug.find_by(name: 'NBOMes'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: mescaline, drug_2: Drug.find_by(name: '2C-x'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: mescaline, drug_2: Drug.find_by(name: '2C-T-x'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: mescaline, drug_2: Drug.find_by(name: '5-MeO-xxT'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: mescaline, drug_2: Drug.find_by(name: 'Cannabis'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: mescaline, drug_2: Drug.find_by(name: 'Ketamine'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: mescaline, drug_2: Drug.find_by(name: 'MXE'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: mescaline, drug_2: Drug.find_by(name: 'DXM'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: mescaline, drug_2: Drug.find_by(name: 'Nitrous'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: mescaline, drug_2: Drug.find_by(name: 'Amphetamines'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: mescaline, drug_2: Drug.find_by(name: 'MDMA'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: mescaline, drug_2: Drug.find_by(name: 'Cocaine'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: mescaline, drug_2: Drug.find_by(name: 'Caffeine'), categorization: Categorization.find_by(scale: 2))
    Cell.create!(drug_1: mescaline, drug_2: Drug.find_by(name: 'Alcohol'), categorization: Categorization.find_by(scale: 3))
    Cell.create!(drug_1: mescaline, drug_2: Drug.find_by(name: 'GHB/GBL'), categorization: Categorization.find_by(scale: 3))
    Cell.create!(drug_1: mescaline, drug_2: Drug.find_by(name: 'Opioids'), categorization: Categorization.find_by(scale: 2))
    Cell.create!(drug_1: mescaline, drug_2: Drug.find_by(name: 'Tramadol'), categorization: Categorization.find_by(scale: 5))
    Cell.create!(drug_1: mescaline, drug_2: Drug.find_by(name: 'Benzodiazepines'), categorization: Categorization.find_by(scale: 3))
    Cell.create!(drug_1: mescaline, drug_2: Drug.find_by(name: 'MAOIs'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: mescaline, drug_2: Drug.find_by(name: 'SSRIs'), categorization: Categorization.find_by(scale: 3))
  end
  
  def self.setup_dox_cells
    dox = Drug.find_by(name: 'DOx')
    Cell.create!(drug_1: dox, drug_2: Drug.find_by(name: 'NBOMes'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: dox, drug_2: Drug.find_by(name: '2C-x'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: dox, drug_2: Drug.find_by(name: '2C-T-x'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: dox, drug_2: Drug.find_by(name: '5-MeO-xxT'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: dox, drug_2: Drug.find_by(name: 'Cannabis'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: dox, drug_2: Drug.find_by(name: 'Ketamine'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: dox, drug_2: Drug.find_by(name: 'MXE'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: dox, drug_2: Drug.find_by(name: 'DXM'), categorization: Categorization.find_by(scale: 5))
    Cell.create!(drug_1: dox, drug_2: Drug.find_by(name: 'Nitrous'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: dox, drug_2: Drug.find_by(name: 'Amphetamines'), categorization: Categorization.find_by(scale: 5))
    Cell.create!(drug_1: dox, drug_2: Drug.find_by(name: 'MDMA'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: dox, drug_2: Drug.find_by(name: 'Cocaine'), categorization: Categorization.find_by(scale: 5))
    Cell.create!(drug_1: dox, drug_2: Drug.find_by(name: 'Caffeine'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: dox, drug_2: Drug.find_by(name: 'Alcohol'), categorization: Categorization.find_by(scale: 3))
    Cell.create!(drug_1: dox, drug_2: Drug.find_by(name: 'GHB/GBL'), categorization: Categorization.find_by(scale: 3))
    Cell.create!(drug_1: dox, drug_2: Drug.find_by(name: 'Opioids'), categorization: Categorization.find_by(scale: 2))
    Cell.create!(drug_1: dox, drug_2: Drug.find_by(name: 'Tramadol'), categorization: Categorization.find_by(scale: 5))
    Cell.create!(drug_1: dox, drug_2: Drug.find_by(name: 'Benzodiazepines'), categorization: Categorization.find_by(scale: 3))
    Cell.create!(drug_1: dox, drug_2: Drug.find_by(name: 'MAOIs'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: dox, drug_2: Drug.find_by(name: 'SSRIs'), categorization: Categorization.find_by(scale: 3))
  end
  
  def self.setup_nbomes_cells
    nbomes = Drug.find_by(name: 'NBOMes')
    Cell.create!(drug_1: nbomes, drug_2: Drug.find_by(name: '2C-x'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: nbomes, drug_2: Drug.find_by(name: '2C-T-x'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: nbomes, drug_2: Drug.find_by(name: '5-MeO-xxT'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: nbomes, drug_2: Drug.find_by(name: 'Cannabis'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: nbomes, drug_2: Drug.find_by(name: 'Ketamine'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: nbomes, drug_2: Drug.find_by(name: 'MXE'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: nbomes, drug_2: Drug.find_by(name: 'DXM'), categorization: Categorization.find_by(scale: 5))
    Cell.create!(drug_1: nbomes, drug_2: Drug.find_by(name: 'Nitrous'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: nbomes, drug_2: Drug.find_by(name: 'Amphetamines'), categorization: Categorization.find_by(scale: 5))
    Cell.create!(drug_1: nbomes, drug_2: Drug.find_by(name: 'MDMA'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: nbomes, drug_2: Drug.find_by(name: 'Cocaine'), categorization: Categorization.find_by(scale: 5))
    Cell.create!(drug_1: nbomes, drug_2: Drug.find_by(name: 'Caffeine'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: nbomes, drug_2: Drug.find_by(name: 'Alcohol'), categorization: Categorization.find_by(scale: 3))
    Cell.create!(drug_1: nbomes, drug_2: Drug.find_by(name: 'GHB/GBL'), categorization: Categorization.find_by(scale: 3))
    Cell.create!(drug_1: nbomes, drug_2: Drug.find_by(name: 'Opioids'), categorization: Categorization.find_by(scale: 2))
    Cell.create!(drug_1: nbomes, drug_2: Drug.find_by(name: 'Tramadol'), categorization: Categorization.find_by(scale: 5))
    Cell.create!(drug_1: nbomes, drug_2: Drug.find_by(name: 'Benzodiazepines'), categorization: Categorization.find_by(scale: 3))
    Cell.create!(drug_1: nbomes, drug_2: Drug.find_by(name: 'MAOIs'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: nbomes, drug_2: Drug.find_by(name: 'SSRIs'), categorization: Categorization.find_by(scale: 3))
  end
  
  def self.setup_2cx_cells
    2cx = Drug.find_by(name: '2C-x')
    Cell.create!(drug_1: 2cx, drug_2: Drug.find_by(name: '2C-T-x'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: 2cx, drug_2: Drug.find_by(name: '5-MeO-xxT'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: 2cx, drug_2: Drug.find_by(name: 'Cannabis'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: 2cx, drug_2: Drug.find_by(name: 'Ketamine'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: 2cx, drug_2: Drug.find_by(name: 'MXE'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: 2cx, drug_2: Drug.find_by(name: 'DXM'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: 2cx, drug_2: Drug.find_by(name: 'Nitrous'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: 2cx, drug_2: Drug.find_by(name: 'Amphetamines'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: 2cx, drug_2: Drug.find_by(name: 'MDMA'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: 2cx, drug_2: Drug.find_by(name: 'Cocaine'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: 2cx, drug_2: Drug.find_by(name: 'Caffeine'), categorization: Categorization.find_by(scale: 2))
    Cell.create!(drug_1: 2cx, drug_2: Drug.find_by(name: 'Alcohol'), categorization: Categorization.find_by(scale: 3))
    Cell.create!(drug_1: 2cx, drug_2: Drug.find_by(name: 'GHB/GBL'), categorization: Categorization.find_by(scale: 3))
    Cell.create!(drug_1: 2cx, drug_2: Drug.find_by(name: 'Opioids'), categorization: Categorization.find_by(scale: 2))
    Cell.create!(drug_1: 2cx, drug_2: Drug.find_by(name: 'Tramadol'), categorization: Categorization.find_by(scale: 5))
    Cell.create!(drug_1: 2cx, drug_2: Drug.find_by(name: 'Benzodiazepines'), categorization: Categorization.find_by(scale: 3))
    Cell.create!(drug_1: 2cx, drug_2: Drug.find_by(name: 'MAOIs'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: 2cx, drug_2: Drug.find_by(name: 'SSRIs'), categorization: Categorization.find_by(scale: 3))
  end
  
  def self.setup_2ctx_cells
    2ctx = Drug.find_by(name: '2C-T-x')
    Cell.create!(drug_1: 2ctx, drug_2: Drug.find_by(name: '5-MeO-xxT'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: 2ctx, drug_2: Drug.find_by(name: 'Cannabis'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: 2ctx, drug_2: Drug.find_by(name: 'Ketamine'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: 2ctx, drug_2: Drug.find_by(name: 'MXE'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: 2ctx, drug_2: Drug.find_by(name: 'DXM'), categorization: Categorization.find_by(scale: 5))
    Cell.create!(drug_1: 2ctx, drug_2: Drug.find_by(name: 'Nitrous'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: 2ctx, drug_2: Drug.find_by(name: 'Amphetamines'), categorization: Categorization.find_by(scale: 5))
    Cell.create!(drug_1: 2ctx, drug_2: Drug.find_by(name: 'MDMA'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: 2ctx, drug_2: Drug.find_by(name: 'Cocaine'), categorization: Categorization.find_by(scale: 5))
    Cell.create!(drug_1: 2ctx, drug_2: Drug.find_by(name: 'Caffeine'), categorization: Categorization.find_by(scale: 2))
    Cell.create!(drug_1: 2ctx, drug_2: Drug.find_by(name: 'Alcohol'), categorization: Categorization.find_by(scale: 3))
    Cell.create!(drug_1: 2ctx, drug_2: Drug.find_by(name: 'GHB/GBL'), categorization: Categorization.find_by(scale: 3))
    Cell.create!(drug_1: 2ctx, drug_2: Drug.find_by(name: 'Opioids'), categorization: Categorization.find_by(scale: 2))
    Cell.create!(drug_1: 2ctx, drug_2: Drug.find_by(name: 'Tramadol'), categorization: Categorization.find_by(scale: 5))
    Cell.create!(drug_1: 2ctx, drug_2: Drug.find_by(name: 'Benzodiazepines'), categorization: Categorization.find_by(scale: 3))
    Cell.create!(drug_1: 2ctx, drug_2: Drug.find_by(name: 'MAOIs'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: 2ctx, drug_2: Drug.find_by(name: 'SSRIs'), categorization: Categorization.find_by(scale: 3))
  end
  
  def self.setup_5me0xxt_cells
    5me0xxt = Drug.find_by(name: '5-MeO-xxT')
    Cell.create!(drug_1: 5me0xxt, drug_2: Drug.find_by(name: 'Cannabis'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: 5me0xxt, drug_2: Drug.find_by(name: 'Ketamine'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: 5me0xxt, drug_2: Drug.find_by(name: 'MXE'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: 5me0xxt, drug_2: Drug.find_by(name: 'DXM'), categorization: Categorization.find_by(scale: 5))
    Cell.create!(drug_1: 5me0xxt, drug_2: Drug.find_by(name: 'Nitrous'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: 5me0xxt, drug_2: Drug.find_by(name: 'Amphetamines'), categorization: Categorization.find_by(scale: 5))
    Cell.create!(drug_1: 5me0xxt, drug_2: Drug.find_by(name: 'MDMA'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: 5me0xxt, drug_2: Drug.find_by(name: 'Cocaine'), categorization: Categorization.find_by(scale: 5))
    Cell.create!(drug_1: 5me0xxt, drug_2: Drug.find_by(name: 'Caffeine'), categorization: Categorization.find_by(scale: 2))
    Cell.create!(drug_1: 5me0xxt, drug_2: Drug.find_by(name: 'Alcohol'), categorization: Categorization.find_by(scale: 3))
    Cell.create!(drug_1: 5me0xxt, drug_2: Drug.find_by(name: 'GHB/GBL'), categorization: Categorization.find_by(scale: 3))
    Cell.create!(drug_1: 5me0xxt, drug_2: Drug.find_by(name: 'Opioids'), categorization: Categorization.find_by(scale: 2))
    Cell.create!(drug_1: 5me0xxt, drug_2: Drug.find_by(name: 'Tramadol'), categorization: Categorization.find_by(scale: 5))
    Cell.create!(drug_1: 5me0xxt, drug_2: Drug.find_by(name: 'Benzodiazepines'), categorization: Categorization.find_by(scale: 3))
    Cell.create!(drug_1: 5me0xxt, drug_2: Drug.find_by(name: 'MAOIs'), categorization: Categorization.find_by(scale: 6))
    Cell.create!(drug_1: 5me0xxt, drug_2: Drug.find_by(name: 'SSRIs'), categorization: Categorization.find_by(scale: 3))
  end
  
  def self.setup_cannabis_cells
    cannabis = Drug.find_by(name: 'Cannabis')
    Cell.create!(drug_1: cannabis, drug_2: Drug.find_by(name: 'Ketamine'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: cannabis, drug_2: Drug.find_by(name: 'MXE'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: cannabis, drug_2: Drug.find_by(name: 'DXM'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: cannabis, drug_2: Drug.find_by(name: 'Nitrous'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: cannabis, drug_2: Drug.find_by(name: 'Amphetamines'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: cannabis, drug_2: Drug.find_by(name: 'MDMA'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: cannabis, drug_2: Drug.find_by(name: 'Cocaine'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: cannabis, drug_2: Drug.find_by(name: 'Caffeine'), categorization: Categorization.find_by(scale: 2))
    Cell.create!(drug_1: cannabis, drug_2: Drug.find_by(name: 'Alcohol'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: cannabis, drug_2: Drug.find_by(name: 'GHB/GBL'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: cannabis, drug_2: Drug.find_by(name: 'Opioids'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: cannabis, drug_2: Drug.find_by(name: 'Tramadol'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: cannabis, drug_2: Drug.find_by(name: 'Benzodiazepines'), categorization: Categorization.find_by(scale: 3))
    Cell.create!(drug_1: cannabis, drug_2: Drug.find_by(name: 'MAOIs'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: cannabis, drug_2: Drug.find_by(name: 'SSRIs'), categorization: Categorization.find_by(scale: 2))
  end
  
  def self.setup_ketamine_cells
    ketamine = Drug.find_by(name: 'Ketamine')
    Cell.create!(drug_1: ketamine, drug_2: Drug.find_by(name: 'MXE'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: ketamine, drug_2: Drug.find_by(name: 'DXM'), categorization: Categorization.find_by(scale: 2))
    Cell.create!(drug_1: ketamine, drug_2: Drug.find_by(name: 'Nitrous'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: ketamine, drug_2: Drug.find_by(name: 'Amphetamines'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: ketamine, drug_2: Drug.find_by(name: 'MDMA'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: ketamine, drug_2: Drug.find_by(name: 'Cocaine'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: ketamine, drug_2: Drug.find_by(name: 'Caffeine'), categorization: Categorization.find_by(scale: 2))
    Cell.create!(drug_1: ketamine, drug_2: Drug.find_by(name: 'Alcohol'), categorization: Categorization.find_by(scale: 6))
    Cell.create!(drug_1: ketamine, drug_2: Drug.find_by(name: 'GHB/GBL'), categorization: Categorization.find_by(scale: 6))
    Cell.create!(drug_1: ketamine, drug_2: Drug.find_by(name: 'Opioids'), categorization: Categorization.find_by(scale: 6))
    Cell.create!(drug_1: ketamine, drug_2: Drug.find_by(name: 'Tramadol'), categorization: Categorization.find_by(scale: 6))
    Cell.create!(drug_1: ketamine, drug_2: Drug.find_by(name: 'Benzodiazepines'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: ketamine, drug_2: Drug.find_by(name: 'MAOIs'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: ketamine, drug_2: Drug.find_by(name: 'SSRIs'), categorization: Categorization.find_by(scale: 2))
  end
  
  def self.setup_MXE_cells
    mxe = Drug.find_by(name: 'MXE')
    Cell.create!(drug_1: mxe, drug_2: Drug.find_by(name: 'DXM'), categorization: Categorization.find_by(scale: 2))
    Cell.create!(drug_1: mxe, drug_2: Drug.find_by(name: 'Nitrous'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: mxe, drug_2: Drug.find_by(name: 'Amphetamines'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: mxe, drug_2: Drug.find_by(name: 'MDMA'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: mxe, drug_2: Drug.find_by(name: 'Cocaine'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: mxe, drug_2: Drug.find_by(name: 'Caffeine'), categorization: Categorization.find_by(scale: 2))
    Cell.create!(drug_1: mxe, drug_2: Drug.find_by(name: 'Alcohol'), categorization: Categorization.find_by(scale: 6))
    Cell.create!(drug_1: mxe, drug_2: Drug.find_by(name: 'GHB/GBL'), categorization: Categorization.find_by(scale: 6))
    Cell.create!(drug_1: mxe, drug_2: Drug.find_by(name: 'Opioids'), categorization: Categorization.find_by(scale: 6))
    Cell.create!(drug_1: mxe, drug_2: Drug.find_by(name: 'Tramadol'), categorization: Categorization.find_by(scale: 6))
    Cell.create!(drug_1: mxe, drug_2: Drug.find_by(name: 'Benzodiazepines'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: mxe, drug_2: Drug.find_by(name: 'MAOIs'), categorization: Categorization.find_by(scale: 5))
    Cell.create!(drug_1: mxe, drug_2: Drug.find_by(name: 'SSRIs'), categorization: Categorization.find_by(scale: 4))
  end
  
  def self.setup_dxm_cells
    dxm = Drug.find_by(name: 'DXM')
    Cell.create!(drug_1: dxm, drug_2: Drug.find_by(name: 'Nitrous'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: dxm, drug_2: Drug.find_by(name: 'Amphetamines'), categorization: Categorization.find_by(scale: 5))
    Cell.create!(drug_1: dxm, drug_2: Drug.find_by(name: 'MDMA'), categorization: Categorization.find_by(scale: 6))
    Cell.create!(drug_1: dxm, drug_2: Drug.find_by(name: 'Cocaine'), categorization: Categorization.find_by(scale: 5))
    Cell.create!(drug_1: dxm, drug_2: Drug.find_by(name: 'Caffeine'), categorization: Categorization.find_by(scale: 2))
    Cell.create!(drug_1: dxm, drug_2: Drug.find_by(name: 'Alcohol'), categorization: Categorization.find_by(scale: 6))
    Cell.create!(drug_1: dxm, drug_2: Drug.find_by(name: 'GHB/GBL'), categorization: Categorization.find_by(scale: 6))
    Cell.create!(drug_1: dxm, drug_2: Drug.find_by(name: 'Opioids'), categorization: Categorization.find_by(scale: 6))
    Cell.create!(drug_1: dxm, drug_2: Drug.find_by(name: 'Tramadol'), categorization: Categorization.find_by(scale: 6))
    Cell.create!(drug_1: dxm, drug_2: Drug.find_by(name: 'Benzodiazepines'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: dxm, drug_2: Drug.find_by(name: 'MAOIs'), categorization: Categorization.find_by(scale: 6))
    Cell.create!(drug_1: dxm, drug_2: Drug.find_by(name: 'SSRIs'), categorization: Categorization.find_by(scale: 6))
  end
  
  def self.setup_nitrous_cells
    nitrous = Drug.find_by(name: 'Nitrous')
    Cell.create!(drug_1: nitrous, drug_2: Drug.find_by(name: 'Amphetamines'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: nitrous, drug_2: Drug.find_by(name: 'MDMA'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: nitrous, drug_2: Drug.find_by(name: 'Cocaine'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: nitrous, drug_2: Drug.find_by(name: 'Caffeine'), categorization: Categorization.find_by(scale: 2))
    Cell.create!(drug_1: nitrous, drug_2: Drug.find_by(name: 'Alcohol'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: nitrous, drug_2: Drug.find_by(name: 'GHB/GBL'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: nitrous, drug_2: Drug.find_by(name: 'Opioids'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: nitrous, drug_2: Drug.find_by(name: 'Tramadol'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: nitrous, drug_2: Drug.find_by(name: 'Benzodiazepines'), categorization: Categorization.find_by(scale: 3))
    Cell.create!(drug_1: nitrous, drug_2: Drug.find_by(name: 'MAOIs'), categorization: Categorization.find_by(scale: 2))
    Cell.create!(drug_1: nitrous, drug_2: Drug.find_by(name: 'SSRIs'), categorization: Categorization.find_by(scale: 2))
  end
  
  def self.setup_amphetamines_cells
    amphetamines = Drug.find_by(name: 'Amphetamines')
    Cell.create!(drug_1: amphetamines, drug_2: Drug.find_by(name: 'MDMA'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: amphetamines, drug_2: Drug.find_by(name: 'Cocaine'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: amphetamines, drug_2: Drug.find_by(name: 'Caffeine'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: amphetamines, drug_2: Drug.find_by(name: 'Alcohol'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: amphetamines, drug_2: Drug.find_by(name: 'GHB/GBL'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: amphetamines, drug_2: Drug.find_by(name: 'Opioids'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: amphetamines, drug_2: Drug.find_by(name: 'Tramadol'), categorization: Categorization.find_by(scale: 6))
    Cell.create!(drug_1: amphetamines, drug_2: Drug.find_by(name: 'Benzodiazepines'), categorization: Categorization.find_by(scale: 3))
    Cell.create!(drug_1: amphetamines, drug_2: Drug.find_by(name: 'MAOIs'), categorization: Categorization.find_by(scale: 6))
    Cell.create!(drug_1: amphetamines, drug_2: Drug.find_by(name: 'SSRIs'), categorization: Categorization.find_by(scale: 2))
  end
  
  def self.setup_mdma_cells
    mdma = Drug.find_by(name: 'MDMA')
    Cell.create!(drug_1: mdma, drug_2: Drug.find_by(name: 'Cocaine'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: mdma, drug_2: Drug.find_by(name: 'Caffeine'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: mdma, drug_2: Drug.find_by(name: 'Alcohol'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: mdma, drug_2: Drug.find_by(name: 'GHB/GBL'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: mdma, drug_2: Drug.find_by(name: 'Opioids'), categorization: Categorization.find_by(scale: 2))
    Cell.create!(drug_1: mdma, drug_2: Drug.find_by(name: 'Tramadol'), categorization: Categorization.find_by(scale: 6))
    Cell.create!(drug_1: mdma, drug_2: Drug.find_by(name: 'Benzodiazepines'), categorization: Categorization.find_by(scale: 3))
    Cell.create!(drug_1: mdma, drug_2: Drug.find_by(name: 'MAOIs'), categorization: Categorization.find_by(scale: 6))
    Cell.create!(drug_1: mdma, drug_2: Drug.find_by(name: 'SSRIs'), categorization: Categorization.find_by(scale: 3))
  end
  
  def self.setup_cocaine_cells
    cocaine = Drug.find_by(name: 'Cocaine')
    Cell.create!(drug_1: cocaine, drug_2: Drug.find_by(name: 'Caffeine'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: cocaine, drug_2: Drug.find_by(name: 'Alcohol'), categorization: Categorization.find_by(scale: 5))
    Cell.create!(drug_1: cocaine, drug_2: Drug.find_by(name: 'GHB/GBL'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: cocaine, drug_2: Drug.find_by(name: 'Opioids'), categorization: Categorization.find_by(scale: 6))
    Cell.create!(drug_1: cocaine, drug_2: Drug.find_by(name: 'Tramadol'), categorization: Categorization.find_by(scale: 6))
    Cell.create!(drug_1: cocaine, drug_2: Drug.find_by(name: 'Benzodiazepines'), categorization: Categorization.find_by(scale: 3))
    Cell.create!(drug_1: cocaine, drug_2: Drug.find_by(name: 'MAOIs'), categorization: Categorization.find_by(scale: 6))
    Cell.create!(drug_1: cocaine, drug_2: Drug.find_by(name: 'SSRIs'), categorization: Categorization.find_by(scale: 2))
  end
  
  def self.setup_caffeine_cells
    caffeine = Drug.find_by(name: 'Caffeine')
    Cell.create!(drug_1: caffeine, drug_2: Drug.find_by(name: 'Alcohol'), categorization: Categorization.find_by(scale: 2))
    Cell.create!(drug_1: caffeine, drug_2: Drug.find_by(name: 'GHB/GBL'), categorization: Categorization.find_by(scale: 2))
    Cell.create!(drug_1: caffeine, drug_2: Drug.find_by(name: 'Opioids'), categorization: Categorization.find_by(scale: 2))
    Cell.create!(drug_1: caffeine, drug_2: Drug.find_by(name: 'Tramadol'), categorization: Categorization.find_by(scale: 2))
    Cell.create!(drug_1: caffeine, drug_2: Drug.find_by(name: 'Benzodiazepines'), categorization: Categorization.find_by(scale: 3))
    Cell.create!(drug_1: caffeine, drug_2: Drug.find_by(name: 'MAOIs'), categorization: Categorization.find_by(scale: 2))
    Cell.create!(drug_1: caffeine, drug_2: Drug.find_by(name: 'SSRIs'), categorization: Categorization.find_by(scale: 2))
  end
  
  def self.setup_alcohol_cells
    alcohol = Drug.find_by(name: 'Alcohol')
    Cell.create!(drug_1: alcohol, drug_2: Drug.find_by(name: 'GHB/GBL'), categorization: Categorization.find_by(scale: 6))
    Cell.create!(drug_1: alcohol, drug_2: Drug.find_by(name: 'Opioids'), categorization: Categorization.find_by(scale: 6))
    Cell.create!(drug_1: alcohol, drug_2: Drug.find_by(name: 'Tramadol'), categorization: Categorization.find_by(scale: 6))
    Cell.create!(drug_1: alcohol, drug_2: Drug.find_by(name: 'Benzodiazepines'), categorization: Categorization.find_by(scale: 6))
    Cell.create!(drug_1: alcohol, drug_2: Drug.find_by(name: 'MAOIs'), categorization: Categorization.find_by(scale: 5))
    Cell.create!(drug_1: alcohol, drug_2: Drug.find_by(name: 'SSRIs'), categorization: Categorization.find_by(scale: 4))
  end
  
  def self.setup_ghbgbl_cells
    ghbgbl = Drug.find_by(name: 'GHB/GBL')
    Cell.create!(drug_1: ghbgbl, drug_2: Drug.find_by(name: 'Opioids'), categorization: Categorization.find_by(scale: 6))
    Cell.create!(drug_1: ghbgbl, drug_2: Drug.find_by(name: 'Tramadol'), categorization: Categorization.find_by(scale: 6))
    Cell.create!(drug_1: ghbgbl, drug_2: Drug.find_by(name: 'Benzodiazepines'), categorization: Categorization.find_by(scale: 6))
    Cell.create!(drug_1: ghbgbl, drug_2: Drug.find_by(name: 'MAOIs'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: ghbgbl, drug_2: Drug.find_by(name: 'SSRIs'), categorization: Categorization.find_by(scale: 2))
  end
  
  def self.setup_opioids_cells
    opioids = Drug.find_by(name: 'Opioids')
    Cell.create!(drug_1: opioids, drug_2: Drug.find_by(name: 'Tramadol'), categorization: Categorization.find_by(scale: 6))
    Cell.create!(drug_1: opioids, drug_2: Drug.find_by(name: 'Benzodiazepines'), categorization: Categorization.find_by(scale: 6))
    Cell.create!(drug_1: opioids, drug_2: Drug.find_by(name: 'MAOIs'), categorization: Categorization.find_by(scale: 4))
    Cell.create!(drug_1: opioids, drug_2: Drug.find_by(name: 'SSRIs'), categorization: Categorization.find_by(scale: 2))
  end
  
  def self.setup_tramadol_cells
    tramadol = Drug.find_by(name: 'Tramadol')
    Cell.create!(drug_1: tramadol, drug_2: Drug.find_by(name: 'Benzodiazepines'), categorization: Categorization.find_by(scale: 6))
    Cell.create!(drug_1: tramadol, drug_2: Drug.find_by(name: 'MAOIs'), categorization: Categorization.find_by(scale: 6))
    Cell.create!(drug_1: tramadol, drug_2: Drug.find_by(name: 'SSRIs'), categorization: Categorization.find_by(scale: 6))
  end
  
  def self.setup_benzo_cells
    benzo = Drug.find_by(name: 'Benzodiazepines')
    Cell.create!(drug_1: benzo, drug_2: Drug.find_by(name: 'MAOIs'), categorization: Categorization.find_by(scale: 1))
    Cell.create!(drug_1: benzo, drug_2: Drug.find_by(name: 'SSRIs'), categorization: Categorization.find_by(scale: 2))
    
    Cell.create!(drug_1: Drug.find_by(name: 'MAOIs'), drug_2: Drug.find_by(name: 'SSRIs'), categorization: Categorization.find_by(scale: 6))
    
  end
  
end
