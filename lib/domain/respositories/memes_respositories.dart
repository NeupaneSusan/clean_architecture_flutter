import 'package:dartz/dartz.dart';
import 'package:first_clean_atr/core/data_/data_states.dart';

import 'package:first_clean_atr/domain/entities/memes_entities.dart';

abstract class MemesRespository {
  Future<Either<Failure, List<MemesEntities>>> getNewMemes();
}
