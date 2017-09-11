# The once and future dashboard for the portal
class CellsController < ApplicationController

  def index
    @d1 = Drug.find(params[:drug_1_id]) if params[:drug_1_id]
    @d2 = Drug.find(params[:drug_2_id]) if params[:drug_2_id]
    @cell = Cell.find(params[:cell_id]) if params[:cell_id]
  end
  
  def find_cell
    d1 = Drug.find(params[:drug_1_id])
    d2 = Drug.find(params[:drug_2_id])
    
    @cell = Cell.find_cell(d1, d2)
    redirect_to cells_path(cell_id: @cell.try(:id), drug_1_id: d1.id, drug_2_id: d2.id)
  end

end
