import 'package:event_project/extensions/event_extension.dart';
import 'package:event_project/features/home/presentation/event_list/model/event.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EventSection extends StatelessWidget {
  const EventSection({Key? key, required this.event}) : super(key: key);
  final Event event;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      event.name,
                      style: GoogleFonts.poppins(
                          textStyle: Theme.of(context).textTheme.titleLarge,
                          fontWeight: FontWeight.w600,
                          fontSize: 24),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.bookmark_border_rounded),
                  )
                ],
              ),
            ),
            Text(
              event.presentableDate(),
              style: GoogleFonts.poppins(
                  textStyle: Theme.of(context).textTheme.bodySmall),
            ),
            const SizedBox(
              height: 6.0,
            ),
            Text(
              event.location ?? 'online',
              style: GoogleFonts.poppins(
                textStyle: Theme.of(context).textTheme.bodySmall,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    'Price for 1 person ',
                    style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Text(
                    event.discountCost == null ? "" : '${event.discountCost} \$',
                    style: GoogleFonts.poppins(
                        textStyle: Theme.of(context).textTheme.bodySmall,
                        decoration: TextDecoration.lineThrough),
                  ),
                ),
                Text(
                  event.cost == '' ? 'free' : '${event.cost} \$',
                  style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.bodyLarge,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const SizedBox(
              height: 32,
            )
          ],
        ),
      ),
    );
  }
}
