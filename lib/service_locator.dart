import 'package:get_it/get_it.dart';
import 'package:get_it_example/controller.dart';

class AppLocator {

  static final I = GetIt.I;

  static void init(){
    I.registerLazySingleton<Controller>(() => Controller());
  }

  static Controller get controller => I.get<Controller>();

}