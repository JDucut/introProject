class AdventurerClassesController < ApplicationController
  def index
  	@adventurer_classes = AdventurerClass.all
  end

  def show
  	@adventurer_class = AdventurerClass.find(params[:id])
  	@class_spells = @adventurer_class.spells.all.page(params[:page]).per(30)
  end
end
