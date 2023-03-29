// ignore_for_file: file_names

import 'package:flutter/material.dart';

class InstaLogin extends StatefulWidget {
  const InstaLogin({super.key});

  @override
  State<InstaLogin> createState() => _InstaLoginState();
}

class _InstaLoginState extends State<InstaLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 130, horizontal: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: _centerWidget(),
              ),
              Flexible(child: Container(), flex: 2),
              const Divider(
                thickness: 2,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: _bottomWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _centerWidget() {
    return Column(
      children: [
        Image.asset(
          "assets/images/instagram_icon.png",
          height: 50,
        ),
        const SizedBox(height: 24),
        TextField(
          decoration: InputDecoration(
            hintText: "Email",
            border: OutlineInputBorder(
              borderSide: Divider.createBorderSide(context),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: Divider.createBorderSide(context),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: Divider.createBorderSide(context),
            ),
            filled: true,
            contentPadding: const EdgeInsets.all(8),
          ),
        ),
        const SizedBox(height: 24),
        TextField(
          decoration: InputDecoration(
            hintText: "PassWord",
            border: OutlineInputBorder(
              borderSide: Divider.createBorderSide(context),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: Divider.createBorderSide(context),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: Divider.createBorderSide(context),
            ),
            filled: true,
            suffixIcon: const Icon(Icons.remove_red_eye),
            contentPadding: const EdgeInsets.all(8),
          ),
          obscureText: true,
        ),
        const SizedBox(height: 24),
        SizedBox(
          height: 48,
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            child: Text("Log in"),
          ),
        ),
        const SizedBox(height: 24),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Forgot your login detail"),
            Text(
              "Get help logging in",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const SizedBox(height: 24),
        Row(
          children: [
            Flexible(
              child: Divider(
                thickness: 2,
              ),
            ),
            Text(" OR "),
            Flexible(
              child: Divider(
                thickness: 2,
              ),
            ),
          ],
        ),
        const SizedBox(height: 24),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/fb_icon.png",
              height: 32,
            ),
            const Text(" Log in  with Facebook"),
          ],
        ),
      ],
    );
  }

  Widget _bottomWidget() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Don t have an account"),
          Text(
            "Sing up",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      );
}
