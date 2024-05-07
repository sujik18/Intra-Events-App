class Event {
  final String imagePath, title, description, location, duration, punchLine1, punchLine2;
  final List categoryIds, galleryImages;

  Event(
      {required this.imagePath,
      required this.title,
      required this.description,
      required this.location,
      required this.duration,
      required this.punchLine1,
      required this.punchLine2,
      required this.categoryIds,
      required this.galleryImages});
}

final fiveKmRunEvent = Event(
    imagePath: "assets/event_images/5_km_downtown_run.jpeg",
    title: "5 Kilometer Beach Run",
    description: "A 5km run along the beautiful beach of Daman. Hurry! Tickets are limited. Meet new people and make new friends. ",
    location: "Devka Road, Daman",
    duration: "4h",
    punchLine1: "Marathon!",
    punchLine2: " Let the wind flow through your hair as you run through the beach.",
    galleryImages: [],
    categoryIds: [0, 1]);

final cookingEvent = Event(
    imagePath: "assets/event_images/granite_cooking_class.jpeg",
    title: "Joe's Cooking Class",
    description: "Guest list fill up fast so be sure to apply before hand to secure a spot.",
    location: "Food Court Avenue",
    duration: "4h",
    punchLine1: "Joe Cooking",
    punchLine2: " The latest fad in foodology, get the inside scoup.",
    categoryIds: [0, 4],
    galleryImages: ["assets/event_images/cooking_1.jpeg", "assets/event_images/cooking_2.jpeg", "assets/event_images/cooking_3.jpeg"]);

final musicConcert = Event(
    imagePath: "assets/event_images/music_concert.jpeg",
    title: "Arijit Music Concert",
    description: "Listen to Arijit's latest compositions.",
    location: "D.Y. Patil Stadium, Mumbai",
    duration: "5h",
    punchLine1: "Music Lovers!",
    punchLine2: " Come enjoy the latest music concert with your friends and family.",
    galleryImages: ["assets/event_images/cooking_1.jpeg", "assets/event_images/cooking_2.jpeg", "assets/event_images/cooking_3.jpeg"],
    categoryIds: [0, 2, 3]);

final footballCompetition = Event(
    imagePath: "assets/event_images/football_competition.jpg",
    title: "Sunday Football Match",
    description: "Come visit the final match of the season and witness the magic. Hurry! Tickets are limited.",
    location: "Moti Daman Ground, Daman",
    duration: "3h",
    punchLine1: "Lets FOOTBALLL!",
    punchLine2: " Come enjoy the latest football match with your friends and family.",
    galleryImages: ["assets/event_images/cooking_1.jpeg", "assets/event_images/cooking_2.jpeg", "assets/event_images/cooking_3.jpeg"],
    categoryIds: [0, 1, 3]);

final events = [
  fiveKmRunEvent,
  footballCompetition,
  musicConcert,
  cookingEvent,
];
