# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ClassSpellList.destroy_all
Spell.destroy_all
AdventurerClass.destroy_all
School.destroy_all


spell_hash = JSON.parse(File.read('spells.json'))
school_hash = JSON.parse(File.read('schools.json'))
class_hash = JSON.parse(File.read('classes.json'))

class_hash['classes'].each do |x|
	AdventurerClass.create(:name => x['name'], 
						   :description => x['desc'])
end

puts "Finished populating Classes table"

school_hash['schools'].each do |school|
	School.create(:schoolName => school['name'],
				  :description => school['name'])
end

puts "Finished populating Schools table"

spell_hash['Spells'].each do |spell|
	doThis = Spell.create(:name => spell['name'],
					 :concentration => spell['concentration'],
					 :description => spell['desc'],
					 :range => spell['range'],
					 :components => spell['components'],
					 :duration => spell['duration'],
					 :castingTime => spell['casting_time'],
					 :level => spell['level'],
					 :school => School.find_by(schoolName: spell['school']))

	#puts "#{doThis.errors.full_messages}"

	casters = spell['class'].split(',')

	casters.each do |caster|
		
	end
end

puts "Finished populating spells table"

ClassSpellList.create(:className => AdventurerClass.first, :spellName => Spell.first)



puts "There are #{AdventurerClass.count} classes."
puts "There are #{School.count} schools."
puts "There are #{Spell.count} spells."

