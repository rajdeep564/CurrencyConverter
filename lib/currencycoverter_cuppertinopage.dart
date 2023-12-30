import 'package:flutter/cupertino.dart';

class CurrencyCoverterCuppertinoPage extends StatefulWidget {
  const CurrencyCoverterCuppertinoPage({super.key});

  @override
  State<CurrencyCoverterCuppertinoPage> createState() => _CurrencyCoverterCuppertinoPageState();
}

class _CurrencyCoverterCuppertinoPageState extends State<CurrencyCoverterCuppertinoPage> {
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
   
    return  CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: CupertinoColors.systemGreen,
        middle:  Text("Currency Converter",
        style: TextStyle(
          color: CupertinoColors.white,
          fontWeight: FontWeight.bold,
          fontSize: 25
        ),
      ),
      ),
      backgroundColor: CupertinoColors.systemMint,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
             
              
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                  const Padding(
                    padding:  EdgeInsets.symmetric(vertical: 6),
                    child:  Icon(CupertinoIcons.money_dollar,
                    size: 50, 
                    color: CupertinoColors.black,
                    ),
                  ),
                   Text(
              "INR ${result!=0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}.",
                   style: const TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: CupertinoColors.white,
                   ),
              ),
                 ],
               ),
               Container(
                padding: const EdgeInsets.all(5),
                 child: CupertinoTextField(
                  controller: textEditingController,
                  style: const TextStyle(
                    color: CupertinoColors.black,
                  ),
                  decoration: BoxDecoration(
                    color:CupertinoColors.white,
                    border:Border.all(),
                    borderRadius: BorderRadius.circular(5),
                 ),
                 placeholder: 'Please enter the amount in USD',
                 prefix: const Icon(CupertinoIcons.money_dollar),
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                    signed: true,
                  ),
                             ),
               ),
               Padding(
                 padding: const EdgeInsets.all(5.0),
                 child: CupertinoButton(onPressed: () {
                //setstate tells flutter to rebuilt this widget or thing this triggers rebuilt using built function
                  setState(() {
                      result = double.parse(textEditingController.text)*81;
                  });
              
                 },
                 color: CupertinoColors.black,
                 
                 
                  child: const Text("CONVERT"),
                             ),
               ),
            ],
          ),
         ),  
       );
  }
}