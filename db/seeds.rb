# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Book
# Audiobook
# Album
# Song
# Television show
# Movie
# Poetry
# Spoken word
# Performance
# Play
# Musical

book = WorkType.create({name: 'book'})
audiobook = WorkType.create({name: 'audiobook'})
album = WorkType.create({name: 'album'})
song = WorkType.create({name: 'song'})
show = WorkType.create({name: 'tv show'})
movie = WorkType.create({name: 'movie'})
poem = WorkType.create({name: 'poem'})
play = WorkType.create({name: 'play'})
musical = WorkType.create({name: 'musical'})
podcast = WorkType.create({name: 'podcast episode'})
ep = WorkType.create({name: 'EP'})
single = WorkType.create({name: 'single'})
artwork = WorkType.create({name: 'artwork'})

CreatorType.create([
  {name: "author", work_type: book},
  {name: "author", work_type: poem},
  {name: "director", work_type: movie},
  {name: "actor", work_type: movie},
  {name: "writer", work_type: movie},
  {name: "voice actor", work_type: audiobook},
  {name: "author", work_type: audiobook},
  {name: "editor", work_type: book},
  {name: "editor", work_type: movie},
  {name: "producer", work_type: movie},
  {name: "playwright", work_type: play},
  {name: "director", work_type: play},
  {name: "host", work_type: podcast},
  {name: "featured", work_type: album},
  {name: "featured", work_type: ep},
  {name: "featured", work_type: song},
  {name: "musical artist", work_type: album},
  {name: "musical artist", work_type: ep},
  {name: "musical artist", work_type: song},
  {name: "lyricist", work_type: song},
  {name: "producer", work_type: ep},
  {name: "producer", work_type: album},
  {name: "producer", work_type: song},
  {name: "artist", work_type: artwork}
])
