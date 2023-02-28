import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Assignment',
        debugShowCheckedModeBanner: false,
        home: MyDetails());
  }
}

class MyDetails extends StatefulWidget {
  const MyDetails({Key? key}) : super(key: key);

  @override
  State<MyDetails> createState() => _MyDetailsState();
}

class _MyDetailsState extends State<MyDetails> {
  final Color themeColor = Colors.teal;
  final Color darkColor = Colors.teal.shade800;
  final Color lightColor = Colors.teal.shade300;
  final String
      name = 'Kaolin Stacey',
      job = 'iOS & Android Developer',
      phone = '+1 514-567-1234',
      email = 'kaolinstacey.dev@gmail.com',
      personal = '@CodeWithKaolin';

  // Colors.teal

  TextField createField(IconData icon, String value) {
    return TextField(
      enabled: false,
      decoration: InputDecoration(
          prefixIconColor: themeColor,
          prefixIcon: Padding(
            padding: EdgeInsets.all(20.0),
            child: Icon(icon),
          ),
          label: Text(value),
          labelStyle: TextStyle(color: darkColor, fontSize: 25),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))),
    );
  }

  @override
  Widget build(BuildContext context) {
      return Scaffold(
          body: Container(
              color: themeColor,
              child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Center(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                              Column(
                                children: [
                                  const CircleAvatar(
                                    radius: 75,
                                    backgroundImage: AssetImage('assets/images/cat.png')
                                  ),
                                  Text(name, style: const TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'MrDafoe',
                                      wordSpacing: 10.0,
                                      fontSize: 50.0,
                                    letterSpacing: 5.0
                                    )
                                  ),
                                  Text(job, style: const TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Poppins',
                                      fontSize: 25.0,
                                    letterSpacing: 2.0
                                  )
                                  )
                                ],
                              ),
                              Divider(
                                color: lightColor,
                                thickness: 2.0,
                                height: 50.0,
                                indent: 75.0,
                                endIndent: 75.0
                              ),
                              Column(children: <Widget>[
                                createField(Icons.phone, phone),
                                const SizedBox(height: 10),
                                createField(Icons.email, email),
                                const SizedBox(height: 10),
                                createField(Icons.person, personal),
                              ])
                      ])
                  )
              )
          )
      );
  }
}
