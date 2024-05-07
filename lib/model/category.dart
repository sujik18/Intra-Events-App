import 'package:flutter/material.dart';

class Category {
  final int categoryId;
  final String name;
  final IconData icon;

  Category({
    required this.categoryId,
    required this.name,
    required this.icon,
  });
}

final allCategory = Category(
  categoryId: 0,
  name: "All",
  icon: Icons.search,
);

final sportCategory = Category(
  categoryId: 1,
  name: "Sports",
  icon: Icons.sports_soccer,
);

final musicCategory = Category(
  categoryId: 2,
  name: "Music",
  icon: Icons.music_note,
);

final meetUpCategory = Category(
  categoryId: 3,
  name: "Meetup",
  icon: Icons.location_on,
);


final birthdayCategory = Category(
  categoryId: 4,
  name: "Training",
  icon: Icons.work,
);

final categories = [
  allCategory,
  sportCategory,
  musicCategory,
  meetUpCategory,
  birthdayCategory,
];
