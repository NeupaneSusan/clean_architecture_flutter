import 'package:dartz/dartz.dart';
import 'package:first_clean_atr/core/data_/data_states.dart';
import 'package:first_clean_atr/domain/entities/memes_entities.dart';
import 'package:first_clean_atr/domain/usecase/get_memes_usecase.dart';
import 'package:first_clean_atr/injection.dart';

import 'package:flutter/material.dart';

class MemeProvider extends ChangeNotifier {
  final GetMemesUseCase getMemesUseCase = locator.get<GetMemesUseCase>();
  Either<Failure, List<MemesEntities>>? _response;
  bool isLoading = true;
  void setStates(bool value) {
    isLoading = value;
    notifyListeners();
  }

  getNewMemes() {
    getMemesUseCase.call().then((value) {
      _response = value;
      setStates(false);
    });
  }

  Either<Failure, List<MemesEntities>>? get response => _response;
}
