// ignore_for_file: avoid_print



import 'package:bingo/main_page.dart';
import 'package:bingo/src/grids/eight.dart';
import 'package:bingo/src/grids/five.dart';
import 'package:bingo/src/grids/seven.dart';
import 'package:bingo/src/grids/six.dart';
import 'package:flutter/material.dart';

class BingoPlayPage extends StatelessWidget {
  const BingoPlayPage({super.key});
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop(
            MaterialPageRoute(builder: (context){
              return const BingoMainPage();
            })
          );
        },
         icon:const Icon(Icons.arrow_back)
              ),
    ),
    
      body:  Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Icon(Icons.play_arrow_rounded),
             Text('Play', style: TextStyle(
            fontFamily: 'PurplePurse',
            fontSize: 40
            ),
           )
          ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: SizedBox(
                  width: 800,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 81,
                        height: 50,
                        child: ElevatedButton(onPressed: (){
                                            Navigator.of(context).push(
                                              MaterialPageRoute(
                                                builder: (context){
                                                  return const FiveByFive();
                                                }));
                                          }, 
                                          
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:const  Color.fromRGBO(255, 152, 120, 1),
                                            foregroundColor: Colors.white,
                                            elevation: 15,
                                            shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(10))
                                            ),
                                            
                                            
                                          ),
                                          child: const Text('5x5'),),
                      ),
                  SizedBox(
                        width: 81,
                        height: 50,
                        child: ElevatedButton(onPressed: (){
                                            Navigator.of(context).push(
                                              MaterialPageRoute(
                                                builder: (context){
                                                  return const SixBySix();
                                                }));
                                          }, 
                                          
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:const  Color.fromRGBO(255, 152, 120, 1),
                                            foregroundColor: Colors.white,
                                            elevation: 15,
                                            shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(10))
                                            ),
                                            
                                            
                                          ),
                                          child: const Text('6x6'),),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
            child: SizedBox(
              width: 800,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 81,
                        height: 50,
                        child: ElevatedButton(onPressed: (){
                                            Navigator.of(context).push(
                                              MaterialPageRoute(
                                                builder: (context){
                                                  return const SevenBySeven();
                                                }));
                                          }, 
                                          
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:const  Color.fromRGBO(255, 152, 120, 1),
                                            foregroundColor: Colors.white,
                                            elevation: 15,
                                            shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(10))
                                            ),
                                            
                                            
                                          ),
                                          child: const Text('7x7'),),
                      ),
                      SizedBox(
                        width: 81,
                        height: 50,
                        child: ElevatedButton(onPressed: (){
                                            Navigator.of(context).push(
                                              MaterialPageRoute(
                                                builder: (context){
                                                  return const EightByEight();
                                                }));
                                          }, 
                                          
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:const  Color.fromRGBO(255, 152, 120, 1),
                                            foregroundColor: Colors.white,
                                            elevation: 15,
                                            shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(10))
                                            ),
                                            
                                            
                                          ),
                                          child: const Text('8x8'),),
                      )
                    ],
                  ),
            ),
          )
        ],
      ),
  
    );
  }
}