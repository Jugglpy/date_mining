class PlansController < ApplicationController
  def index
  end

  def new
    @plan = Plan.new
    @plan.orders.build
    @plan.orders.build
    @plan.orders.build
  end

  def create
    @plan = Plan.new(plan_params)
    if @plan.save
      redirect_to root_path
    else
    end
  end

  private
    def plan_params
      params.require(:plan).permit(:name, :cost, orders_attributes: [:plan_id, :name, :place_id, :order])
    end
end
