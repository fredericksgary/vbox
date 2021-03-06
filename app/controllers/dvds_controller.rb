class DvdsController < ApplicationController
  def create
    m = Machine.find(params[:machine_id])
    report m.connect_iso(ISO.find(params[:name]))
    redirect_to_index
  end

  def destroy
    m = Machine.find(params[:machine_id])
    report m.eject_iso
    redirect_to_index
  end 
end
