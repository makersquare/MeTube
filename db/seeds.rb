# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create([
  {
    name: "Taylor Smith",
    email: "taylor@themakersquare.com"
  },
  {
    name: "Mike Ornellas",
    email: "mike@themakersquare.com"
  }
  ])

Video.create([
  {
    title: "Gladiator",
    description: "A great movie",
    youtube_id: "rNdKBPcVGJI",
    user_id: 1
  },
  {
    title: "Pacific Rim",
    description: "Giant robots fighting giant sea monsters",
    youtube_id: "SSNU6t0pmkw",
    user_id: 2
  },
  {
    title: "Frozen",
    description: "Cold 3D Animation",
    youtube_id: "FLzfXQSPBOg",
    user_id: 1
  }
  ])

Sound.create([
  {
    title: "Dusky - What I Never Knew (Original Mix)",
    soundcloud_url: "https://soundcloud.com/ausmusic/dusky-what-i-never-knew",
    user_id: 1
  },
  {
    title: "Pharmakon - Pitted (Seeming Mix)",
    soundcloud_url: "https://soundcloud.com/seeming/pharmakon-pitted-seeming-mix",
    user_id: 2
  }
])

v1 = Video.create({
  title: "Jessy Lanza - Pull My Hair Back",
  description: "An awesome track!",
  youtube_id: "GkGZr50rXqc",
  user_id: 1
})

v1.comments.create(user_id: 2, content: "So dope!")
