# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
mountain = Room.create(name: "Mountain")
city = Room.create(name: "City")

(1..4).each { |i| mountain.desks.create(seat: i, enabled: i % 2 == 1) }
(5..8).each { |i| mountain.desks.create(seat: i, enabled: i % 2 == 0) }
(9..12).each { |i| mountain.desks.create(seat: i, enabled: i % 2 == 1) }
(13..16).each { |i| mountain.desks.create(seat: i, enabled: i % 2 == 0) }
(17..20).each { |i| mountain.desks.create(seat: i, enabled: i % 2 == 1) }
(21..24).each { |i| mountain.desks.create(seat: i, enabled: i % 2 == 0) }
(25..28).each { |i| mountain.desks.create(seat: i, enabled: i % 2 == 1) }
(29..32).each { |i| mountain.desks.create(seat: i, enabled: i % 2 == 0) }

(1..4).each { |i| city.desks.create(seat: i, enabled: i % 2 == 0) }
(5..8).each { |i| city.desks.create(seat: i, enabled: i % 2 == 1) }
(9..12).each { |i| city.desks.create(seat: i, enabled: i % 2 == 0) }
(13..16).each { |i| city.desks.create(seat: i, enabled: i % 2 == 1) }
(17..20).each { |i| city.desks.create(seat: i, enabled: i % 2 == 0) }
(21..24).each { |i| city.desks.create(seat: i, enabled: i % 2 == 1) }
(25..28).each { |i| city.desks.create(seat: i, enabled: i % 2 == 0) }
(29..32).each { |i| city.desks.create(seat: i, enabled: i % 2 == 1) }
