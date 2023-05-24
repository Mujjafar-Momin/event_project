import 'package:event_project/features/home/presentation/event_list/event_item.dart';
import 'package:event_project/features/home/presentation/event_list/model/mock.dart';
import 'package:flutter/material.dart';

class EventList extends StatelessWidget {
  const EventList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          return InkWell(
            onTap: (){},
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: EventItem(
                event: events[index],
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
        itemCount: events.length);
  }
}
