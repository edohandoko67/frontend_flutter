
import 'package:flutter/material.dart';
import 'package:project_awal/signup.dart';
import 'package:project_awal/theme.dart';


class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obscureText = true;

  // void _signInWithEmailAndPassword() async {
  //   try {
  //     final String email = _emailController.text.trim();
  //     final String pass = _passwordController.text.trim();
  //
  //     if (email.isNotEmpty && pass.isNotEmpty) {
  //       UserCredential userCredential = await _auth.signInWithEmailAndPassword(
  //         email: email,
  //         password: pass,
  //       );
  //
  //       // Login successful, do something
  //       // e.g., navigate to another page, display a success message, etc.
  //     } else {
  //       showDialog(
  //         context: context,
  //         builder: (context) => AlertDialog(
  //           title: Text('Error'),
  //           content: Text('Please enter your email and password'),
  //           actions: [
  //             TextButton(
  //               onPressed: () {
  //                 Navigator.of(context).pop();
  //               },
  //               child: Text('OK'),
  //             ),
  //           ],
  //         ),
  //       );
  //     }
  //   } catch (e) {
  //     showDialog(
  //       context: context,
  //       builder: (context) => AlertDialog(
  //         title: Text('Error'),
  //         content: Text(
  //             'Failed to sign in. Please check your credentials and try again.'),
  //         actions: [
  //           TextButton(
  //             onPressed: () {
  //               Navigator.of(context).pop();
  //             },
  //             child: Text('OK'),
  //           ),
  //         ],
  //       ),
  //     );
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 24.0, right: 330.0),
              child: Text('Sign In',
              style: signInTextStyle),
            ),
            Padding(
                padding: EdgeInsets.only(top: 10.0, left: 0.0, right: 150.0),
              child: Text('Build Your Career',
                  style: TitleTextStyle),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 49.0, right: 49.0),
              child: Container(
                height: 250,
                width: 300,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image : AssetImage('images/title.png'),
                        fit: BoxFit.fill
                    )
                ),
              ),
            ),
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0, left: 24.0, right: 280.0),
                    child: Text('Email Address',
                    style: signInTextStyle,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, left: 24.0, right: 24.0),
                    child: TextField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)
                        ),
                        hintText: 'Enter Your Email Address',
                        labelText: 'Email'
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, left: 24.0, right: 310.0),
                    child: Text('Password',
                      style: signInTextStyle,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, left: 24.0, right: 24.0),
                    child: TextField(
                      controller: _passwordController,
                      obscureText: _obscureText,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0)
                          ),
                          hintText: 'Enter Your Password',
                          labelText: 'Password',
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                            child: Icon(
                              _obscureText ? Icons.visibility : Icons.visibility_off
                            ),
                          )
                      ),
                    ),
                  )
                ],
              ),
            ),
            // Container(
            //   child: Padding(
            //     padding: const EdgeInsets.only(top:40.0),
            //     child: ElevatedButton(
            //       onPressed: _signInWithEmailAndPassword,
            //       child: Text('Sign In'),
            //       style: ButtonStyle(
            //         shape: MaterialStateProperty.all(RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(50.0),
            //           side: BorderSide(color: Colors.white, width: 1.0)
            //         )),
            //         fixedSize: MaterialStateProperty.all(Size(380, 50))
            //       ),
            //     ),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.only(top:20.0),
             child:
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context) => SignUp()),
                    );
                  },
                  child: Text('Create New Account',
                  style: createNewStyle,)
                ),
            )
          ],
        )
      ),
    );
  }
}

