require 'csv'

class CoffeesController < ApplicationController
  before_action :set_coffee, only: [:edit, :update, :destroy]

  def index
    @coffees = Coffee.all
    @coffee = Coffee.new
  end

  def create
    @coffee = Coffee.new(coffee_params)
    if @coffee.save
      redirect_to coffees_path, notice: 'Coffee was successfully created.'
    else
      @coffees = Coffee.all
      render :index
    end
  end

  def edit
  end

  def update
    if @coffee.update(coffee_params)
      redirect_to coffees_path, notice: 'Coffee was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @coffee.destroy
    redirect_to coffees_path, notice: 'Coffee was successfully deleted.'
  end

  def export
    @coffees = Coffee.all

    csv_data = CSV.generate(headers: true) do |csv|
      csv << ["Name", "Flavor", "Price"]
      @coffees.each do |coffee|
        csv << [coffee.name, coffee.flavor, coffee.price]
      end
    end

    send_data csv_data, filename: "coffees-#{Date.today}.csv"
  end

  private

  def set_coffee
    @coffee = Coffee.find(params[:id])
  end

  def coffee_params
    params.require(:coffee).permit(:name, :flavor, :price)
  end

end
