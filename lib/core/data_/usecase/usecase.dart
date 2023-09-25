import 'package:dartz/dartz.dart';
import 'package:first_clean_atr/core/data_/data_states.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call({Params params});
}
