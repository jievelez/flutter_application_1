import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: const Color(0xff266169),
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
          height: height,
          width: width,
          color: const Color(0xff5e908f),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 640,
                width: 980,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(32.0),
                    bottomRight: Radius.circular(32.0),
                    topLeft: Radius.circular(32.0),
                    bottomLeft: Radius.circular(32.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.16),
                      spreadRadius: 8,
                      blurRadius: 16,
                      offset: Offset(0, 4), // changes position of shadow
                    ),
                  ],
                ),
                child: Wrap(
                  children: [
                    Container(
                      height: 640,
                      width: 980 / 2.0,
                      decoration: BoxDecoration(
                        color: const Color(0xff266169),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(32.0),
                            bottomLeft: Radius.circular(32.0)),
                      ),
                    ),
                    Container(
                      height: 640,
                      width: 980 / 2.0,
                      decoration: BoxDecoration(
                        color: const Color(0xfffeba33),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(32.0),
                            bottomRight: Radius.circular(32.0)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 640 / 1.6,
                            width: 980 / 3.0,
                            child: Column(
                              children: [
                                Container(
                                  height: 640 / 2.0,
                                  width: 980 / 3.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(16.0),
                                      bottomRight: Radius.circular(16.0),
                                      topLeft: Radius.circular(16.0),
                                      bottomLeft: Radius.circular(16.0),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.08),
                                        spreadRadius: 4,
                                        blurRadius: 8,
                                        offset: Offset(
                                            0, 8), // changes position of shadow
                                      ),
                                    ],
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(top: 16),
                                        height: (640 / 2.0) / 4.0,
                                        width: 980 / 3.4,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(32.0),
                                            topLeft: Radius.circular(32.0),
                                          ),
                                        ),
                                        child: Wrap(
                                          children: [
                                            Container(
                                              width: (980 / 3.0) / 2.4,
                                              child: DefaultTextStyle(
                                                child: Text("ALREADY MEMBERS",
                                                    textAlign: TextAlign.left),
                                                style: TextStyle(
                                                    color: const Color(
                                                        0xfffeba33)),
                                              ),
                                            ),
                                            Container(
                                              width: (980 / 3.0) / 2.4,
                                              child: DefaultTextStyle(
                                                child: Text("Need Help?",
                                                    textAlign: TextAlign.right),
                                                style: TextStyle(
                                                    color: Colors.grey),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: (640 / 2.0) / 4.0,
                                        width: 980 / 3.4,
                                        child: TextField(
                                          decoration: InputDecoration(
                                              labelText: "Username"),
                                        ),
                                      ),
                                      Container(
                                        height: (640 / 2.0) / 4.0,
                                        width: 980 / 3.4,
                                        child: TextField(
                                          decoration: InputDecoration(
                                              labelText: "Password"),
                                        ),
                                      ),
                                      new GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                new MaterialPageRoute(
                                                    builder: (context) =>
                                                        new HomePage()));
                                          },
                                          child: Container(
                                              height: (640 / 2.0) / 5.0,
                                              width: 980 / 3.4,
                                              color: const Color(0xff1a535c),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  DefaultTextStyle(
                                                    child: Text("SIGN IN",
                                                        textAlign:
                                                            TextAlign.center),
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  ),
                                                ],
                                              )))
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 32),
                                  child: DefaultTextStyle(
                                    child: Text("Don't have an account yet?"),
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 8),
                                  child: DefaultTextStyle(
                                    child: Text("Create an Account"),
                                    style: TextStyle(color: Colors.black),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Pillow Real Estate"),
      ),
      body: Container(
        height: height,
        width: width,
        color: const Color(0xff5e908f),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              height: height * 0.06,
              width: width * 0.96,
              child: Row(
                children: [
                  Row(
                    children: [
                      Container(
                        child: TextButton(
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.all(20)),
                          ),
                          child: Text(
                            "Tiny Homes",
                            style: TextStyle(
                              height: 1.0,
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () => {print("login")},
                        ),
                      ),
                      Container(
                        child: TextButton(
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.all(20)),
                          ),
                          child: Text(
                            "Cabins",
                            style: TextStyle(
                              height: 1.0,
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () => {print("login")},
                        ),
                      ),
                      Container(
                        child: TextButton(
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.all(20)),
                          ),
                          child: Text(
                            "Beachfront",
                            style: TextStyle(
                              height: 1.0,
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () => {print("login")},
                        ),
                      ),
                      Container(
                        child: TextButton(
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.all(20)),
                          ),
                          child: Text(
                            "Tree Houses",
                            style: TextStyle(
                              height: 1.0,
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () => {print("login")},
                        ),
                      ),
                      Container(
                        child: TextButton(
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.all(20)),
                          ),
                          child: Text(
                            "Amazing Pools",
                            style: TextStyle(
                              height: 1.0,
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () => {print("login")},
                        ),
                      ),
                      Container(
                        child: TextButton(
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.all(20)),
                          ),
                          child: Text(
                            "Farms",
                            style: TextStyle(
                              height: 1.0,
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () => {print("login")},
                        ),
                      ),
                      Container(
                        child: TextButton(
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.all(20)),
                          ),
                          child: Text(
                            "Domes",
                            style: TextStyle(
                              height: 1.0,
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () => {print("login")},
                        ),
                      ),
                      Container(
                        child: TextButton(
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.all(20)),
                          ),
                          child: Text(
                            "House Boats",
                            style: TextStyle(
                              height: 1.0,
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () => {print("login")},
                        ),
                      ),
                      Container(
                        child: TextButton(
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.all(20)),
                          ),
                          child: Text(
                            "A-Frames",
                            style: TextStyle(
                              height: 1.0,
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () => {print("login")},
                        ),
                      ),
                      Container(
                        child: TextButton(
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.all(20)),
                          ),
                          child: Text(
                            "Yurts",
                            style: TextStyle(
                              height: 1.0,
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () => {print("login")},
                        ),
                      ),
                      Container(
                        child: TextButton(
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.all(20)),
                          ),
                          child: Text(
                            "Barns",
                            style: TextStyle(
                              height: 1.0,
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () => {print("login")},
                        ),
                      ),
                      Container(
                        child: TextButton(
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.all(20)),
                          ),
                          child: Text(
                            "Campers",
                            style: TextStyle(
                              height: 1.0,
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () => {print("login")},
                        ),
                      ),
                      Container(
                        child: TextButton(
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.all(20)),
                          ),
                          child: Text(
                            "Boats",
                            style: TextStyle(
                              height: 1.0,
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () => {print("login")},
                        ),
                      ),
                      Container(
                        child: TextButton(
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.all(20)),
                          ),
                          child: Text(
                            "More",
                            style: TextStyle(
                              height: 1.0,
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () => {print("login")},
                        ),
                      ),
                    ],
                  ),
                  Container(),
                ],
              )),
          Container(
            height: height * 0.88,
            width: width * 0.96,
            child: Wrap(
              children: [
                Container(
                  width: 320.0,
                  height: 420.0,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 300.0,
                          height: 320.0,
                          child: new Image.asset('images/stock.jpeg'),
                        ),
                        Text(
                          'Some Place Nice',
                        ),
                        Text('PHP: *Insert Price*'),
                        Text('Some Distance Away')
                      ]),
                ),
                Container(
                  width: 320.0,
                  height: 420.0,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 300.0,
                          height: 320.0,
                          child: new Image.asset('images/stock.jpeg'),
                        ),
                        Text(
                          'Some Place Nice',
                        ),
                        Text('PHP: *Insert Price*'),
                        Text('Some Distance Away')
                      ]),
                ),
                Container(
                  width: 320.0,
                  height: 420.0,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 300.0,
                          height: 320.0,
                          child: new Image.asset('images/stock.jpeg'),
                        ),
                        Text(
                          'Some Place Nice',
                        ),
                        Text('PHP: *Insert Price*'),
                        Text('Some Distance Away')
                      ]),
                ),
                Container(
                  width: 320.0,
                  height: 420.0,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 300.0,
                          height: 320.0,
                          child: new Image.asset('images/stock.jpeg'),
                        ),
                        Text(
                          'Some Place Nice',
                        ),
                        Text('PHP: *Insert Price*'),
                        Text('Some Distance Away')
                      ]),
                ),
                Container(
                  width: 320.0,
                  height: 420.0,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 300.0,
                          height: 320.0,
                          child: new Image.asset('images/stock.jpeg'),
                        ),
                        Text(
                          'Some Place Nice',
                        ),
                        Text('PHP: *Insert Price*'),
                        Text('Some Distance Away')
                      ]),
                ),
                Container(
                  width: 320.0,
                  height: 420.0,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 300.0,
                          height: 320.0,
                          child: new Image.asset('images/stock.jpeg'),
                        ),
                        Text(
                          'Some Place Nice',
                        ),
                        Text('PHP: *Insert Price*'),
                        Text('Some Distance Away')
                      ]),
                ),
                Container(
                  width: 320.0,
                  height: 420.0,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 300.0,
                          height: 320.0,
                          child: new Image.asset('images/stock.jpeg'),
                        ),
                        Text(
                          'Some Place Nice',
                        ),
                        Text('PHP: *Insert Price*'),
                        Text('Some Distance Away')
                      ]),
                ),
                Container(
                  width: 320.0,
                  height: 420.0,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 300.0,
                          height: 320.0,
                          child: new Image.asset('images/stock.jpeg'),
                        ),
                        Text(
                          'Some Place Nice',
                        ),
                        Text('PHP: *Insert Price*'),
                        Text('Some Distance Away')
                      ]),
                ),
                Container(
                  width: 320.0,
                  height: 420.0,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 300.0,
                          height: 320.0,
                          child: new Image.asset('images/stock.jpeg'),
                        ),
                        Text(
                          'Some Place Nice',
                        ),
                        Text('PHP: *Insert Price*'),
                        Text('Some Distance Away')
                      ]),
                ),
                Container(
                  width: 320.0,
                  height: 420.0,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 300.0,
                          height: 320.0,
                          child: new Image.asset('images/stock.jpeg'),
                        ),
                        Text(
                          'Some Place Nice',
                        ),
                        Text('PHP: *Insert Price*'),
                        Text('Some Distance Away')
                      ]),
                ),
              ],
            ),
          ),
        ]),
      ),
      endDrawer: Drawer(
        child: Column(children: [
          Container(
            child: Padding(
              padding: EdgeInsets.only(top: 50.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50.0,
                    child: new Image.asset('images/default.jpeg'),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    "John Iceberg Velez",
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    "Student",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          ListTile(
            onTap: () {},
            leading: Icon(
              Icons.person,
              color: Colors.black,
            ),
            title: Text("Profile"),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(
              Icons.add_to_home_screen,
              color: Colors.black,
            ),
            title: Text("Buy"),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(
              Icons.sell_sharp,
              color: Colors.black,
            ),
            title: Text("Sell"),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(
              Icons.real_estate_agent,
              color: Colors.black,
            ),
            title: Text("Rent"),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(
              Icons.home_work_sharp,
              color: Colors.black,
            ),
            title: Text("Manage Rentals"),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(
              Icons.settings,
              color: Colors.black,
            ),
            title: Text("Settings"),
          ),
          ListTile(
            onTap: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => new LoginPage()));
            },
            leading: Icon(
              Icons.logout_sharp,
              color: Colors.black,
            ),
            title: Text("Log Out"),
          ),
        ]),
      ),
    );
  }
}
