import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFFC41A3B),
        primaryColorLight: Color(0xFFFBE0E6),
        accentColor: Color(0xFF1B1F32),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = 'Navigation Drawer';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('The Tech Designer'),
              accountEmail: Text('thetechdesigner@gmail.com'),
              currentAccountPicture: CircleAvatar(
                child: Icon(
                  Icons.person,
                  color: Color(0xFFC41A3B),
                  size: 48.0,
                ), // Insted of you can use Image
                backgroundColor: Color(0xFFFBE0E6),
              ),
            ), // Insted of you can use only drawer
            ListTile(
              leading: Icon(
                Icons.home,
                color: Color(0xFFC41A3B),
              ),
              title: Text('Home'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Update the state of the app.
                Navigator.pop(context);
                print('Home');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.category,
                color: Color(0xFFC41A3B),
              ),
              title: Text('Category'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Update the state of the app.
                Navigator.pop(context);
                print('Category');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.search,
                color: Color(0xFFC41A3B),
              ),
              title: Text('Search'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Update the state of the app.
                Navigator.pop(context);
                print('Search');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.shopping_cart,
                color: Color(0xFFC41A3B),
              ),
              title: Text('Cart'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Update the state of the app.
                Navigator.pop(context);
                print('Cart');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                color: Color(0xFFC41A3B),
              ),
              title: Text('Profile'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Update the state of the app.
                Navigator.pop(context);
                print('Profile');
              },
            ),
            Divider(
              height: 8.0,
              color: Color(0xFFC41A3B),
              indent: 18.0,
              // endIndent: 16.0,
            ),
            ListTile(
              leading: Icon(
                Icons.lock,
                color: Color(0xFFC41A3B),
              ),
              title: Text('Logout'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Update the state of the app.
                Navigator.pop(context);
                print('Logout');
              },
            ),
          ],
        ),
      ),
    );
  }
}
