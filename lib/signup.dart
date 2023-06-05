import 'package:flutter/material.dart';
import 'package:project_awal/signin.dart';
import 'package:project_awal/theme.dart';


class RegistrationData{
  final String email;
  final String password;
  final String username;
  final String goal;

  RegistrationData({
    required this.email,
    required this.password,
    required this.username,
    required this.goal,
  });
}

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _goalController = TextEditingController();


  bool _obscureText = true;

  void _register(RegistrationData data) async {
    try {
        // DatabaseReference userRef = FirebaseDatabase.instance.ref().child('users');
        String email = _emailController.text.trim();
        String password = _passwordController.text.trim();
        String fullName = _fullNameController.text.trim();
        String goal = _goalController.text.trim();

        // if (email.isNotEmpty || password.isNotEmpty || fullName.isNotEmpty || goal.isNotEmpty){
        //     DatabaseReference newUserRef = userRef.push();
        //     await newUserRef.set({
        //       'email' : email,
        //       'fullName' : fullName,
        //       'goal' : goal
        //     });
        // }

        //UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
        print('Registration successful. Welcome, $fullName!');
        print('Your goal is: $goal');
    } catch (e) {
        print('Registration failed: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Sign Up',
                  style: signInTextStyle,),
                ],
              ),
              Text('Ust. Hannan Attaki, Lc',
              style: TitleTextStyle,),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
              child: Container(
                width: 120,
                height: 120,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/circle.png'),
                    fit: BoxFit.fill
                  )
                ),
              ),),
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top:20.0, left: 24.0, right: 320.0),
                      child: Text('Full Name',
                      style: createNewStyle,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, left: 24.0, right: 24.0),
                      child: TextField(
                        controller: _fullNameController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0)
                            ),
                            hintText: 'Enter Your Full Name',
                            labelText: 'Hannan Attaki'
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
                      padding: const EdgeInsets.only(top: 20.0, left: 24.0, right: 290.0),
                      child: Text('Email Address',
                      style: createNewStyle,),
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
                          labelText: 'hannanattaki@yahoo.com'
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
                      padding: const EdgeInsets.only(top: 20.0, left: 24.0, right: 320.0),
                      child: Text('Password',
                      style: createNewStyle,),
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
                          hintText: 'Password',
                          labelText: 'Password',
                          suffixIcon: GestureDetector(
                            onTap: (){
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
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 24.0, right: 320.0),
                      child: Text('Your Goal',
                      style: createNewStyle,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, left: 24.0, right: 24.0),
                      child: TextField(
                        controller: _goalController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0)
                          ),
                          hintText: 'Your Goal '
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 25.0, left: 24.0, right: 24.0),
                  child: ElevatedButton(
                    onPressed: () {
                      String email = _emailController.text.trim();
                      String password = _passwordController.text.trim();
                      String fullName = _fullNameController.text.trim();
                      String goal = _goalController.text.trim();

                      RegistrationData data = RegistrationData(
                        email: email,
                        password: password,
                        username: fullName,
                        goal: goal,
                      );

                      _register(data);
                    },
                    child: Text('Sign Up'),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0)
                      )),
                      fixedSize: MaterialStateProperty.all(Size(500,50))
                    ),
                  ),
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 24.0, right: 24.0),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn()));
                        }
                        ,
                        child: Text('Back to Sign In',
                        style: createNewStyle,),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

