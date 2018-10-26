class SchoolsController < ApplicationController
  def index
  	@schools = School.all
  end

  def show
  	@school = School.find(params[:id])
  	@spells = Spell.where(school_id: params[:id])
  end
end
