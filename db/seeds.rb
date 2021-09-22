Image.destroy_all
CharacterLocation.destroy_all

Image.create([{ title: "ski_trip", filename: "Ski_Trip.jpg" }, { title: "the_moon", filename: "The_Moon.jpg" }])

@ski_trip_img = Image.find_by(title: "ski_trip")
@ski_trip_character_locations = CharacterLocation.create(
  [
    { coordinates: "blah", character_img_file: @ski_trip_img.filename, image_id: @ski_trip_img.id }, # set coords once mapper is setup
    { coordinates: "blah", character_img_file: @ski_trip_img.filename, image_id: @ski_trip_img.id }
  ]
)
