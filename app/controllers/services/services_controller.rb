class Services::ServicesController < ApplicationController
  def detail
    service_id = params[:id]
    @service = Service.includes(:supplier).find(service_id)
  end

  def compare
  end

  def purchase
  end
end
