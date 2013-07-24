Location.destroy_all
Concert.destroy_all
Performer.destroy_all

loc = Location.create(
  {
    name: "Hollywood Bowl"
  }
)

concerts = Concert.create([
  {
    name: "The Beatles",
    occurs_at: Time.now + 1.day,
    duration: 240,
    cover_charge: 5000
  },
  {
    name: "The Rolling Stones",
    occurs_at: Time.now + 1.week,
    duration: 180,
    cover_charge: 4500
  }
])

performers = Performer.create([
  {
    name: "The Beatles"
  },
  {
    name: "The Rolling Stones"
  }
])

time_slots = TimeSlot.create([
  {
    concert: concerts[0],
    performer: performers[1],
    starts_at: Time.now + 1.day
  },
  {
    concert: concerts[0],
    performer: performers[0],
    starts_at: Time.now + 1.day + 2.hours
  },
  {
    concert: concerts[1],
    performer: performers[0],
    starts_at: Time.now + 1.week + 2.hours
  },
  {
    concert: concerts[1],
    performer: performers[1],
    starts_at: Time.now + 1.week + 2.hours
  }
])