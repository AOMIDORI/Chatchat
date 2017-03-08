class Services::ServicesController < ApplicationController
  def detail
    service_id = params[:id]
    @service = Service.includes(:supplier, :reviews).find(service_id)
    @related_services = @service.supplier.services.where.not(id: @service.id)
  end

  def compare
  end

  def add_to_cart
    # Add item to cart, then redirect
    add_item_to_cart(params[:id])
    redirect_to services_cart_url
  end

  def remove_from_cart
    remove_item_from_cart(params[:id])
    redirect_to services_cart_url
  end

  def cart
    service_ids = session[:services] || []
    @services = Service.includes(:supplier).find(service_ids)
    @subtotal = @services.map { |s| s.price }.sum
  end

  def purchase
    session[:services] = []
    redirect_to root_url
  end

  private

  def add_item_to_cart(service_id)
    if session[:services].nil?
      session[:services] = []
    end

    session[:services].append(service_id).uniq!
  end

  def remove_item_from_cart(service_id)
    unless session[:services].nil?
      session[:services].delete_if { |s| s == service_id}
    end
  end
end
