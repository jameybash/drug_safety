# The once and future dashboard for the portal
class CellsController < ApplicationController

  def index
    @cell = Cell.find(params[:cell_id]) if params[:cell_id]
  end
  
  def find_cell
    d1 = Drug.find(params[:drug_1_id])
    d2 = Drug.find(params[:drug_2_id])
    
  end

end
