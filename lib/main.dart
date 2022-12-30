import 'dart:async';

import 'package:flutter/material.dart';
import 'package:zrow_task/otp_input.dart';
import 'package:zrow_task/register_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Poppins'),
      home: const MyHomePage(),
      routes: {
        RegisterScreen.routeName: (context) => const RegisterScreen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });
  static const routeName = '/';
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _fieldOne = TextEditingController();
  final TextEditingController _fieldTwo = TextEditingController();
  final TextEditingController _fieldThree = TextEditingController();
  final TextEditingController _fieldFour = TextEditingController();
  bool value = false;
  bool value1 = false;
  bool value2 = false;
  late int secondsRemaining;
  late int secondsRemaining2;
  bool enableResend = false;
  late Timer timer;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.055),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                const Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                    color: Color(0xFF2D2727),
                  ),
                ),
                const Text(
                  'Create an account to get started',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF71727A),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xFFA04EF6),
                          blurRadius: 4,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 2, horizontal: 10),
                        border: InputBorder.none,
                        labelText: 'First Name',
                        labelStyle: const TextStyle(
                          color: Color(0xFFA04EF6),
                          fontWeight: FontWeight.w500,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xFFA04EF6),
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFA04EF6),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xFFA04EF6),
                          blurRadius: 4,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 2, horizontal: 10),
                        border: InputBorder.none,
                        labelText: 'Last Name',
                        labelStyle: const TextStyle(
                          color: Color(0xFFA04EF6),
                          fontWeight: FontWeight.w500,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xFFA04EF6),
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFA04EF6),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xFFA04EF6),
                          blurRadius: 4,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 2, horizontal: 10),
                        suffix: InkWell(
                          onTap: () {
                            setState(() {
                              value1 = !value1;
                            });
                            secondsRemaining = 30;
                            timer =
                                Timer.periodic(const Duration(seconds: 1), (_) {
                              if (secondsRemaining != 0) {
                                setState(() {
                                  secondsRemaining--;
                                });
                              } else {
                                setState(() {
                                  enableResend = true;
                                });
                              }
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xFFEFEEEE).withOpacity(0.50),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10,
                              ),
                              child: Text(
                                'Verify',
                                style: TextStyle(
                                  color: Color(0xff8F9098),
                                ),
                              ),
                            ),
                          ),
                        ),
                        border: InputBorder.none,
                        labelText: 'Mobile Number',
                        labelStyle: const TextStyle(
                          color: Color(0xFFA04EF6),
                          fontWeight: FontWeight.w500,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xFFA04EF6),
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFA04EF6),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                      ),
                    ),
                  ),
                ),
                (value1)
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 20.0,
                              vertical: 5.0,
                            ),
                            child: Text(
                              'Resend OTP',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFA04EF6),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                OtpInput(_fieldOne, true),
                                OtpInput(_fieldTwo, false),
                                OtpInput(_fieldThree, false),
                                OtpInput(_fieldFour, false)
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          (secondsRemaining != 0)
                              ? Center(
                                  child: Text(
                                    '00:$secondsRemaining',
                                    style: const TextStyle(
                                      color: Color(0xff8F9098),
                                      fontSize: 14,
                                    ),
                                  ),
                                )
                              : const SizedBox(),
                        ],
                      )
                    : Container(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xFFA04EF6),
                          blurRadius: 4,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 2, horizontal: 10),
                        suffix: InkWell(
                          onTap: () {
                            setState(() {
                              value2 = !value2;
                            });
                            secondsRemaining2 = 30;
                            timer =
                                Timer.periodic(const Duration(seconds: 1), (_) {
                              if (secondsRemaining2 != 0) {
                                setState(() {
                                  secondsRemaining2--;
                                });
                              } else {
                                setState(() {
                                  enableResend = true;
                                });
                              }
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xFFEFEEEE).withOpacity(0.50),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10,
                              ),
                              child: Text(
                                'Verify',
                                style: TextStyle(
                                  color: Color(0xff8F9098),
                                ),
                              ),
                            ),
                          ),
                        ),
                        border: InputBorder.none,
                        labelText: 'Email',
                        labelStyle: const TextStyle(
                          color: Color(0xFFA04EF6),
                          fontWeight: FontWeight.w500,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xFFA04EF6),
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFA04EF6),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                      ),
                    ),
                  ),
                ),
                (value2)
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 20.0,
                              vertical: 5.0,
                            ),
                            child: Text(
                              'Resend OTP',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFA04EF6),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                OtpInput(_fieldOne, true),
                                OtpInput(_fieldTwo, false),
                                OtpInput(_fieldThree, false),
                                OtpInput(_fieldFour, false)
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          (secondsRemaining2 != 0)
                              ? Center(
                                  child: Text(
                                    '00:$secondsRemaining2',
                                    style: const TextStyle(
                                      color: Color(0xff8F9098),
                                      fontSize: 14,
                                    ),
                                  ),
                                )
                              : const SizedBox(),
                        ],
                      )
                    : Container(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.13,
                ),
                Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.white,
                      activeColor: const Color(0xFFA04EF6),
                      value: value,
                      onChanged: (value) => setState(
                        () => this.value = value!,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Text(
                              'I\'ve read and agree with the',
                              style: TextStyle(
                                color: Color(0xFF71727A),
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                              ),
                            ),
                            Text(
                              ' Terms & Conditions,',
                              style: TextStyle(
                                color: Color(0xFFA04EF6),
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: const [
                            Text(
                              'Privacy Policy',
                              style: TextStyle(
                                color: Color(0xFFA04EF6),
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                              ),
                            ),
                            Text(
                              ' &',
                              style: TextStyle(
                                color: Color(0xFF71727A),
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                              ),
                            ),
                            Text(
                              ' End User License Agreement',
                              style: TextStyle(
                                color: Color(0xFFA04EF6),
                                fontWeight: FontWeight.w600,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                (value2)
                    ? const SizedBox()
                    : SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      '/register',
                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.068,
                    decoration: BoxDecoration(
                      color: const Color(0xffA04EF6),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'Register',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
