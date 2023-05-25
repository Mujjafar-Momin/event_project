import 'package:event_project/repository/model/speaker.dart';

class Event {
  final String image;
  final String startDate;
  final String? endDate;
  final String name;
  final String? location;
  final String? cost;
  final String? discountCost;
  final String? description;
  final List<Speaker> speakers;
  final List<String> categories;

  Event(
      {required this.categories,
      required this.image,
      required this.startDate,
      required this.endDate,
      required this.name,
      required this.location,
      required this.cost,
      required this.discountCost,
      required this.description,
      required this.speakers});
}
