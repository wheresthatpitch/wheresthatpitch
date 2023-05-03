ulster = Province.create({name: "Ulster", ainm: "Uladh"})
munster = Province.create({name: "Munster", ainm: "Mumhain"})
connaught = Province.create({name: "Connaught", ainm: "Connacht"})
leinster = Province.create({name: "Leinster", ainm: "Laighin"})

County.create(
  [
    {name: "Antrim", ainm: "Aontroim", province: ulster},
    {name: "Armagh", ainm: "Ard Mhaca", province: ulster},
    {name: "Cavan", ainm: "an Cabhán", province: ulster},
    {name: "Derry", ainm: "Doire", province: ulster},
    {name: "Donegal", ainm: "Dún na nGall", province: ulster},
    {name: "Down", ainm: "an Dún", province: ulster},
    {name: "Fermanagh", ainm: "Fear Manach", province: ulster},
    {name: "Monaghan", ainm: "Muineachán", province: ulster},
    {name: "Tyrone", ainm: "Tír Eoghain", province: ulster},

    {name: "Clare", ainm: "an Clár", province: munster},
    {name: "Cork", ainm: "Corcaigh", province: munster},
    {name: "Kerry", ainm: "Ciarraí", province: munster},
    {name: "Limerick", ainm: "Luimneach", province: munster},
    {name: "Tipperary", ainm: "Tiobraid Árainn", province: munster},
    {name: "Waterford", ainm: "Port Láirge", province: munster},

    {name: "Galway", ainm: "Gaillimh", province: connaught},
    {name: "Leitrim", ainm: "Liatroim", province: connaught},
    {name: "Mayo", ainm: "Maigh Eo", province: connaught},
    {name: "Roscommon", ainm: "Ros Comáin", province: connaught},
    {name: "Sligo", ainm: "Sligeach", province: connaught},

    {name: "Carlow", ainm: "Ceatharlach", province: leinster},
    {name: "Dublin", ainm: "Átha Cliath", province: leinster},
    {name: "Kildare", ainm: "Cill Dara", province: leinster},
    {name: "Kilkenny", ainm: "Cill Chainnigh", province: leinster},
    {name: "Laois", ainm: "Laois", province: leinster},
    {name: "Longford", ainm: "Longfort", province: leinster},
    {name: "Louth", ainm: "an Lú", province: leinster},
    {name: "Meath", ainm: "an Mhí", province: leinster},
    {name: "Offaly", ainm: "Uibh Fhailí", province: leinster},
    {name: "Westmeath", ainm: "an Íarmhí", province: leinster},
    {name: "Wexford", ainm: "Loch Garman", province: leinster},
    {name: "Wicklow", ainm: "Cill Mhaintáin", province: leinster},
  ]
)
