class StaticPagesController < ApplicationController
  def home
    @services = Service.all.includes(:supplier)
  end

  def help
  end
end
