class AdventurerClassesController < ApplicationController
  def index
  	@adventurer_classes = AdventurerClass.all
  end

  def show
  	@adventurer_class = AdventurerClass.find(params[:id])
  end
end
