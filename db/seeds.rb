# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Club.create(name: 'Arsenal', abbrev: 'AFC')
Club.create(name: 'Aston Villa', abbrev: 'AVL')
Club.create(name: 'Chelsea', abbrev: 'CHE')
Club.create(name: 'Liverpool', abbrev: 'LFC')
Club.create(name: 'Leicester', abbrev: 'LEI')
Club.create(name: 'Stoke', abbrev: 'STK')


TeamSelection.create(name: 'Butland', club_id: '5', position: '0')

TeamSelection.create(name: 'Zouma', club_id: '2', position: '1')
TeamSelection.create(name: 'Zouma', club_id: '2', position: '1')
TeamSelection.create(name: 'Zouma', club_id: '2', position: '1')

TeamSelection.create(name: 'Ozil', club_id: '0', position: '2')
TeamSelection.create(name: 'Ozil', club_id: '0', position: '2')
TeamSelection.create(name: 'Ozil', club_id: '0', position: '2')
TeamSelection.create(name: 'Ozil', club_id: '0', position: '2')


TeamSelection.create(name: 'Vardy', club_id: '4', position: '3')
TeamSelection.create(name: 'Vardy', club_id: '4', position: '3')

TeamSelection.create(name: 'Moreno', club_id: '3', position: '4')
TeamSelection.create(name: 'Moreno', club_id: '3', position: '4')
TeamSelection.create(name: 'Moreno', club_id: '3', position: '4')
TeamSelection.create(name: 'Moreno', club_id: '3', position: '4')

