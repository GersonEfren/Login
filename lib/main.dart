import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.amber,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isLogin = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            semanticLabel: 'menu',
          ),
          onPressed: () {
            print('Menu button');
          },
        ), //dede
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              semanticLabel: 'search',
            ),
            onPressed: () {
              print('Search button');
            },
          ),
          IconButton(
            icon: Icon(
              Icons.tune,
              semanticLabel: 'filter',
            ),
            onPressed: () {
              print('Filter button');
            },
          ), //fin de iconos
        ],
        title: Text("Login"),
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 25.0),
            Column(
              children: <Widget>[
                Image.asset('assets/login.png'),
                SizedBox(height: 10.0),
              ],
            ),
            if (!isLogin)
              
                Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        // fillColor: Colors.amber,
                        labelText: 'Nombre de usuario',
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        // fillColor: Colors.amber,
                        labelText: 'Contraseña',
                      ),
                      obscureText: true, 
                    ),
                        Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        FlatButton(
                          child: Text('Cancelar'),
                          onPressed: () {
                            setState(() {
                              isLogin = false;
                            });
                          },
                        ),
                        RaisedButton(
                          child: Text(
                            'Siguiente',
                          ),
                          onPressed: () {
                            setState(() {
                              isLogin = true;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              )
                 else 
                 Center(
                child: Column(
                  children: <Widget>[
                    Text('Ya entraste!'),
                    RaisedButton(
                      elevation: 20.0,
                      child: Text('salir'),
                      onPressed: () {
                        setState(() {
                          isLogin = false;
                        });
                      },
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
