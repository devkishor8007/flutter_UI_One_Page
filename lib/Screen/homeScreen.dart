import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Color primaryColor = Theme.of(context).primaryColor;
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(backgroundColor: Colors.white, elevation: 0.0),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildStackOne(),
              buildPaddingTwo(),
              buildPaddingThree(),
              buildStackFour(context)
            ],
          ),
        ),
      ),
    );
  }

  Stack buildStackOne() {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
          height: 200,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Find Your",
              style: TextStyle(fontSize: 28),
            ),
            Text("Inspiration",
                style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold)),
            SizedBox(height: 25),
            Container(
              height: 60,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.grey[400].withOpacity(0.8),
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintStyle: TextStyle(color: Colors.white),
                  hintText: "Search you're looking for",
                  prefixIcon: Icon(Icons.search),
                  border: InputBorder.none,
                ),
              ),
            ),
          ]),
        ),
      ],
    );
  }

  Padding buildPaddingTwo() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        "Promo Today",
        style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
      ),
    );
  }

  Padding buildPaddingThree() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 250,
              width: 180,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1532012197267-da84d127e765?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80"),
                    fit: BoxFit.cover),
                color: Colors.red,
                borderRadius: BorderRadius.circular(22.0),
              ),
            ),
            SizedBox(width: 9),
            Container(
              height: 250,
              width: 180,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1471408680540-94f9748b0316?ixlib=rb-1.2.1&auto=format&fit=crop&w=889&q=80"),
                    fit: BoxFit.cover),
                color: Colors.red,
                borderRadius: BorderRadius.circular(22.0),
              ),
            ),
            SizedBox(width: 9),
            Container(
              height: 250,
              width: 180,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1431608660976-4fe5bcc2112c?ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80"),
                    fit: BoxFit.cover),
                color: Colors.red,
                borderRadius: BorderRadius.circular(22.0),
              ),
            ),
            SizedBox(width: 9),
            Container(
              height: 250,
              width: 180,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1532012197267-da84d127e765?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80"),
                    fit: BoxFit.cover),
                color: Colors.red,
                borderRadius: BorderRadius.circular(22.0),
              ),
            ),
            SizedBox(width: 9),
            Container(
              height: 250,
              width: 180,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1587321331690-94bce6052d79?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=751&q=80"),
                    fit: BoxFit.cover),
                color: Colors.red,
                borderRadius: BorderRadius.circular(22.0),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Stack buildStackFour(BuildContext context) {
    return Stack(children: [
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: 200,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1494253109108-2e30c049369b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80"),
                fit: BoxFit.cover),
            color: Colors.red,
            borderRadius: BorderRadius.circular(22.0),
          ),
        ),
      ),
      Positioned(
          bottom: 25,
          left: 30,
          child: Text(
            "Best Design",
            style: TextStyle(color: Colors.white, fontSize: 24),
          ))
    ]);
  }
}
