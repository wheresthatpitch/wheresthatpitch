# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

connaught = Province.create({name: "Connaught", slug: "connaught"})
leinster = Province.create({name: "Leinster", slug: "leinster"})
munster = Province.create({name: "Munster", slug: "munster"})
ulster = Province.create({name: "Ulster", slug: "ulster"})

County.create({name: "Antrim", slug: "antrim", province: ulster})
County.create({name: "Armagh", slug: "armagh", province: ulster})
County.create({name: "Cavan", slug: "cavan", province: ulster})
County.create({name: "Donegal", slug: "donegal", province: ulster})
County.create({name: "Fermanagh", slug: "fermanagh", province: ulster})
County.create({name: "Monaghan", slug: "monaghan", province: ulster})
County.create({name: "Derry", slug: "derry", province: ulster})
County.create({name: "Down", slug: "down", province: ulster})
County.create({name: "Tyrone", slug: "tyrone", province: ulster})

County.create({name: "Leitrim", slug: "leitrim", province: connaught})
County.create({name: "Sligo", slug: "sligo", province: connaught})
County.create({name: "Roscommon", slug: "roscommon", province: connaught})
County.create({name: "Mayo", slug: "mayo", province: connaught})
County.create({name: "Galway", slug: "galway", province: connaught})

County.create({name: "Louth", slug: "louth", province: leinster})
County.create({name: "Laois", slug: "laois", province: leinster})
County.create({name: "Dublin", slug: "dublin", province: leinster})
County.create({name: "Meath", slug: "meath", province: leinster})
County.create({name: "Westmeath", slug: "westmeath", province: leinster})
County.create({name: "Wexford", slug: "wexford", province: leinster})
County.create({name: "Kilkenny", slug: "kilkenny", province: leinster})
County.create({name: "Offaly", slug: "offaly", province: leinster})
County.create({name: "Carlow", slug: "carlow", province: leinster})
County.create({name: "Longford", slug: "longford", province: leinster})
County.create({name: "Wicklow", slug: "wicklow", province: leinster})
County.create({name: "Kildare", slug: "kildare", province: leinster})

County.create({name: "Cork", slug: "cork", province: munster})
County.create({name: "Kerry", slug: "kerry", province: munster})
County.create({name: "Clare", slug: "clare", province: munster})
County.create({name: "Tipperary", slug: "tipperary", province: munster})
County.create({name: "Waterford", slug: "waterford", province: munster})
County.create({name: "Limerick", slug: "limerick", province: munster})
