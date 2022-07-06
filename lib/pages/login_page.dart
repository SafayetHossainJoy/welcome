import 'package:flutter/material.dart';
import 'package:new_app/pages/singup.dart';
import 'package:new_app/pages/main_content.dart';
import 'package:new_app/pages/success.dart';

class Login_Page extends StatefulWidget {
  const Login_Page({Key? key}) : super(key: key);

  @override
  State<Login_Page> createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                size: 20,
                color: Colors.black,
              )),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Hello There!",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 40),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Automatic identity verification which enable you to verify your identity",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.grey[700], fontSize: 15),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 2,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                          'https://cdn.pixabay.com/photo/2016/11/08/04/49/jungle-1807476_960_720.jpg',
                        ))),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Main_Content()));
                        },
                        color: Colors.indigoAccent[400],
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(40)),
                        child: Text(
                          "Login",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Colors.white70),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Create_page()));
                        },
                        color: Colors.redAccent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                        child: Text(
                          "Sign UP",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ]),
          ),
        )));
  }
}
