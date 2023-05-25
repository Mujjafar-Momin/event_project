import 'package:event_project/di/di.dart';
import 'package:event_project/features/home/presentation/event_list/event_item.dart';
import 'package:event_project/navigation/home_navigation.dart';
import 'package:event_project/repository/repository.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EventList extends StatelessWidget {
  const EventList({Key? key, required this.category}) : super(key: key);
  final String category;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getIt<EventRepository>().getEvents(category),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final events = snapshot.data;
            if (events == null || events.isEmpty) {
              return Center(
                child: Text('No events nearby, Please check later.',
                  style: GoogleFonts.poppins(
                    textStyle: Theme.of(context).textTheme.labelMedium
                  ),
                ),
              );
            }
            return ListView.separated(
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () =>
                        getIt<HomeNavigation>().openEventDetails(events[index]),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: EventItem(
                        event:events[index],
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const Divider(
                    color: Colors.black12,
                    height: 0,
                  );
                },
                itemCount:events.length);
          }
          return const Center(child: CircularProgressIndicator(),);
        }
    );
  }
}
