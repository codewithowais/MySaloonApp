// ignore_for_file: file_names, prefer_const_constructors, avoid_print, unnecessary_null_comparison, dead_code, use_key_in_widget_constructors, sized_box_for_whitespace
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as path;
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'dart:io';

import '../uidata.dart';
import 'home.dart';
import 'loading_screen.dart';
import 'login.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController userNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController phoneNoController = TextEditingController();

  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore db = FirebaseFirestore.instance;

  String? imagePath;

  bool loading = false;

  void pickImage() async {
    final ImagePicker _picker = ImagePicker();
    final image = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {
      imagePath = image!.path;
    });
    print(imagePath);
  }

  signUp() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    setState(() {
      loading = true;
    });

    try {
      final String userName = userNameController.text;
      final String email = emailController.text;
      final String password = passwordController.text;
      final String imageName = path.basename(imagePath!);

      firebase_storage.Reference ref =
          firebase_storage.FirebaseStorage.instance.ref('/$imageName');

      File file = File(imagePath!);
      await ref.putFile(file);

      final UserCredential user = await auth.createUserWithEmailAndPassword(
          email: email, password: password);

      String downloadUrl = await ref.getDownloadURL();

      await db.collection("users").doc(user.user!.uid).set({
        "userName": userName,
        "email": email,
        "image": downloadUrl,
      });

      userNameController.clear();
      emailController.clear();
      phoneNoController.clear();
      passwordController.clear();

      print("Your registration has been completed !");

      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => HomePage()),
          (route) => false);
    } catch (e) {
      setState(() {
        loading = false;
      });
      print(e.toString());
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              content: Text(e.toString()),
            );
          });
    }
  }

  goBack() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
  }

  @override
  Widget build(BuildContext context) {
    return loading
        ? LoadingScreen()
        : MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              appBar: AppBar(
                title: Center(child: Text("Sign Up")),
                backgroundColor: Colors.purple[500],
                leading: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  onPressed: goBack,
                ),
              ),
              body: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: pickImage,
                        child: CircleAvatar(
                          radius: 50,
                          // child: Icon(Icons.person),
                          backgroundColor: Colors.transparent,
                          backgroundImage: imagePath == null
                              ? NetworkImage(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9y_Rcs1TiQ9WdMtKV6bFQnU4FTCBvR7I_Sbohgnsxihd-Ju6V_cQz3KtK6ktz1uPykNc&usqp=CAU")
                              : FileImage(File(imagePath!)) as ImageProvider,
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 15, left: 20, right: 20),
                        child: TextFormField(
                          controller: userNameController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your name';
                            } else if (value.length < 3) {
                              return "Your name is too short";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: "Username",
                            prefixIcon: Icon(
                              Icons.person,
                              color: Colors.purple[500],
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: BorderSide.none,
                            ),
                            filled: true,
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 15, left: 20, right: 20),
                        child: TextFormField(
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value!.isNotEmpty && value.length > 7) {
                              return null;
                            } else if (value.length < 7 && value.isNotEmpty) {
                              return "Your email address is too short";
                            } else {
                              return "Please enter your email address";
                            }
                          },
                          decoration: InputDecoration(
                            labelText: "Email",
                            prefixIcon: Icon(
                              Icons.person,
                              color: Colors.purple[500],
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: BorderSide.none,
                            ),
                            filled: true,
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 15, left: 20, right: 20),
                        child: TextFormField(
                          controller: passwordController,
                          obscureText: true,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please enter your password";
                            } else if (value.length < 6) {
                              return "Your password is too short";
                            } else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                            labelText: "Password",
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.purple[500],
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: BorderSide.none,
                            ),
                            filled: true,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                          width: 150,
                          child: TextButton(
                              onPressed: signUp,
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  "SignUp",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.white),
                                ),
                              ),
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          UIData.purpleColor),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                  )))),
                    ],
                  ),
                ),
              ),
            ));
  }
}
