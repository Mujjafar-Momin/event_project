import 'package:event_project/features/home.dart';
import 'package:event_project/routes/app_router.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class HomeNavigation {
  final AppRouter _appRouter;

  HomeNavigation(this._appRouter);

  void openEventDetails(Event event) =>
      _appRouter.push(EventDetailRoute(event: event));
}
