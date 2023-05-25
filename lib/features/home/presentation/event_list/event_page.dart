import 'package:auto_route/auto_route.dart';
import 'package:event_project/features/home/presentation/event_list/event_category.dart';
import 'package:event_project/features/home/presentation/event_list/event_list.dart';
import 'package:event_project/features/home/presentation/event_list/search_box.dart';
import 'package:event_project/repository/repository.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

@RoutePage()
class EventListPage extends StatefulWidget {
  const EventListPage({Key? key}) : super(key: key);

  @override
  State<EventListPage> createState() => _EventListPageState();
}

class _EventListPageState extends State<EventListPage> {
  late ValueNotifier<String> _categoryNotifier;

  @override
  void initState() {
    super.initState();
    _categoryNotifier = ValueNotifier(categories[0]);
  }

  @override
  void dispose() {
    super.dispose();
    _categoryNotifier.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const Padding(
          padding: EdgeInsets.all(16.0),
          child: CircleAvatar(child: FlutterLogo()),
        ),
        title: Text(
          'Mujjafar Momin',
          style: GoogleFonts.poppins(
              textStyle: Theme.of(context).textTheme.titleLarge),
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.notifications_rounded))
        ],
      ),
      body: Column(
        children: [
          const SearchBox(),
          const SizedBox(height: 8),
          ValueListenableBuilder(
            valueListenable: _categoryNotifier,
            builder: (context, _category, _) {
              return EventCategory(
                activeCategory: _category,
                onCategorySelected: (category) =>
                    _categoryNotifier.value = category,
              );
            },
          ),
          const SizedBox(height: 8),
          ValueListenableBuilder(
            valueListenable: _categoryNotifier,
            builder: (context,_category,_) {
              return Expanded(
                child: Padding(
                  padding:const EdgeInsets.symmetric(horizontal: 16),
                  child: EventList(category: _category),
                ),
              );
            }
          ),
        ],
      ),
    );
  }
}
