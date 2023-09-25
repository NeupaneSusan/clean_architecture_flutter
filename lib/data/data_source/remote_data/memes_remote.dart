import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:first_clean_atr/core/data_/data_states.dart';
import 'package:first_clean_atr/core/data_/url.dart';
import 'package:first_clean_atr/data/model/memes_model.dart';

import 'package:http/http.dart' as http;

abstract class MemesDataSources {
  Future<Either<Failure, List<MemesModel>>> getMemes();
}

class MemeDataSourcesImpl implements MemesDataSources {
  @override
  Future<Either<Failure, List<MemesModel>>> getMemes() async {
    try {
      final result = await http.get(ApiUrl.getMemesUrl);

      final data = json.decode(result.body)['data']['memes'] as List;
      if (result.statusCode == 200) {
        final dataValue = data.map((e) => MemesModel.fromJson(e)).toList();

        return Right(dataValue);
      }
      return Left(Failure(message: 'Internal error', code: result.statusCode));
    } catch (e) {
      print(e);
      return Left(Failure(message: e.toString()));
    }
  }
}
