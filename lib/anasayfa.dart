import 'package:flutter/material.dart';
import 'package:tasarim_calismalari/components/chip_button.dart';
import 'package:tasarim_calismalari/l10n/app_localizations.dart';
import 'package:tasarim_calismalari/renkler.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {

    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;
    //print(ekranYuksekligi);
    //print(ekranGenisligi);

    var d = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pizza",
          style: TextStyle(
            color: yaziRenk1,
            fontFamily: "Pacifico",
            fontSize: ekranGenisligi/19,
          ),
        ),
        centerTitle: true,
        backgroundColor: anaRenk,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: ekranYuksekligi/43 ),
            child: Text(
              d!.pizzaBaslik,
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
               ChipButton(icerik: d.peynirYazi,),
               ChipButton(icerik: d.sucukYazi,),
               ChipButton(icerik: d.zeytinYazi,),
               ChipButton(icerik: d.biberYazi,),
              ],
            ),
          ),
         Padding(
           padding: const EdgeInsets.all(16.0),
           child: Column(
             children: [
               Text(
                 d.teslimatSure,
                 style: TextStyle(
                   fontSize: 22,
                   color: yaziRenk2,
                   fontWeight: FontWeight.bold,
                 ),
               ),Padding(
                 padding: const EdgeInsets.all(16.0),
                 child: Text(
                   d.teslimatBaslik,
                   style: TextStyle(
                     fontSize: 22,
                     color: anaRenk,
                     fontWeight: FontWeight.bold,
                   ),
                 ),
               ),Text(
                 d.pizzaAciklama,
                 textAlign: TextAlign.center,
                 style: TextStyle(
                   fontSize: 22,
                   color: yaziRenk2,
                 ),
               ),
             ],
           ),
         ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
             //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  d.fiyat,
                  style: TextStyle(
                    fontSize: 44,
                    color: anaRenk,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                SizedBox(width: 150,height: 50,),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(backgroundColor: anaRenk,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5)))
                  ),
                  child: Text(d.butonYazi, style: TextStyle(color: yaziRenk1,fontSize: 18)
                  ),

                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}


