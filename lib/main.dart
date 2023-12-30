import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/currencyconverter_material.dart';
import 'package:my_app/currencycoverter_cuppertinopage.dart';

void main(){
  runApp(const MyApp());//purpose of const is to declare that this constroctor in a compile time consatnt 
}

//Material App
//1.state less widget : in a state less widget data is immutable  
//2.statefull widget : in state full state can change its muttable
//inherited widget


//key : key is the class in flutter that helps between identify and diffrenciate between widgets .specific key to specific widget instance 


//state : state refers to data how the widget will look like , data that your widget will care about 

// widget : widget refers to data how the screen will look like

//Two types of design 
//1.Material Design
//2.Cupertino Design

//Material App : material design , navigation , localization , internationalization, theme, it look after global part 

//scaffold gives access to header footer all stuff, it looks after local part
class MyApp extends StatelessWidget{
  const MyApp({super.key});//optionally taking some stuff to the constructor and passing it to the super widget the widget we are extending to in our case it is stateless widget 
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CurrencyConverterMaterialPage(),
    );
  }
}
class MycuppertinoApp extends StatelessWidget {
  const MycuppertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home: CurrencyCoverterCuppertinoPage(),
    );
  }
}