import 'package:flutter/material.dart';
import 'package:myapp/composant/flutter.dart';

class voiturePage extends StatelessWidget {
  const voiturePage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFB2A2D3),
      appBar: AppBar(

        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.black87),
                  onPressed: () {},
                  child: Text('Liste des Marques'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue.shade900),
                  onPressed: () {},
                  child: Text('Ajouter une Voiture'),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  CarteCar("BMW", "M3",
                      "https://media.ed.edmunds-media.com/bmw/m3/2018/oem/2018_bmw_m3_sedan_base_fq_oem_4_150.jpg"),
                  CarteCar("Nissan", "GTR",
                      "https://media.ed.edmunds-media.com/nissan/gtr/2018/oem/2018_nissan_gt-r_coupe_nismo_fq_oem_1_150.jpg"),
                  CarteCar("Nissan", "Sentra",
                      "https://media.ed.edmunds-media.com/nissan/sentra/2017/oem/2017_nissan_sentra_sedan_srturbo_fq_oem_4_150.jpg"),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppli(),
    );
  }
}

class CarteCar extends StatelessWidget {
  final String marque;
  final String modele;
  final String imageUrl;

  const CarteCar(this.marque, this.modele, this.imageUrl, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black87,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: ListTile(
        contentPadding: EdgeInsets.all(15),
        leading: CircleAvatar(
          backgroundImage: NetworkImage(imageUrl),
          radius: 30,
        ),
        title: Text(
          marque,
          style: TextStyle(color: Colors.white, fontSize: 12),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              modele,
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            InkWell(
              onTap: () {},
              child: Text(
                'Detail.....',
                style: TextStyle(color: Colors.blueAccent, decoration: TextDecoration.underline),
              ),
            ),
          ],
        ),
      ),
    );
  }
}