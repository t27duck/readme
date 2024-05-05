# frozen_string_literal: true

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
Link.create!(link_type: "GitHub", url: "https://github.com/t27duck")
Link.create!(link_type: "LinkedIn", url: "https://linkedin.com/in/t27duck")
Link.create!(link_type: "Twitter", url: "https://twitter.com/t27duck")

heading = UserManualHeading.create!(content: "What are some honest, unfiltered things about you?")
UserManualEntry.create!(user_manual_heading: heading,
content: "My father is a salesman and my mother is an accountant, so I'm pretty screwed up in the head.")
UserManualEntry.create!(user_manual_heading: heading,
content: "I prefer seeing a project to the end, or at least a good stopping point, than failing in the middle of it (exception being extraneous circumstances where all parties agree that it's just not going to work... then let's just cut loses).")
UserManualEntry.create!(user_manual_heading: heading,
content: "I try to just \"float down the mighty river\" and take life as it comes to be... doesn't always work out.")

heading = UserManualHeading.create!(content: "What drives you nuts?")
UserManualEntry.create!(user_manual_heading: heading, content: "People who can't take a joke.")
UserManualEntry.create!(user_manual_heading: heading,
content: "Fake people/people act differently while around others.")
UserManualEntry.create!(user_manual_heading: heading, content: "Pointless meetings.")
UserManualEntry.create!(user_manual_heading: heading,
content: "People who dislike the Brady/Belichick Patriots. They're good. They're winners. Deal with it. (⌐■_■)")

heading = UserManualHeading.create!(content: "What are your quirks?")
UserManualEntry.create!(user_manual_heading: heading,
content: "I have issues parsing a large project when a large document is thrown in front of me. It usually takes about 10-15 minutes before I get out of \"this is insane and impossible\" mode to begin to break stuff down and work through it.")
UserManualEntry.create!(user_manual_heading: heading,
content: "I've woken up every day at ~5:30AM-6:00AM every day since about 3rd grade. Sometimes I go back to sleep for another hour if it's the weekend.")
UserManualEntry.create!(user_manual_heading: heading,
content: "Language Arts (spelling, writing, grammar, reading) was my worst subject in school.")
UserManualEntry.create!(user_manual_heading: heading,
content: "I traditionally start work at 7AM and end at 4PM. I'm fine with not doing that if the job requires more traditional hours, but that's typically the pattern I've set into. Though I do pause to check morning turnip prices at ~8:05AM.")
UserManualEntry.create!(user_manual_heading: heading,
content: "I tend to sigh at things. That's just usually me venting at something like a changed requirement, getting it out of my system, and then moving on.")

heading = UserManualHeading.create!(content: "What qualities do you particularly value in people who work with you?")
UserManualEntry.create!(user_manual_heading: heading, content: "The ability to take initiative.")
UserManualEntry.create!(user_manual_heading: heading, content: "Solid communication skills.")
UserManualEntry.create!(user_manual_heading: heading, content: "A sense of humor.")
UserManualEntry.create!(user_manual_heading: heading,
content: "The ability to take a punch to the face (see previous statement).")

heading = UserManualHeading.create!(content: "What are some things that people might misunderstand about you that you should clarify?")
UserManualEntry.create!(user_manual_heading: heading,
content: "I don't make eye contact often, especially over video conferencing (usually because I have the conference window on a different monitor than the one with the camera). I am paying attention.")
UserManualEntry.create!(user_manual_heading: heading,
content: "I don't look down when I walk often because I'm \"sad.\" I do that because I trip over my own two feet and am on the lookout for small raises in the sidewalk.")

heading = UserManualHeading.create!(content: "What's the best way to communicate with you?")
UserManualEntry.create!(user_manual_heading: heading,
content: "I typically have [company approved messaging system] on my phone and work laptop set to alert me on a DM or a ping. That would be the quickest way to get my attention.")
UserManualEntry.create!(user_manual_heading: heading,
content: "Email and video conferencing is fine too, though the former may result in a delayed response.")

heading = UserManualHeading.create!(content: "How do you like to give feedback?")
UserManualEntry.create!(user_manual_heading: heading,
content: "I am blunt and honest to a fault. If something isn't correct or doesn't work, I don't sugarcoat it.")
UserManualEntry.create!(user_manual_heading: heading,
content: "Beyond that, I typically follow the UNIX philosophy of \"No news is good news.\"")
UserManualEntry.create!(user_manual_heading: heading,
content: "I am not above giving out a positive \"good work\" to someone for completing a rather large or complex task.")

heading = UserManualHeading.create!(content: "How do you like to receive feedback?")
UserManualEntry.create!(user_manual_heading: heading,
content: "Straight and to the point. Don't dance around feelings. If I screw up, tell me.")

heading = UserManualHeading.create!(content: "Misc Things I Love")
UserManualEntry.create!(user_manual_heading: heading, content: "Raindrops on roses")
UserManualEntry.create!(user_manual_heading: heading, content: "Whiskers on kittens")
UserManualEntry.create!(user_manual_heading: heading, content: "Doorbells")
UserManualEntry.create!(user_manual_heading: heading, content: "Sleigh bells")
UserManualEntry.create!(user_manual_heading: heading, content: "Noodles are good (schnitzel is overkill though)")
UserManualEntry.create!(user_manual_heading: heading, content: "Not wild geese")
