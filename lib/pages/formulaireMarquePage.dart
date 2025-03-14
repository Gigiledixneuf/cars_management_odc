import 'package:flutter/material.dart';
import 'package:myapp/composant/flutter.dart';

class Formulairemarquepage extends StatelessWidget {
  const Formulairemarquepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFC2B3D6),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50),
            Row(
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
                    "Liste des Marques",
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
                  child: Text(
                    "Add marque",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(height: 75),
            Text(
              "Enregistrement Marques",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: Color(0xFF23313C),
              ),
            ),
            SizedBox(height: 70),

            // Input Nom mrque
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ), // Réduction des marges externes
              child: SizedBox(
                width: 330,
                child: TextField(
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: InputDecoration(
                    labelText: "Nom Marques",
                    labelStyle: TextStyle(
                      color: Color(0xFF4B4A4A),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ), // Label en noir
                    filled: true, // Active le remplissage de fond
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 50),

            // Input Nom pays
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ), // Réduction des marges externes
              child: SizedBox(
                width: 330,
                child: TextField(
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: InputDecoration(
                    labelText: "Pays Origine",
                    labelStyle: TextStyle(
                      color: Color(0xFF4B4A4A),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ), // Label en noir
                    filled: true, // Active le remplissage de fond
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 0, 0, 0),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 50),

            // Button d'enregistrement
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                minimumSize: Size(300, 50),
                backgroundColor: Color(0xFF0C134F),
              ),
              child: Text(
                "Enregistrer",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppli(),
    );
  }
}
