import 'package:flutter/material.dart';

class Register_Screen extends StatefulWidget {
  const Register_Screen({Key? key}) : super(key: key);

  @override
  State<Register_Screen> createState() => _Register_ScreenState();
}

class _Register_ScreenState extends State<Register_Screen> {
  Color loginButtonColor = Color(0xFF7C1176);
  Color textcolor=Colors.white;
  Color RegisterButtonColor=Color(0xFF7C1176);
  Color Registertextcolor=Colors.white;
  void changeLoginButtonColor() {
    setState(() {
      if (loginButtonColor == Color(0xFF7C1176)) {
        loginButtonColor = Colors.white; 
        textcolor=Color(0xff7c1176);
      } else {
        loginButtonColor = Color(0xFF7C1176); 
        textcolor=Colors.white;
      }

    });
  }
  void changeRegisterButtonColor() {
    setState(() {
      if (RegisterButtonColor == Color(0xFF7C1176)) {
        RegisterButtonColor = Colors.white; 
        Registertextcolor=Color(0xff7c1176);
      } else {
        RegisterButtonColor = Color(0xFF7C1176); 
        Registertextcolor=Colors.white;
      }

    });
  }
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height:height,
              width:width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF3E2248), 
                    Color(0xFF7C1175),
                    Color(0xFF3E2248), 
                  ],
                  stops: [0.0, 0.5, 1.0],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.001),
                    child: Center(
                      child: Text(
                        'C O D E C H E F',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.4), 
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
                    child: Center(
                      child: Container(
                        //height: MediaQuery.of(context).size.height*0.5,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.withOpacity(0.3)),
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.grey.withOpacity(0.3), 
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * 0.7,
                        ),
                       
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding:  EdgeInsets.all(MediaQuery.of(context).size.height * 0.045),
                              child: Text(
                                'Register',
                                style: TextStyle(color: Colors.white.withOpacity(0.7), fontSize: 38,fontWeight: FontWeight.bold),
                              ),
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(top: height * 0.01,left:15),
                                        child: Text(
                                          'username',
                                          style: TextStyle(color: Colors.white, fontSize: 16),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 5),
                                        child: Container(
                                          height:height*0.05,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(30.0),
                                            border: Border.all(color: Colors.white),
                                          ),
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              contentPadding:EdgeInsets.only(left:15,top:5,right:10,bottom:15),
                                            ),
                                            style: TextStyle(color: Colors.white,),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top:  height * 0.03,left:15),
                                        child: Text(
                                          'password',
                                          style: TextStyle(color: Colors.white, fontSize: 16),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 5,left:5,bottom:5),
                                        child: Container(
                                          height:height*0.05,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(30.0),
                                            border: Border.all(color: Colors.white),
                                          ),
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              contentPadding:EdgeInsets.only(left:15,top:5,right:10,bottom:15),
                                            ),
                                            style: TextStyle(color: Colors.white),
                                            obscureText: true,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),

                            Padding(
                              padding: EdgeInsets.only(top: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(top:8.0,right:8.0,bottom:40.0),
                                      child: Container(
                                        height:height*0.05,
                                        decoration: BoxDecoration(
                                          color: RegisterButtonColor,
                                          borderRadius: BorderRadius.circular(25.0),
                                          border: Border.all(color: Colors.white),
                                        ),
                                        child: TextButton(
                                          onPressed: () {
                                            changeRegisterButtonColor();
                                          },

                                          child: Text(
                                            'Register',
                                            style: TextStyle(color: Registertextcolor),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(top:8.0,right:8.0,bottom:40.0),
                                      child: Container(
                                        height:height*0.05,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(25.0),
                                          color: loginButtonColor,
                                          border: Border.all(color: Colors.white),
                                        ),
                                        child: TextButton(
                                          onPressed: () {
                                            changeLoginButtonColor();
                                            Navigator.pushNamed(context,'Login_Page');
                                          },
                                          child: Text(
                                            'Login',
                                            style: TextStyle(color: textcolor),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}
