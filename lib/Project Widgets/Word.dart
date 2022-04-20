
import 'dart:convert';
import 'package:flutter/services.dart';
import 'dart:math';

class WordFunction{
  Future <String> generateRandomWord()async{
 List words = [];
 //To get teh words from the list
    var word = await rootBundle.loadString('Assets/words_alpha.txt');
    print(word);
    //Letter of 5 words
    for(String i in const LineSplitter().convert(word)){
      if(i.length == 5){
        words.add(i);
      }
    }
    //Generate random words using math package 0 to length of list
    Random rand = Random();
    var randomNumber = rand.nextInt(words.length);
    return words[randomNumber].toString().toUpperCase();
  }

  generateRandomNumber() {}
  }