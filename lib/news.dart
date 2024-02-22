import 'package:api_app/logout.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class News extends StatefulWidget {
  const News({super.key});

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
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

    final List<String> nameLists = [
      "“ในหลวง-พระราชินี” พระราชทาน\nปริญญาบัตร\nมหาวิทยาลัยธรรมศาสตร์ ",
      "“ในหลวง-พระราชินี” พระราชทาน\nปริญญาบัตร\nมหาวิทยาลัยธรรมศาสตร์ ",
      "“ในหลวง-พระราชินี” พระราชทาน\nปริญญาบัตร\nมหาวิทยาลัยธรรมศาสตร์ ",
      "“ในหลวง-พระราชินี” พระราชทาน\nปริญญาบัตร\nมหาวิทยาลัยธรรมศาสตร์ ",
      "“ในหลวง-พระราชินี” พระราชทาน\nปริญญาบัตร\nมหาวิทยาลัยธรรมศาสตร์ ",
    ];
    final List<String> textLists = [
      "สาขาวิชาวิศวกรรมซอฟต์แวร์ (Soft-en)",
      "สาขาวิชาวิศวกรรมซอฟต์แวร์ (Soft-en)",
      "สาขาวิชาวิศวกรรมซอฟต์แวร์ (Soft-en)",
      "สาขาวิชาวิศวกรรมซอฟต์แวร์ (Soft-en)",
      "สาขาวิชาวิศวกรรมซอฟต์แวร์ (Soft-en)",
    ];

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
              alignment: Alignment(1, -0.68),
              child: Image(
                image: AssetImage('assets/Vector.png'),
                width: 95,
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment(-0.67, -0.66),
          child: Text(
            'Welcome, (Name)',
            style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 24,
              color: Color.fromARGB(255, 255, 255, 255),
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        Align(
          alignment: Alignment(-0.72, -0.53),
          child: Text(
            'คุณเป็นนักศึกษาของ\nคณะวิศวกรรมศาสตร์\nหรือไม่?',
            style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 20,
              color: Color.fromARGB(255, 255, 255, 255),
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        Align(
          alignment: Alignment(0, 1.2),
          child: SizedBox(
            width: 430,
            height: 500,
            child: Container(
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
        ListView(
          children: [
            Align(
              alignment: Alignment(0.0, 1.2),
              child: Padding(
                padding: const EdgeInsets.only(top: 400),
                child: Container(
                  height: 500,
                  width: 400,
                  child: ListView.builder(
                      itemCount: nameLists.length,
                      itemBuilder: (context, i) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 0.0, top: 10),
                          child: Column(
                            children: [
                              InkWell(
                                child: Container(
                                  width: 370,
                                  height: 110,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 8.0, left: 3, right: 8, bottom: 8),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image(
                                          image: AssetImage('assets/image.png'),
                                          width: 110,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              child: Text(
                                                nameLists[i],
                                                style: TextStyle(
                                                  fontSize: 17,
                                                  color: Color.fromARGB(
                                                      255, 0, 0, 0),
                                                  fontWeight: FontWeight.w800,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                top: 5,
                                              ),
                                              child: Container(
                                                child: Text(
                                                  textLists[i],
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    color: Color.fromARGB(
                                                        255, 155, 155, 155),
                                                    fontWeight: FontWeight.w100,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                onTap: () {
                                  print("tapped on container");
                                },
                              )
                            ],
                          ),
                        );
                      }),
                ),
              ),
            ),
          ],
        ),
        Align(
          alignment: Alignment(0.9, -0.86),
          child: InkWell(
            child: Icon(
              Icons.settings,
              color: Color.fromARGB(255, 255, 255, 255),
              size: 30.0,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Logout()),
              );
            },
          ),
        ),
        Align(
          alignment: Alignment(-0.7, -0.07),
          child: Text(
            'ข่าวประจำวันนี้',
            style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 24,
              color: Color.fromARGB(255, 0, 0, 0),
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
      ]),
    );
  }
}
