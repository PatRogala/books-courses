class WidgetsController < ApplicationController
  def index
    @widgets = [
      OpenStruct.new(id: 1, name: 'Stembolt'),
      OpenStruct.new(id: 2, name: 'Flux Capacitor')
    ]
  end

  def show
    @widget = OpenStruct.new(id: params[:id],
                             manufacturer_id: rand(100),
                             name: "Widget #{params[:id]}")
  end
end
