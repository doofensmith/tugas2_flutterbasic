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
              Text(
                "Create Account",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 8),
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
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
