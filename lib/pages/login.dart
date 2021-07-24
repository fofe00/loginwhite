import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:ionicons/ionicons.dart';

class Login extends StatefulWidget {
  //const Login({ Key? key }) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(vertical: 0.0.h, horizontal: 2.5.h),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 25.0.h,
              child: Center(
                child: Text(
                  "Log in",
                  style: TextStyle(
                      fontSize: 27.0.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
              ),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "Your Email *"),
              onChanged: (value) {
                print(value);
              },
              validator: (value) {
                return (value == null) ? 'Email can be empty.' : null;
              },
            ),
            SizedBox(
              height: 2.0.h,
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  labelText: "Password *",
                  suffixIcon: Icon(Icons.remove_red_eye_outlined)),
              onChanged: (value) {
                print(value);
              },
              validator: (value) {
                return (value == null) ? 'Pwd can be empty.' : null;
              },
            ),
            SizedBox(
              height: 1.0.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Forgot password ?",
                  style: TextStyle(fontSize: 17.0.sp),
                )
              ],
            ),
            SizedBox(
              height: 4.0.h,
            ),
            Container(
              width: 90.0.w,
              decoration: BoxDecoration(
                  color: Colors.redAccent[100],
                  borderRadius: BorderRadius.circular(49)),
              child: TextButton(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(16.0),
                  primary: Colors.white,
                  textStyle: const TextStyle(fontSize: 20),
                ),
                child: Text("Login"),
                onPressed: () {
                  print("object");
                },
              ),
            ),
            SizedBox(
              height: 2.0.h,
            ),
            Row(children: <Widget>[
              Expanded(child: Divider()),
              Text("OR"),
              Expanded(child: Divider()),
            ]),
            SizedBox(
              height: 3.0.h,
            ),
            Container(
              width: 90.0.w,
              decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.circular(49)),
              child: TextButton.icon(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(16.0),
                  primary: Colors.white,
                  textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  print("object");
                },
                label: Text("Continue with Github"),
                icon: Icon(Ionicons.logo_github),
              ),
            ),
            SizedBox(
              height: 3.0.h,
            ),
            Container(
              width: 90.0.w,
              decoration: BoxDecoration(
                  color: Colors.blue[800],
                  borderRadius: BorderRadius.circular(49)),
              child: TextButton.icon(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(16.0),
                  primary: Colors.white,
                  textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  print("object");
                },
                label: Text("Continue with Facebook"),
                icon: Icon(Ionicons.logo_facebook),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
