# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

t1 = Band.create(title: "Metallica")
Song.create(title: "One", link: "http://tabs.ultimate-guitar.com/m/metallica/one_ver2_tab.htm", band: t1)
Song.create(title: "Fade to Black", link: "http://tabs.ultimate-guitar.com/m/metallica/fade_to_black_tab.htmm", band: t1)
Song.create(title: "Orion", link: "http://tabs.ultimate-guitar.com/m/metallica/orion_ver4_btab.htm", band: t1)

t2 = Band.create(title: "Iron Maiden")
Song.create(title: "Fear of the Dark", link: "http://tabs.ultimate-guitar.com/i/iron_maiden/fear_of_the_dark_ver3_tab.htm", band: t2)
Song.create(title: "Mother of Mercy", link: "http://tabs.ultimate-guitar.com/i/iron_maiden/mother_of_mercy_tab.htm", band: t2)
Song.create(title: "Hallowed be thy name", link: "http://tabs.ultimate-guitar.com/i/iron_maiden/hallowed_be_thy_name_ver2_tab.htm", band: t2)

t3 = Band.create(title: "Pink Flyod")
Song.create(title: "Money", link: "http://tabs.ultimate-guitar.com/p/pink_floyd/money_ver4_tab.htm", band: t3)
Song.create(title: "Dogs", link: "http://tabs.ultimate-guitar.com/p/pink_floyd/dogs_ver2_tab.htm", band: t3)
Song.create(title: "Sheep", link: "http://tabs.ultimate-guitar.com/p/pink_floyd/sheep_tab.htm", band: t3)

