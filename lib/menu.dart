import 'package:flutter/material.dart';
import 'package:project_awal/dashbord.dart';
import 'package:project_awal/signin.dart';
import 'package:project_awal/theme.dart';


class MyMenu extends StatefulWidget {
  const MyMenu({Key? key}) : super(key: key);

  @override
  State<MyMenu> createState() => _MyMenuState();
}

class _MyMenuState extends State<MyMenu> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image : AssetImage('images/bgflut.png'),
              fit: BoxFit.cover
            )
          ),
          child: Column(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 50.0, left: 30.0, right: 20.0),
                  child: Text('Build Your Next Future Career Like a Master',
                  textAlign: TextAlign.left,
                  style: splashTextStyle,),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left:5.0),
                  child: Text('18,000 jobs available',
                    textAlign: TextAlign.left,
                    style: subTextStyle,),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 480.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: Text('Get Started',
                  style: TextStyle(color: Color(0xff4141A4)),),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),),
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    fixedSize: MaterialStateProperty.all(Size(200,50))
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context) => SignIn()),
                    );
                  },
                  child: Text('Sign In',
                    style: TextStyle(color: Color(0xffFFFFFF)),),
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                        side: BorderSide(color: Colors.white, width: 1.0),
                      ),),
                      backgroundColor: MaterialStateProperty.all(Colors.transparent),
                      fixedSize: MaterialStateProperty.all(Size(200,50))
                  ),
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}
