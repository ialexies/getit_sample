//Create a get_it Locator

import 'package:get_it/get_it.dart';
import 'package:getit_sample/domain/meme_controller.dart';
import 'package:getit_sample/repository/meme_repository.dart';

final locator = GetIt.instance;

//Todo 3: Create a setup method and create our services

void setup() {
  locator.registerLazySingleton<MemeRepo>(() => MemeRepo());
  locator.registerLazySingleton<MemeDomainController>(
      () => MemeDomainController());
}
