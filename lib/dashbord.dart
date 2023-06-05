import 'package:flutter/material.dart';
import 'package:project_awal/categories.dart';
import 'package:project_awal/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          color: Colors.white,
          padding: EdgeInsets.all(24),
          //HAti hati didalam column ada row sebagai wadah kesamping, lalu isikan content didalamnya
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Howay", style: createNewStyle,),
                      Text("Jason Powell", style: TitleTextStyle,)
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 2
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: CircleAvatar(
                      minRadius: 24,
                      maxRadius: 24,
                      child: IconButton(
                        icon : Icon(Icons.person),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 20.0),
                child: Column(
                  children: [
                    Text('Hot Categories', style: signInTextStyle,),
                  ],
                ),
              ),
              SingleChildScrollView(
                padding: EdgeInsets.only(top: 16.0),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        
                      },
                      child: Card(
                        child: Container(
                          width: 150,
                          child: Column(
                            children: [
                              Image.asset('images/card.png')
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context, MaterialPageRoute(builder: (context) => Categories())
                        );
                      },
                      child: Card(
                        child: Container(
                          width: 150,
                          child: Column(
                            children: [
                              Image.asset('images/card2.png')
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        width: 150,
                        child: Column(
                          children: [
                            Image.asset('images/card3.png')
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        width: 150,
                        child: Column(
                          children: [
                            Image.asset('images/card4.png')
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        width: 150,
                        child: Column(
                          children: [
                            Image.asset('images/card5.png')
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Column(
                  children: [
                    Text('Just Posted', style: signInTextStyle,)
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 26),
                          child: Column(
                            children: [
                              Image.asset('images/google.png',
                              width: 40, height: 45,)
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:26, left: 27),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Front-End Developer', style: subPostTextStyle,),
                              Text('Google', style: createNewStyle)
                            ],
                          ),
                        ),
                      ],  
                    ),
                    Row(
                      children: [
                        Padding(padding: const EdgeInsets.only(top: 26.5),
                        child: Column(
                          children: [
                            Image.asset('images/instagram.png',
                            width: 40, height: 45,)
                          ],
                        ),
                        ),
                        Padding(padding: const EdgeInsets.only(top: 26, left: 27),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('UI Designer', style: subPostTextStyle,),
                            Text('Instagram', style: createNewStyle,)
                          ],
                        ),)
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 26.5),
                          child: Column(
                            children: [
                              Image.asset('images/facebook.png',
                              width: 40, height: 45,)
                            ],
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(top: 26, left: 27),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Data Scientist', style: subPostTextStyle,),
                            Text('Facebook', style: createNewStyle,)
                          ],
                        ),)
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 110),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              IconButton(onPressed: () {}, icon: Icon(Icons.home, size: 24,))
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 50),
                            child: Column(
                              children: [
                                IconButton(onPressed: (){}, icon: Icon(Icons.notifications, size: 24))
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 50),
                            child: Column(
                              children: [
                                IconButton(onPressed: (){}, icon: Icon(Icons.favorite, size: 24))
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 50),
                            child: Column(
                              children: [
                                IconButton(onPressed: (){}, icon: Icon(Icons.person, size: 24))
                              ],
                            ),
                          )
                        ],
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
