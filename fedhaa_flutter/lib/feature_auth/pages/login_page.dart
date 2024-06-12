import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> formkey = GlobalKey();
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  bool isVisible = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    username.text = "";
    password.text = "";
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 80),
            Align(
              alignment: Alignment.centerLeft,
              child: const Text(
                'Hello,',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: const Text(
                'Welcome Back !',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
            SizedBox(
              height: height * 0.06,
            ),
            Form(
              key: formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    " Email",
                    style: TextStyle(
                      color: Colors.black,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.009,
                  ),
                  TextFormField(
                    controller: username,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if (value == null || value.isEmpty || value.length < 3) {
                        return "Enter a Username";
                      }
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusColor: Colors.greenAccent,
                      contentPadding: EdgeInsets.symmetric(horizontal: 25),
                      hintText: 'Enter Email',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Text(
                    " Password",
                    style: TextStyle(
                      color: Colors.black,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.009,
                  ),
                  TextFormField(
                      obscureText: isVisible ? false : true,
                      controller: password,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if (value == null || value.length < 5) {
                          return "Enter a valid Password";
                        }
                      },
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          iconSize: 15,
                          onPressed: () {
                            setState(() {
                              isVisible = !isVisible;
                            });
                          },
                          icon: isVisible
                              ? Icon(FontAwesomeIcons.solidEyeSlash)
                              : Icon(FontAwesomeIcons.solidEye),
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusColor: Colors.greenAccent,
                        contentPadding: EdgeInsets.symmetric(horizontal: 25),
                        hintText: 'Enter Password',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'poppins',
                      ))
                ],
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: const Text(
                  'forgot password ?',
                  style: TextStyle(color: secondaryColor),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.04,
            ),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton.icon(
                iconAlignment: IconAlignment.end,
                style: ElevatedButton.styleFrom(
                  alignment: Alignment.center,
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () async {
                  Get.offAll(
                    () => MainScreen(),
                    transition: Transition.cupertino,
                  );
                },
                icon: Icon(
                  IconlyBold.arrowRight3,
                  color: Colors.white,
                  size: 16,
                ),
                label: Text(
                  'Sign In',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Divider(
                    indent: 50,
                    color: Colors.grey.shade400,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    "Or Sign in With",
                    style: TextStyle(
                      color: Colors.grey.shade400,
                    ),
                  ),
                ),
                Expanded(
                  child: Divider(
                    color: Colors.grey.shade400,
                    endIndent: 50,
                  ),
                )
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 40,
                  height: 40,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {},
                    child: SizedBox(
                      width: 40,
                      height: 40,
                      child: Image.asset(
                        'assets/images/Google.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: 40,
                  height: 40,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {},
                    child: SizedBox(
                      width: 20,
                      height: 20,
                      child: Center(
                        child: Image.asset(
                          'assets/images/Facebook.png',
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.04,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don’t have an account? ",
                  style: TextStyle(color: Colors.black),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(
                      () => SingupPage(),
                      transition: Transition.cupertino,
                    );
                  },
                  child: const Text(
                    'Sign up',
                    style: TextStyle(
                      color: secondaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
