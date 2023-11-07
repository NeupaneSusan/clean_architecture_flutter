import 'package:dartz/dartz.dart';
import 'package:first_clean_atr/core/data_/data_states.dart';
import 'package:first_clean_atr/core/data_/usecase/usecase.dart';

import 'package:first_clean_atr/domain/entities/memes_entities.dart';
import 'package:first_clean_atr/domain/respositories/memes_respositories.dart';

class GetMemesUseCase implements UseCase<List<MemesEntities>, void> {
  final MemesRespositorys memesRespository;

  GetMemesUseCase({required this.memesRespository});

  @override
  Future<Either<Failure, List<MemesEntities>>> call({void params}) {
    return memesRespository.getNewMemes();
  }
}
