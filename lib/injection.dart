import 'package:first_clean_atr/data/data_source/remote_data/memes_remote.dart';
import 'package:first_clean_atr/data/repositories/memes_repo.dart';
import 'package:first_clean_atr/domain/usecase/get_memes_usecase.dart';
import 'package:first_clean_atr/presentation/states/provider.dart';

import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void initRegister() async {
  locator.registerSingleton(
    MemeDataSourcesImpl(),
  );
  locator.registerSingleton<MemeRepositoriesImpl>(
    MemeRepositoriesImpl(memeDataSources: locator<MemeDataSourcesImpl>()),
  );
  locator.registerSingleton<GetMemesUseCase>(
    GetMemesUseCase(memesRespository: locator<MemeRepositoriesImpl>()),
  );
  locator.registerSingleton<MemeProvider>(MemeProvider());
}
