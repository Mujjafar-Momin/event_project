
import 'package:event_project/repository/model/event.dart';
import 'package:event_project/repository/model/mock.dart';
import 'package:injectable/injectable.dart';

const _delay=Duration(seconds: 2);

@injectable
class EventRepository{

  Future<List<Event>> getEvents(String? category)=>Future.delayed(_delay,(){
    if(category == null){
      return events;
    }
    return events.where((event) => event.categories.contains(category)).toList();
  });
  }

