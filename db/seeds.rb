# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: citi= es.first)
Person.create(name: 'Администратор', role: '0')
gr = Group.create(name: '1020')
Person.create(name: 'Иван', role: '1', group: gr)
Person.create(name: 'Дмитрий', role: '1', group: gr)