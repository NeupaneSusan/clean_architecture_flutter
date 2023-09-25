import 'package:first_clean_atr/domain/entities/memes_entities.dart';
import 'package:flutter/material.dart';

class MemeCard extends StatelessWidget {
  final MemesEntities data;
  const MemeCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(child: Image.network(data.url)),
        Center(
          child: Text(
            data.name,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w600,
                color: Colors.redAccent),
          ),
        ),
      ],
    );
  }
}
