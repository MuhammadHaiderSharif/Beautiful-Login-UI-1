import 'package:flutter/material.dart';

void main() {
  return runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff21222d),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              height: 724,
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(color: Colors.white, width: 4),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    right: 20,
                    left: 0,
                    child: ClipPath(
                      clipper: Customshape(),
                      child: Container(
                        height: 245,
                        color: const Color(0xffe59638),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 80,
                    right: 52,
                    left: 205,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 95,
                          width: 95,
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(95)),
                            color: Colors.transparent,
                            border: Border.all(color: Colors.white, width: 4),
                            image: const DecorationImage(
                              image: AssetImage(
                                'assets/profile.png',
                              ),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Positioned(
                    top: 250,
                    left: 20,
                    child: Text(
                      'Welcome\nBack!',
                      style: TextStyle(
                        letterSpacing: 3,
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 380,
                    left: 20,
                    right: 20,
                    child: TextFormField(
                      cursorColor: Colors.white,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: 'Email',
                        labelText: 'Email',
                        labelStyle: const TextStyle(color: Colors.white),
                        hintStyle: const TextStyle(color: Colors.white),
                        prefixIcon: const Icon(
                          Icons.email,
                          color: Colors.white,
                        ),
                        suffixIcon: const Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: const BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: const BorderSide(
                            color: Color(0xffe59638),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 470,
                    left: 20,
                    right: 20,
                    child: TextFormField(
                      cursorColor: Colors.white,
                      obscureText: true,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: 'Password',
                        labelText: 'Password',
                        labelStyle: const TextStyle(color: Colors.white),
                        hintStyle: const TextStyle(color: Colors.white),
                        prefixIcon: const Icon(
                          Icons.key,
                          color: Colors.white,
                        ),
                        suffixIcon: const Icon(
                          Icons.visibility_off,
                          color: Colors.white,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: const BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: const BorderSide(
                            color: Color(0xffe59638),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 560,
                    right: 20,
                    child: Text(
                      'FORGOT PASSWORD?',
                      style: TextStyle(
                          color: Color(0xffe59638),
                          decoration: TextDecoration.underline),
                    ),
                  ),
                  const Positioned(
                    top: 655,
                    left: 20,
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                  Positioned(
                      top: 638,
                      right: 20,
                      child: Container(
                        height: 60,
                        width: 130,
                        decoration: BoxDecoration(
                            color: const Color(0xffe59638),
                            borderRadius: BorderRadius.circular(50)),
                        child: const Center(
                          child: Icon(
                            Icons.arrow_forward_sharp,
                            color: Colors.white,
                          ),
                        ),
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Customshape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 170);
    path.quadraticBezierTo(240, 260, size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
