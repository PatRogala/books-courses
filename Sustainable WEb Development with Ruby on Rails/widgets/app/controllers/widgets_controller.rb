class WidgetsController < ApplicationController
  def index
    @widgets = [
      OpenStruct.new(id: 1, name: 'Stembolt'),
      OpenStruct.new(id: 2, name: 'Flux Capacitor')
    ]
  end

  def show
    manufacturer = OpenStruct.new(
      id: rand(100),
      name: 'SEctor 7G',
      address: OpenStruct.new(
        id: rand(100),
        country: 'UK'
      )
    )

    @widget = OpenStruct.new(id: params[:id],
                             manufacturer_id: manufacturer.id,
                             manufacturer:,
                             name: "Widget #{params[:id]}")
  end
end
