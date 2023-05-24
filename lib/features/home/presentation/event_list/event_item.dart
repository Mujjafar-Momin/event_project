import 'package:event_project/extensions/event_extension.dart';
import 'package:event_project/features/home/presentation/event_list/model/event.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EventItem extends StatelessWidget {
  const EventItem({Key? key, required this.event}) : super(key: key);
  final Event event;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 70,
          child: AspectRatio(
            aspectRatio: 0.6,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(event.image, fit: BoxFit.fill),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  event.presentableDate(),
                  style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.bodySmall),
                ),
                Text(
                  event.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.bodyMedium,
                      fontWeight: FontWeight.w600,
                      fontSize: 24),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  event.location ?? 'online',
                  style: GoogleFonts.poppins(
                    textStyle: Theme.of(context).textTheme.bodySmall,
                  ),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 16.0, left: 8.0),
          child: Column(
            children: [
              Text(
                event.cost == '' ? 'free' : '${event.cost} \$',
                style: GoogleFonts.poppins(
                    textStyle: Theme.of(context).textTheme.bodyMedium,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                event.discountCost == null ? "" : '${event.discountCost} \$',
                style: GoogleFonts.poppins(
                    textStyle: Theme.of(context).textTheme.bodySmall,
                    decoration: TextDecoration.lineThrough),
              )
            ],
          ),
        )
      ],
    );
  }
}
