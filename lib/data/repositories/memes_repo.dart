import 'package:dartz/dartz.dart';
import 'package:first_clean_atr/core/data_/data_states.dart';
import 'package:first_clean_atr/data/data_source/remote_data/memes_remote.dart';
import 'package:first_clean_atr/data/model/memes_model.dart';

import 'package:first_clean_atr/domain/respositories/memes_respositories.dart';

class MemeRepositoriesImpl implements MemesRespository {
  const MemeRepositoriesImpl({required this.memeDataSources});
  final MemesDataSources memeDataSources;
  @override
  Future<Either<Failure, List<MemesModel>>> getNewMemes() {
    return memeDataSources.getMemes();
  }
}
