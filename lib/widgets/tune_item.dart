

import 'package:flutter/material.dart';
import 'package:music_notes_player_app_setup/models/tune_model.dart';


class TuneItem extends StatelessWidget {
   TuneItem({

     required this.tune,
    super.key,
  });
final TuneModel  tune;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: ()async{
       tune.playSound();
        },
        child: Container(
          color:tune.color,
        ),
      ),
    );
  }
}