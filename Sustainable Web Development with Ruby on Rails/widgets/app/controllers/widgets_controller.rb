class WidgetsController < ApplicationController
  def show
    manufacturer = OpenStruct.new(
      id: rand(100),
      name: "Sector 7G",
      address: OpenStruct.new(
        id: rand(100),
        country: "UK"
      )
    )
    @widget = OpenStruct.new(id: params[:id],
                             manufacturer_id: manufacturer.id,
                             manufacturer: manufacturer,
                             name: "Widget #{params[:id]}")
  end

  def index
    @widgets = [
      OpenStruct.new(id: 1, name: "Stembolt"),
      OpenStruct.new(id: 2, name: "flux Capacitor"),
    ]
  end
end