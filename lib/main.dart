import 'package:flutter/material.dart';

void main() {
  runApp(const Tugas());
}

class Tugas extends StatelessWidget {
  const Tugas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      title: 'Tugas 10',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController fullname = TextEditingController();
  final TextEditingController pass = TextEditingController();
  String Password = '';
  String Username = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.red,
              Colors.purple,
            ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft)
        ),
        child: Center(
          child: Column(
            children: [
              Padding(padding: new EdgeInsets.symmetric(vertical: 20,),
              ),
              Text('Login',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),),
              Column(
                children: [
                  Padding(padding: EdgeInsets.all(20),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(padding: EdgeInsets.symmetric(vertical: 20),),
                      Container(
                        width: 300,
                        child: Expanded(
                          child: TextFormField(
                            controller: fullname,
                            decoration: InputDecoration(
                              prefixIcon: const Padding(padding: EdgeInsets.only(left: 8, right: 8),
                                child: Icon(Icons.person_outline_outlined,
                                  color: Colors.grey,),),
                              hintText: 'Type your Username',
                              contentPadding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                              border: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(16),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(padding: EdgeInsets.symmetric(vertical: 40),),
                      Container(
                        width: 300,
                        child: Expanded(
                          child: TextFormField(
                            controller: pass,
                            decoration: InputDecoration(
                              prefixIcon: const Padding(padding: EdgeInsets.only(left: 8, right: 8),
                                child: Icon(Icons.lock_outlined,
                                  color: Colors.grey,),),
                              hintText : 'Type your Password',
                              contentPadding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                              border: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(16),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.symmetric(horizontal: 120),),
                      TextButton(
                          onPressed: (){
                            setState(() {
                            });
                          },
                          child: const Text('Forgot Password?',
                            style: TextStyle(
                                color: Colors.white
                            ),))
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 300,
                        child: TextButton(style: TextButton.styleFrom(
                          backgroundColor: Colors.yellow,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16.0,
                          ),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                        ),
                          onPressed: () {
                            setState(() {
                              Username = fullname.text;
                              Password = pass.text;
                            });
                          },
                          child: Text(
                            'SIGN UP',
                            style: TextStyle(
                              color: Colors.orange,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Form(
                    key: formKey,
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.symmetric(vertical: 50),
                          child: Text('$Username',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),),
                        ),
                      ],
                    ),
                  ),
                  Form(
                    child: Column(
                      children: [
                        Text(' $Password',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
