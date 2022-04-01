import 'package:flutter/material.dart';
import 'package:notes_app/pages/login.dart';



class RegisPage extends StatefulWidget {
  const RegisPage({ Key key }) : super(key: key);

  @override
  State<RegisPage> createState() => _RegisPageState();
}

class _RegisPageState extends State<RegisPage> {

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
                  height: deviceHeight * 0.65,
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal:20 ),
                  child: LayoutBuilder(builder: ((context, constraints){
                   return Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Register',
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
                              controller: _usernamecontroller,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Enter password Please';
                                }
                                  return null;
                              },
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: 'password',
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
                                  return 'Enter confirm password Please';
                                }
                                  return null;
                              },
                              obscureText: true,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: 'confirm Password',
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
                                  builder:(context) =>LoginPage(),
                              ));
                            }, 
                            child: const Text(
                              'Login Now',
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
                                print(_usernamecontroller.text);
                                print(_passwordcontroller.text);
                              } 
                            },
                            child: const Text('Submit',
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
                      ],
                    ); 
                  }
                  ),
                  ),
                ),
              ],
            ),
          ),)
        ],
      ),
    );
  }
}