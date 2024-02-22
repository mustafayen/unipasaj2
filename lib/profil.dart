import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unipasaj/firebase_auth/sign_in_provider.dart';
import 'package:unipasaj/login.dart';

class AyarlarEkrani extends StatefulWidget {
  @override
  _AyarlarEkraniState createState() => _AyarlarEkraniState();
}

class _AyarlarEkraniState extends State<AyarlarEkrani> {
  bool bildirimleriAcalim = true;
  int sesSeviyesi = 50;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  late User? user;
  late String? userId;

  @override
  void initState() {
    super.initState();
    fetchUserData();
  }

  void fetchUserData() async {
    user = _auth.currentUser;
    if (user != null) {
      userId = user!.uid;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.search,
            color: Colors.transparent, // Opaklık 0 olarak ayarlandı
          ),
          onPressed: () {},
        ),
        title: Text('Hesap',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.0,
            )),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Color(0x89D5D5D5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.only(bottom: 30)),
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    ListTile(
                        title: Text(
                          "ÜNİPASAJ iD: ${user!.uid}", // Accessing widget.user.uid here
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onTap: () {},
                        //trailing: Icon(Icons.navigate_next)
                      ),
                    Divider(),
                    ListTile(
                        title: Text(
                          "Ayarlar",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onTap: () {},
                        trailing: Icon(Icons.navigate_next)),
                    Divider(),
                    ListTile(
                        title: Text(
                          "Destek",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onTap: () {},
                        trailing: Icon(Icons.navigate_next)),
                    Divider(),
                    ListTile(
                        title: Text(
                          "Çıkış Yap",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onTap: () {
                          final provider = Provider.of<EmailSignInProvider>(
                              context, listen: false);
                          provider.signOut();
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => LoggedInWidget()));
                        },
                        trailing: Icon(Icons.navigate_next)),
                    //  Divider(),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 30)),
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    ListTile(
                        title: Text(
                          "Terms of Service",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onTap: () {},
                        trailing: Icon(Icons.navigate_next)),
                    Divider(),
                    ListTile(
                        title: Text(
                          "Add Disclosure",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onTap: () {},
                        trailing: Icon(Icons.navigate_next)),
                    Divider(),
                    ListTile(
                        title: Text(
                          "Pravicy Policy",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onTap: () {},
                        trailing: Icon(Icons.navigate_next)),
                    Divider(),
                    ListTile(
                        title: Text(
                          "App Version",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onTap: () {},
                        trailing: Text(
                          "1.0.0",
                          style: TextStyle(color: Colors.grey),
                        ),),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}