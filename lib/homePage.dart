import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 152, 149, 152),
      body: Center(
          child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 50),
            child: SizedBox(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/developer.webp"),
                radius: 70,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Najiya Nasrin",
            style: TextStyle(
                fontSize: 36,
                fontFamily: 'LilitaOne',
                color: Colors.grey.shade800),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "FLUTTER  DEVELOPER",
            style: GoogleFonts.acme(
                letterSpacing: 3, fontSize: 20, color: Colors.grey.shade700),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              color: Colors.grey.shade300,
            ),
            height: 50,
            width: 350,
            child: Row(
              children: const [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Icon(
                    Icons.phone,
                    size: 29,
                    color: Color.fromARGB(255, 116, 112, 112),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    "+919746852627",
                    style: TextStyle(
                      fontFamily: 'LilitaOne',
                      color: Color.fromARGB(255, 116, 112, 112),
                      fontSize: 20,
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              color: Colors.grey.shade300,
            ),
            height: 50,
            width: 350,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Icon(
                    Icons.email_outlined,
                    size: 29,
                    color: Color.fromARGB(255, 116, 112, 112),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    "iamnajiya113@gmail.com",
                    style: TextStyle(
                      fontFamily: 'LilitaOne',
                      color: Color.fromARGB(255, 116, 112, 112),
                      fontSize: 20,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}
