//  import 'package:bingo/cover_page.dart';
import 'package:bingo/cover_page.dart';
import 'package:bingo/main_page.dart';
import 'package:bingo/play_page.dart';
import 'package:flutter/material.dart';

void main(){
  return runApp(const Bingo());
  
}


class Bingo extends StatelessWidget{
  const Bingo({super.key});
  @override
  Widget build(BuildContext context){
    return  MaterialApp(
     
    initialRoute: '/',
    routes: {
      '/':(context) => const  BingoMainPage(),
      '/second':(context) =>  const BingoPlayPage(),
    },
     
    );
  }
}