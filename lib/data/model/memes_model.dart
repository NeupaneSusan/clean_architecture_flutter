import 'package:first_clean_atr/domain/entities/memes_entities.dart';

class MemesModel extends MemesEntities {
  MemesModel(
      {required super.id,
      required super.name,
      required super.url,
      required super.width,
      required super.height,
      required super.boxCount,
      required super.captions});

  factory MemesModel.fromJson(Map<String, dynamic> map) {
    return MemesModel(
      id: map['id'],
      name: map['name'],
      url: map['url'],
      width: (map['width']).toDouble(),
      height: (map['height']).toDouble(),
      boxCount: map['box_count'],
      captions: map['captions'],
    );
  }
}
