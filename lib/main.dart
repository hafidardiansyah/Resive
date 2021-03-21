import 'package:flutter/material.dart';
import 'package:flutter_responsive/utils/constants.dart';
import 'package:flutter_responsive/utils/responsive.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final intro = "Hi, i'm Hafid Ardiansyah";
  final about =
      "I'm from Indonesia and for now i live in Malang. I am a vocational high school graduates in SMK Negeri 1 Kepanjen with a major in software engineering. I love make something that useful for the others like make an application mobile and i am prefer in mobile development using Flutter. Now i am still learning, because everyday the technologies is continues to develop.";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          backgroundColor: Colors.white,
          appBarTheme: AppBarTheme(backgroundColor: blueColor)),
      home: Scaffold(
          appBar: AppBar(
            title: Text("Hafid Ardiansyah",
                style: introTextStyle.copyWith(color: whiteColor)),
          ),
          body: Center(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Responsive(
                mobile: Column(
                  children: [
                    Expanded(child: Image.asset('me.png')),
                    Expanded(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(intro,
                                style:
                                    introTextStyle.copyWith(color: blackColor)),
                            SizedBox(height: 6),
                            Text(about, style: aboutTextStyle),
                          ]),
                    ),
                  ],
                ),
                tablet: Row(
                  children: [
                    Expanded(child: Image.asset('me.png')),
                    SizedBox(width: 12),
                    Expanded(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(intro,
                                style:
                                    introTextStyle.copyWith(color: blackColor)),
                            SizedBox(height: 6),
                            Text(about, style: aboutTextStyle),
                          ]),
                    ),
                  ],
                ),
                desktop: Row(
                  children: [
                    Expanded(child: Image.asset('me.png')),
                    SizedBox(width: 12),
                    Expanded(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(intro,
                                style:
                                    introTextStyle.copyWith(color: blackColor)),
                            SizedBox(height: 6),
                            Text(about, style: aboutTextStyle),
                          ]),
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
