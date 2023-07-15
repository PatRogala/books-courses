class WidgetsController < ApplicationController
  def show
    @widget = OpenStruct.new(id: params[:id],
                             menufacturer_id: rand(100),
                             name: "Widget #{params[:id]}")
  end
end