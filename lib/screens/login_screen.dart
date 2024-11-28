import 'package:e_commerce_shopping_app/screens/forgot_screen.dart';
import 'package:e_commerce_shopping_app/screens/home_screen.dart';
import 'package:e_commerce_shopping_app/screens/signup_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
          behavior: HitTestBehavior.opaque,
          child: SafeArea(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 110),
              Image.asset('images/freed.png'),
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Center(
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Enter Email',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.person),
                        ),
                      ),
                      SizedBox(height: 15),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Enter Password',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: Icon(Icons.remove_red_eye),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ForgotScreen(),
                                ));
                          },
                          child: Text(
                            "Forgot Password",
                            style: TextStyle(
                              color: Color(0xFFDB3022),
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 40),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ));
                        },
                        child: Text(
                          "Log in",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size.fromHeight(55),
                          backgroundColor: Color(0xFFDB3022),
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't Have an Account?, ",
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 15,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignupScreen(),
                                  ));
                            },
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                color: Color(0xFFDB3022),
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
