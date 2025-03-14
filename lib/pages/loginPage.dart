import 'package:flutter/material.dart';
import 'package:myapp/pages/homePage.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  icon: Icon(Icons.arrow_back, color: Color(0xFF2260FF)),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage()));
                  },
                ),
              ),
              Center(
                child: Text(
                  "Log In",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2260FF),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2260FF),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                style: TextStyle(fontSize: 14, color: Colors.black54),
              ),
              SizedBox(height: 20),
              Text("Email or Mobile Number", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 5),
              TextField(
                decoration: InputDecoration(
                  hintText: 'example@example.com',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(13.0), borderSide: BorderSide.none),
                  filled: true,
                  fillColor: Color(0xFFECF1FF),
                ),
              ),
              SizedBox(height: 20),
              Text("Password", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 5),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: '******',
                  suffixIcon: Icon(Icons.visibility_off),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(13.0), borderSide: BorderSide.none),
                  filled: true,
                  fillColor: Color(0xfFECF1FF),
                ),
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text("Forget Password", style: TextStyle(color: Color(0xFF2260FF))),
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF2260FF),
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 80),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                  ),
                  onPressed: () {},
                  child: Text("Log In", style: TextStyle(fontSize: 16, color: Colors.white)),
                ),
              ),
              SizedBox(height: 20),
              Center(child: Text("or sign up with")),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.email, size: 30, color: Color(0xFF2260FF)),
                    onPressed: () {},
                  ),
                  SizedBox(width: 20),
                  IconButton(
                    icon: Icon(Icons.facebook, size: 30, color: Color(0xFF2260FF)),
                    onPressed: () {},
                  ),
                  SizedBox(width: 20),
                  IconButton(
                    icon: Icon(Icons.fingerprint, size: 30, color: Color(0xFF2260FF)),
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(height: 20),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?"),
                    TextButton(
                      onPressed: () {},
                      child: Text("Sign Up", style: TextStyle(color: Color(0xFF2260FF))),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}