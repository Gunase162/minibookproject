import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/pages/fogetpassword.dart';
import 'package:notes_app/screens/note_list.dart';
import 'package:notes_app/pages/register.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formkey = GlobalKey<FormState>();
  TextEditingController _usernamecontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return  Scaffold(
      body: ListView(
        children: [
          Padding(padding: 
          EdgeInsets.all(8),
          child:  Form(
            key: _formkey,
            child: Column(
              children: [
                Container(
                  height: deviceHeight * 0.30,
                  child: const FittedBox(
                    child:  CircleAvatar(
                      backgroundImage: AssetImage(
                        'images/loginbg.jpg'
                        ),
                      radius: 120,
                      ),
                  ),
                ),

                Container(
                  height: deviceHeight * 0.65,
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal:20 ),
                  child: LayoutBuilder(builder: ((context, constraints){
                   return Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Login Now',
                          style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: constraints.maxHeight * 0.01,
                        ),
                        const Text('กรุณากรอกรายละเอียดด้านล่างเพื่อดำเนินการต่อ'
                        ),


                        SizedBox(height: constraints.maxHeight * 0.08,
                        ),
                        Container(height: constraints.maxHeight * 0.12,
                        decoration: BoxDecoration(
                          color: const Color(0xffB4B4B4).withOpacity(0.4),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Center(
                            child: TextFormField(
                              controller: _usernamecontroller,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Enter Username Please';
                                }
                                  return null;
                              },
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Username',
                                ),
                              ),
                            ),
                          ),
                        ),


                        SizedBox(height: constraints.maxHeight * 0.02,
                        ),
                        Container(height: constraints.maxHeight * 0.12,
                        decoration: BoxDecoration(
                          color: const Color(0xffB4B4B4).withOpacity(0.4),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Center(
                            child: TextFormField(
                              controller: _passwordcontroller,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Enter password Please';
                                }
                                  return null;
                              },
                              obscureText: true,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Password',
                                ),
                              ),
                            ),
                          ),
                        ),


                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                            onPressed: () {
                              Navigator.push(context,
                                MaterialPageRoute(
                                  builder:(context) =>FogetPage(),
                              ));
                            }, 
                            child: const Text(
                              'Foget Password?',
                              style: TextStyle(
                                color: Color.fromARGB(255, 8, 140, 248),
                              ),
                            ))
                          ],
                        ),


                        Container(
                          width: double.infinity,
                          height: constraints.maxHeight * 0.12,
                          margin: EdgeInsets.only(
                            top: constraints.maxHeight * 0.05,
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              if (_formkey.currentState.validate()) {

                               Navigator.push(context,
                                MaterialPageRoute(
                                  builder:(context) =>NoteList(),
                              ));
                              }
                               
                            },
                            child: const Text('Login',
                            style: TextStyle(fontWeight: FontWeight.bold,
                            fontSize: 22
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: const Color.fromARGB(255, 184, 62, 196),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(28),
                            )),
                          ),
                        ),


                        SizedBox(
                          height: constraints.maxHeight * 0.02,
                        ),
                        RichText(text: TextSpan(
                          text: 'Don\'t have an Account!',
                          style: const TextStyle(
                            color: Colors.black45,
                            fontSize: 16,
                          ),
                          children: [
                            TextSpan(
                              text: 'Register',
                              style: const TextStyle(
                                color: Color.fromARGB(255, 8, 140, 248),
                                fontSize: 16,
                              ),
                              recognizer: TapGestureRecognizer()
                              ..onTap =() {
                                Navigator.push(context,
                                MaterialPageRoute(
                                  builder:(context) =>RegisPage(),
                              ));
                            }, 
                            ),
                          ]
                        ))
                      ],
                    ); 
                  }
                  ),
                  ),
                ),
              ],
            ),
          ),),
          GoogleAuthButton(
  onPressed: () {},
  darkMode: false,
  style: AuthButtonStyle(
    iconType: AuthIconType.outlined,
  ),
),
        ],
      ),
    );
  }
}

