import 'package:codigo2_ui_stack/pages/init2_page.dart';
import 'package:flutter/material.dart';

class InitPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Image.network(
          //   "https://media.istockphoto.com/vectors/cheers-with-beer-icon-handdrawn-vector-id1151319903?k=20&m=1151319903&s=170667a&w=0&h=n_90_xf2n85by03GIMHcfASRKMHI5mJqSLyoMg6foVw=",
          //   height: 180.0,
          // ),
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.center,
              // color: Colors.red,
              child: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZngnAhtwOY6uEDEiusgFnyHupw9sV87PqCQ&usqp=CAU",
                height: 200,
                width: 200,
              ),
            ),
          ),
          Container(
            padding:
                const EdgeInsets.symmetric(vertical: 50.0, horizontal: 16.0),
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xffFFB901),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                topLeft: Radius.circular(30),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Welcome",
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                const Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0,
                  ),
                ),
                const SizedBox(
                  height: 38.0,
                ),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 52,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> Init2Page()));
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                          ),
                          child: Text(
                            "Sign in",
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 52,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                          ),
                          child: Text(
                            "Sign up",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
