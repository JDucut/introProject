class SpellsController < ApplicationController
  def index
  	#@spells = Spell.all
  	@spells= Spell.all.page(params[:page]).per(30)
  end

  def show
  	@spell = Spell.find(params[:id])
  end
end
