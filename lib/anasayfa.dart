import 'package:flutter/material.dart';
import 'package:tasarim_calismalari/renkler.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pizza",
          style: TextStyle(
            color: yaziRenk1,
            fontFamily: "Pacifico",
            fontSize: 22,
          ),
        ),
        centerTitle: true,
        backgroundColor: anaRenk,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Text(
              "Beef Cheese",
              style: TextStyle(
                fontSize: 36,
                color: anaRenk,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Image.asset("resimler/png-clipart-pizza-pizza.png"),
          ),
          Padding(
            padding: const EdgeInsets.only(top:16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text("Cheese", style: TextStyle(color: yaziRenk1)),
                  style: TextButton.styleFrom(backgroundColor: anaRenk),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("Sausage", style: TextStyle(color: yaziRenk1)),
                  style: TextButton.styleFrom(backgroundColor: anaRenk),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("Olive", style: TextStyle(color: yaziRenk1)),
                  style: TextButton.styleFrom(backgroundColor: anaRenk),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("Pepper", style: TextStyle(color: yaziRenk1)),
                  style: TextButton.styleFrom(backgroundColor: anaRenk),
                ),
              ],
            ),
          ),
         Padding(
           padding: const EdgeInsets.all(16.0),
           child: Column(
             children: [
               Text(
                 "20 min",
                 style: TextStyle(
                   fontSize: 22,
                   color: yaziRenk2,
                   fontWeight: FontWeight.bold,
                 ),
               ),Padding(
                 padding: const EdgeInsets.all(16.0),
                 child: Text(
                   "Delivery",
                   style: TextStyle(
                     fontSize: 22,
                     color: anaRenk,
                     fontWeight: FontWeight.bold,
                   ),
                 ),
               ),Text(
                 "Meat lover, get ready to meet your pizza!",
                 textAlign: TextAlign.center,
                 style: TextStyle(
                   fontSize: 22,
                   color: yaziRenk2,
                 ),
               ),
             ],
           ),
         ),
          Row(
            children: [

            ],
          )
        ],
      ),
    );
  }
}
