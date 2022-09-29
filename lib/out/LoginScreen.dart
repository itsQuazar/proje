
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pro/out/HomeScreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<FirebaseApp> _initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
            future: _initializeFirebase(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return LoginScreen();
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            }));
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  static Future<User> loginUsingEmailPassword(
      {
        @required String email,
        @required String password,
        @required BuildContext context}) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User user;
    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      user = userCredential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == "user-not-found") {
        print("no user found for that email");
      }
    }
    return user;
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController emailcontroller = TextEditingController();
    TextEditingController passwordcontroller = TextEditingController();
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Login ",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 44.0,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 45,
              ),
              TextField(

                controller: emailcontroller,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  hintText: "User Email",
                  prefixIcon: Icon(Icons.mail, color: Colors.black),
                ), // InputDecoration
              ), // TextField
              const SizedBox(
                height: 26.0,
              ), // SizedBox
              TextField(
                controller: passwordcontroller,
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: "User Password",
                  prefixIcon: Icon(Icons.lock, color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 12.0,
              ), // Sized Box
              const Text(
                "Don't Remember your Password?",
                style: TextStyle(color: Colors.teal),
              ), // Text
              const SizedBox(
                height: 50.0,
              ),

              Center(
                child: Container(
                    width: 300,
                    child: RawMaterialButton(
                      elevation: 0.0,
                      padding: EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0)),
                      fillColor: Color.fromRGBO(22, 54, 76, 1),
                      onPressed: () async {
                        User user = await loginUsingEmailPassword(
                            email: emailcontroller.text,
                            password: passwordcontroller.text,
                            context: context);
                        print(user);
                        if (user != null) {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(builder: (context) => hme()));
                        }
                      },

                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ), // Container
                    )),
              )
            ])); // Text
  }
}
