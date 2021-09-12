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

  //controller text form field
  TextEditingController controllerTextFieldFullName = TextEditingController();
  TextEditingController controllerTextFieldEmail = TextEditingController();
  TextEditingController controllerBirthDate = TextEditingController();
  TextEditingController controllerTextFieldPassword = TextEditingController();
  TextEditingController controllerTextFieldConfirmPassword =
      TextEditingController();

  //status checkbox
  bool isChecked = false;

  //radio gender
  String? gender = "Man";

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
                            controllerTextFieldFullName,
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
                            controllerTextFieldEmail,
                            "Email",
                            "Enter your email address",
                            1,
                            40,
                            TextInputType.emailAddress,
                            false,
                            TextCapitalization.none,
                            Icons.email,
                          ),
                          textFormField(
                              controllerTextFieldPassword,
                              "Password",
                              "Enter new password",
                              1,
                              20,
                              TextInputType.text,
                              true,
                              TextCapitalization.none,
                              Icons.lock),
                          textFormField(
                              controllerTextFieldConfirmPassword,
                              "Confirm Password",
                              "Confirm your password",
                              1,
                              20,
                              TextInputType.text,
                              true,
                              TextCapitalization.none,
                              Icons.lock),
                          birthDatePicker(
                            controllerBirthDate,
                          ),
                          radioGender(),
                          checkboxTermOfService(),
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

  Widget radioGender() {
    return Container(
      margin: EdgeInsets.only(
        top: 12,
      ),
      child: Row(
        children: [
          Text(
            "Gender : ",
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          Radio(
            value: "Man",
            groupValue: gender,
            onChanged: (value) {
              setState(() {
                gender = value.toString();
              });
            },
          ),
          Text(
            "Man",
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          Radio(
            value: "Woman",
            groupValue: gender,
            onChanged: (value) {
              setState(() {
                gender = value.toString();
              });
            },
          ),
          Text(
            "Woman",
            style: TextStyle(
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  Widget checkboxTermOfService() {
    return Container(
      margin: EdgeInsets.only(
        top: 12,
      ),
      child: Row(
        children: [
          Checkbox(
            value: isChecked,
            onChanged: (value) {
              setState(() {
                isChecked = value!;
              });
            },
          ),
          Text(
            "I agree with",
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              "Terms of Services",
              style: TextStyle(
                fontSize: 14,
              ),
            ),
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
      width: double.infinity,
      height: 44,
      child: ElevatedButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text(
                    "Data",
                  ),
                  content: SingleChildScrollView(
                    child: ListBody(
                      children: [
                        Text(
                          "Full Name : ${controllerTextFieldFullName.text}",
                        ),
                        Text(
                          "Email : ${controllerTextFieldEmail.text}",
                        ),
                        Text(
                          "Birth Date : ${controllerBirthDate.text}",
                        ),
                      ],
                    ),
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "OK",
                      ),
                    ),
                  ],
                );
              });
        },
        child: Text(
          "Create",
        ),
        style: ElevatedButton.styleFrom(
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
      TextEditingController controller,
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
        controller: controller,
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

  Widget birthDatePicker(
    TextEditingController controller,
  ) {
    return Container(
      margin: EdgeInsets.only(
        top: 12,
      ),
      child: TextFormField(
        controller: controller,
        readOnly: true,
        textAlign: TextAlign.start,
        style: TextStyle(
          fontSize: 14,
        ),
        maxLines: 1,
        maxLength: 15,
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.event,
          ),
          labelText: "Date of Birth",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          isDense: true,
          counterText: '',
        ),
        onTap: () async {
          DateTime? birthDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(1950),
              lastDate: DateTime.now());

          if (birthDate != null) {
            setState(() {
              controller.text =
                  "${birthDate.day}/${birthDate.month}/${birthDate.year}";
            });
          }
        },
      ),
    );
  }
}
