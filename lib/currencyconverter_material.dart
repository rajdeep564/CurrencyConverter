import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget{
   const CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState() =>CurrencyConverterMaterialPageState();

  } 


class CurrencyConverterMaterialPageState extends State<CurrencyConverterMaterialPage>{
  double result =0;
  final TextEditingController textEditingController = TextEditingController();
  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    
  print("rebuilt");
   
    final border = OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.black,
                      width: 2,
                      style: BorderStyle.solid,
                      strokeAlign: BorderSide.strokeAlignInside,
                    ),
                    borderRadius: BorderRadius.circular(7),
                  );
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        elevation: 5,
        title: const Text("Currency Converter",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 25
        ),
      ),
        centerTitle: true,
      ),
      backgroundColor: Colors.blue,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
             
              
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                  const Padding(
                    padding:  EdgeInsets.symmetric(vertical: 6),
                    child:  Icon(Icons.attach_money_outlined,
                    size: 50, 
                    color: Colors.black,
                    ),
                  ),
                   Text(
              "INR ${result!=0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}.",
                   style: const TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                   ),
              ),
                 ],
               ),
               Container(
                padding: const EdgeInsets.all(5),
                 child: TextField(
                  controller: textEditingController,
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    hintText: "Please enter amount in USD",
                    hintStyle: const TextStyle(
                      color: Colors.black
                    ),
                    prefixIcon: const Icon(Icons.monetization_on_outlined),
                    prefixIconColor: Colors.black,
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: border,
                    enabledBorder: border,
                  ),
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                    signed: true,
                  ),
                             ),
               ),
               Padding(
                 padding: const EdgeInsets.all(5.0),
                 child: ElevatedButton(onPressed: () {
                //setstate tells flutter to rebuilt this widget or thing this triggers rebuilt using built function
                  setState(() {
                      result = double.parse(textEditingController.text)*81;
                  });
              
                 },
                 
                 style:  ElevatedButton.styleFrom(
                  elevation: 10,
                  backgroundColor: (Colors.black),
                  foregroundColor: (Colors.white),
                  minimumSize : const Size(double.infinity, 60),
                  shape: (RoundedRectangleBorder(
                    borderRadius:  BorderRadius.circular(5),
                  ))),
                  child: const Text("CONVERT"),
                             ),
               ),
            ],
          ),
         ),  
       );
  }
}
