import 'package:codigo2_ui_stack/pages/init_page.dart';
import 'package:codigo2_ui_stack/widgets/circle_widget.dart';
import 'package:flutter/material.dart';

class Login2Page extends StatefulWidget {
  const Login2Page({Key? key}) : super(key: key);

  @override
  State<Login2Page> createState() => _Login2PageState();


}

class _Login2PageState extends State<Login2Page> {

  bool valor=true;

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height);
    print(MediaQuery.of(context).size.width);

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xffFBF5FF),
      body: Stack(
        children: [
          //Fondo
          Stack(
            children: [
              Positioned(
                right: -100,
                top: -80,
                child: CircleWidget(
                  radius: height * 0.20,
                  colors: [
                    Color(0xffD94E8E),
                    Color(0xffE98DB7),
                  ],
                ),
              ),
              Positioned(
                bottom: -130,
                left: -100,
                child: CircleWidget(
                  radius: 140,
                  colors: [
                    Color(0xff564293),
                    Color(0xff9D8AD9),
                  ],
                ),
              ),
              Positioned(
                left: 20,
                top: 40,
                child: CircleWidget(
                  radius: 22,
                  colors: [
                    Color(0xffD94E8E),
                    Color(0xffE98DB7),
                  ],
                ),
              ),
              Positioned(
                top: height * 0.4,
                right: width * 0.12,
                child: CircleWidget(
                  radius: 16,
                  colors: [
                    Color(0xff564293),
                    Color(0xff9D8AD9),
                  ],
                ),
              ),
            ],
          ),
          //Formulario

          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(28.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 240,
                    ),
                    Text(
                      "Create Your Account!",
                      style: TextStyle(
                        fontSize: 35.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo,
                      ),
                    ),
                    TextField(
                      maxLines: 1,
                      style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                      ),
                      decoration: InputDecoration(
                        hintText: "Email address",
                        prefixIcon: Icon(Icons.email),
                      ),
                    ),
                    TextField(
                      maxLines: 1,
                      obscureText: valor ? true : valor,
                      style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                      ),
                      decoration: InputDecoration(
                        hintText: "Password",
                        prefixIcon: Icon(Icons.local_mall_rounded),
                        suffixIcon: IconButton(
                          onPressed: (){
                            valor=!valor;
                            setState(() {

                            });
                          },
                          icon: Icon(Icons.remove_red_eye_rounded),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40.0),
                      child: Container(
                        height: 56.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          //borderRadius: BorderRadius.circular(40.0),
                          boxShadow: [
                            BoxShadow(
                                color:
                                    const Color(0xffD94E8E).withOpacity(0.65),
                                offset: const Offset(0, 4),
                                blurRadius: 12.0),
                          ],
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xffE98DB7),
                              Color(0xffD94E8E),
                            ],
                          ),
                        ),
                        child: MaterialButton(
                          child: Text(
                            "Create Account",
                          ),
                          textColor: Colors.white,
                          // shape: RoundedRectangleBorder(
                          //     borderRadius: BorderRadius.circular(40.0),
                          // ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => InitPage()));
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
