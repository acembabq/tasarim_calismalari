import 'package:flutter/material.dart';

import '../renkler.dart';

class ChipButton extends StatelessWidget {
  String icerik;

  ChipButton({required this.icerik});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(backgroundColor: anaRenk,),
      child: Text(icerik, style: TextStyle(color: yaziRenk1,fontSize: 18)
      ),

    );
  }
}
