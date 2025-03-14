import 'package:flutter/material.dart';
import 'package:myapp/pages/dashbordPage.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff7c5acb),
      body: Center(
        // Centrer le tout
        child: Column(
          children: [
            SizedBox(height: 40),
            Image.network(
              "https://files.logomakr.com/99lb02-LogoMakr.png",
              height: 400,
              width: 200,
            ),
            SizedBox(height: 20),
            Text(
              "CarManagement – Pour une gestion fluide des voitures",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 100),
            ElevatedButton(
              onPressed: () {
                
                    Navigator.push(context, MaterialPageRoute(builder: (context) => CarsManagementScreen()));
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(300, 50),
                backgroundColor: Color(0xFF0C134F), // Couleur de fond
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3), // Coins arrondis
                ),
              ),
              child: Text(
                "Commencer",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
