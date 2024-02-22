import 'package:api_app/news.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _controller = new TextEditingController();
    @override
    void initState() {
      // TODO: implement initState
      super.initState();
      // Step 2 <- SEE HERE
      _controller.text = 'Complete the story from here...';
    }

    return Scaffold(
      backgroundColor: Color(0xFFEFF1F6),
      body: Stack(children: <Widget>[
        Align(
          alignment: Alignment(0, -1),
          child: SizedBox(
            width: double.infinity,
            child: Image(
              image: AssetImage('assets/1.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            child: Align(
              alignment: Alignment(0, -0.75),
              child: Image(
                image: AssetImage('assets/icon.png'),
                width: 130,
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment(0, 1),
          child: SizedBox(
            width: 430,
            height: 600,
            child: Container(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 70),
                    Container(
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 50,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Align(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 356,
                          child: Column(
                            children: [
                              SizedBox(height: 15),
                              Align(
                                alignment: Alignment(-0.87, 0),
                                child: Text(
                                  'Email',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 17,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'pakornchunwirat@gmail.com',
                                    hintStyle: TextStyle(
                                        fontSize: 15.0,
                                        color:
                                            Color.fromARGB(255, 162, 162, 162)),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color.fromARGB(255, 255, 255, 255),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(51, 128, 128, 128),
                                offset: Offset(0, 2),
                                blurRadius: 8,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Align(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 356,
                          child: Column(
                            children: [
                              SizedBox(height: 15),
                              Align(
                                alignment: Alignment(-0.87, 0),
                                child: Text(
                                  'Password',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 17,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: '123231231',
                                    hintStyle: TextStyle(
                                        fontSize: 15.0,
                                        color:
                                            Color.fromARGB(255, 162, 162, 162)),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color.fromARGB(255, 255, 255, 255),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(51, 128, 128, 128),
                                offset: Offset(0, 2),
                                blurRadius: 8,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Align(
                      alignment: Alignment(0, -0.725),
                      child: InkWell(
                        child: Container(
                          width: 356,
                          height: 64,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 0, 0, 0),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 8.0, left: 13, right: 8, bottom: 8),
                            child: Align(
                              alignment: Alignment.center,
                              child: Container(
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const News()),
                          );
                        },
                      ),
                    ),
                  ]),
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.only(topLeft: Radius.circular(100.0)),
                color: Color.fromARGB(255, 255, 255, 255),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x33000000),
                    offset: Offset(0, 4),
                    blurRadius: 5,
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
