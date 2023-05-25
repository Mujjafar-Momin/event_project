
import 'package:event_project/di/di.dart';
import 'package:event_project/di/injection.config.dart';
import 'package:injectable/injectable.dart';

@InjectableInit(asExtension: false)
void configureDependencies()=>init(getIt);