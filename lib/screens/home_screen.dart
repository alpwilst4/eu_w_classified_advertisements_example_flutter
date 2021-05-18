import 'package:eu_w_classified_advertisements_example_flutter/screens/country_select_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: EdgeInsets.all(30),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    16.0,
                  ),
                  border: Border.all(color: Colors.white, width: 5)),
              child: Center(
                child: Text(
                  "AB İş İlanları",
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                return Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CountrySelectScreen()));
              },
              child: Container(
                height: 80,
                margin: EdgeInsets.all(60),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      16.0,
                    ),
                    border: Border.all(color: Colors.white, width: 5)),
                child: Center(
                  child: CountrySelectScreen()
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width / 7),
              child: Row(
                children: [
                  Flexible(
                    child: Container(
                      margin: EdgeInsets.all(15),
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            16.0,
                          ),
                          border: Border.all(color: Colors.white, width: 5)),
                      child: Text(
                        "    Geri     ",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Flexible(
                    child: Container(
                      margin: EdgeInsets.all(15),
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            16.0,
                          ),
                          border: Border.all(color: Colors.white, width: 5)),
                      child: Text(
                        "Devam et",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


// Text(
//                     "Ülke Seçiniz",
//                     style: TextStyle(fontSize: 20, color: Colors.white),
//                   ),