# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Entry.create!(content: "I am blunt. Do not take it personally.")
Entry.create!(content: "I can be a smart-ass at times. Just tell me to stop and I will do my best to stop if it irks you.")
Entry.create!(content: "Do not take every piece of advice I give as gospel. I do not have the answers to all the problems.")
Entry.create!(content: "Challenge my ideas. I am always looking for alternatives and will consider them.")
Entry.create!(content: "Ask me questions.")
Entry.create!(content: "Don't spin your wheels working on a problem, but don't immediately give up and come to me if you have not at least tried to get over your obstacle.")
Entry.create!(content: "If you don't like something I do, tell me. I can take it.")
Entry.create!(content: "Don't be a complete jerk to me, and I will do the same to you.")
Entry.create!(content: "A lack of eye-contact while talking to or being spoken to does not equate to disinterest or disrespect. My mind and eyes wonder, but I am listening and/or just in deep thought.")
Entry.create!(content: "I am actually capable of having empathy, I tend to not show it.")
Entry.create!(content: "I am not a robot.")
Entry.create!(content: "As a child, I did not get along with the children at the playground until I understood social protocols enough to essentially run them on an emulation layer.")
Entry.create!(content: "I am not a fan of meetings.")
Entry.create!(content: "If you shove a large project in front of me all at once, it may look like I go into panic mode. Give me 10 minutes, I'll be fine.")
Entry.create!(content: "My grandfather always told me, \"Don't start something you can't finish.\" I take that mindset to heart.")

Link.create!(link_type: "Personal Site/Blog", url: "https://t27duck.com")
Link.create!(link_type: "GitHub", url: "https://gihub.com/t27duck")
Link.create!(link_type: "LinkedIn", url: "https://linkedin.com/in/t27duck")
Link.create!(link_type: "Twitter", url: "https://twitter.com/t27duck")
