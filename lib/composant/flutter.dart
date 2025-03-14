import 'package:flutter/material.dart';

class BottomAppli extends StatelessWidget {
  const BottomAppli({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(icon: Icon(Icons.home), onPressed: () {}),
          IconButton(icon: Icon(Icons.car_crash_sharp), onPressed: () {}),
          IconButton(icon: Icon(Icons.table_chart_outlined), onPressed: () {}),
          IconButton(icon: Icon(Icons.gif_box_rounded), onPressed: () {}),
        ],
      ),
    );
  }
}

class HeaderButtonMarque extends StatelessWidget {
  final String Nom1;
  final String Nom2;

  const HeaderButtonMarque(this.Nom1,this.Nom2,{super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          MainAxisAlignment.center, // Centrage horizontal des boutons
      children: [
        // Liste mrq button
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFF23313C),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          ),
          child: Text(
            Nom1,
            style: TextStyle(color: Colors.white),
          ),
        ),
        SizedBox(width: 10), // Espacement entre les boutons
        // Add mrq button
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFF1A237E),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          ),
          child: Text(Nom2, style: TextStyle(color: Colors.white)),
        ),
      ],
    );
  }
}
