import 'dart:ui';

import 'package:flutter/material.dart';

// Pada halaman baru tersebut buatlah formulir apapun,
// namun harus terdapat TextField, Checkbox, Radio, dan Date Picker atau Time Picker.

// Terdapat validasi jika masih terdapat form yang tidak sesuai atau kosong.

// Jika data sudah terisi lengkap, tampilkan semua data tersebut dalam sebuah dialog.

// Jangan lupa untuk mengupdate README nya dengan hasil screenshot dari tugas ini.

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  //form key
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.green,
            height: MediaQuery.of(context).size.height / 2,
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 20,
                ),
                child: Text(
                  "Create Account",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.only(
                    left: 8,
                    right: 8,
                    top: 20,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 8,
                        offset: Offset(0.0, 0.0),
                      ),
                    ],
                    color: Colors.white,
                  ),
                  child: Form(
                    child: Container(
                      margin: EdgeInsets.only(
                        top: 8,
                        left: 20,
                        right: 20,
                      ),
                      child: Column(
                        children: [
                          textFormField(
                            "Full Name",
                            "Enter your full name",
                            1,
                            40,
                            TextInputType.name,
                            false,
                            TextCapitalization.words,
                            Icons.person,
                          ),
                          textFormField(
                            "Email",
                            "Enter your email address",
                            1,
                            40,
                            TextInputType.emailAddress,
                            false,
                            TextCapitalization.none,
                            Icons.email,
                          ),
                          buttonCreate(),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buttonCreate() {
    return Container(
      margin: EdgeInsets.only(
        top: 12,
      ),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          "Create",
        ),
        style: ElevatedButton.styleFrom(
          minimumSize: Size(double.infinity, 48),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
        ),
      ),
    );
  }

  Widget textFormField(
      String labelText,
      String hintText,
      int maxLines,
      int maxLength,
      TextInputType textInputType,
      bool isPassword,
      TextCapitalization textCapitalization,
      IconData iconData) {
    return Container(
      margin: EdgeInsets.only(
        top: 12,
      ),
      child: TextFormField(
        textAlign: TextAlign.start,
        style: TextStyle(
          fontSize: 14,
        ),
        maxLines: maxLines,
        maxLength: maxLength,
        keyboardType: textInputType,
        obscureText: isPassword,
        textCapitalization: textCapitalization,
        decoration: InputDecoration(
          prefixIcon: Icon(
            iconData,
          ),
          labelText: labelText,
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          isDense: true,
          counterText: '',
        ),
      ),
    );
  }
}
