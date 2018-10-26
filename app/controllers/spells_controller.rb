class SpellsController < ApplicationController
  def index
  	@spells = Spell.all
  end

  def show
  end
end
