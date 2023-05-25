import 'package:auto_route/auto_route.dart';
import 'package:event_project/features/home.dart';
import 'package:event_project/features/home/presentation/event_list/event_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route'
)
@lazySingleton
class AppRouter extends _$AppRouter {

  @override
  // TODO: implement routes
  List<AutoRoute> get routes => [
    AutoRoute(page: EventListRoute.page,initial: true),
    AutoRoute(page: EventDetailRoute.page)
  ];
}
