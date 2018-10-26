class SearchController < ApplicationController
	def index
	end

	def results
		@query = "#{params[:q]}"
		@spells = Spell.where('name Like ?', "%#{params[:q]}%")
		@schools = School.where('schoolName Like ?', "%#{params[:q]}%")
		@adventurer_classes = AdventurerClass.where('name Like ?', "%#{params[:q]}%")
	end
end
