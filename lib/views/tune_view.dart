
import 'package:flutter/material.dart';
import 'package:music_notes_player_app_setup/models/tune_model.dart';
import 'package:music_notes_player_app_setup/widgets/tune_item.dart';

class TuneView extends StatelessWidget {
  const TuneView({super.key});
final List<TuneModel>tunes=const[
  TuneModel(color: Color(0xffCEDEBD), sound:'note1.wav' ),
  TuneModel(color: Color(0xff9EB384), sound: 'note2.wav'),
  TuneModel(color: Color(0xff435334), sound: 'note3.wav'),
  TuneModel(color: Color(0xffCEDEBD), sound:'note4.wav' ),
  TuneModel(color: Color(0xff9EB384), sound: 'note5.wav'),
  TuneModel(color: Color(0xff435334), sound: 'note6.wav'),
  TuneModel(color: Color(0xffCEDEBD), sound:'note7.wav' ),
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0, //no shadow
        centerTitle: true,
        backgroundColor:Colors.white,
        title: Text('TUNES',style: TextStyle(color: Colors.green),),
      ),
      body:Column(
        children: tunes.map((e) => TuneItem( tune: e)).toList(),
      ),

    );
  }

}


