class WidgetsController < ApplicationController
  def show
    @widget = OpenStruct.new(id: params[:id],
                             menufacturer_id: rand(100),
                             name: "Widget #{params[:id]}")
  end

  def index
    @widgets = [
      OpenStruct.new(id: 1, name: "Stembolt"),
      OpenStruct.new(id: 2, name: "Flux Capacitor")
    ]
  end
end