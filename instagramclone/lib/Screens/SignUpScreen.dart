import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagramclone/Widgets/TextFieldInput.dart';
import 'package:instagramclone/utilis/colors.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<SignUpScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _biocontroller = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _biocontroller.dispose();
    _usernameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
                padding: EdgeInsets.symmetric(horizontal: 32),
                width: double.infinity,
                child: ListView(
          children: [
            Flexible(child: Container(), flex: 2),
            SvgPicture.asset(
              "assets/Instagram.svg",
              color: primaryColor,
              height: 64,
            ),
            SizedBox(
              height: 64,
            ),
            Stack(
              children: [
                Center(
                  child: CircleAvatar(
                    radius: 64,
                    backgroundImage: NetworkImage("https://images.unsplash.com/photo-1547425260-76bcadfb4f2c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80"),
                  ),
                ),
                 Positioned(
                  bottom: -10,
                  left: 188,
                  child: IconButton(onPressed: (){}, icon: const Icon(Icons.add_a_photo)))
              ],
            ),
            SizedBox(height: 24,),
            TextFieldsInput(
                textEditingController: _usernameController,
                isPass: false,
                hintText: "Enter your Username",
                textFieldInput: TextInputType.text),
            SizedBox(
              height: 24,
            ),
            TextFieldsInput(
                textEditingController: _emailController,
                isPass: false,
                hintText: "Enter your Email",
                textFieldInput: TextInputType.emailAddress),
            SizedBox(
              height: 24,
            ),
            TextFieldsInput(
                textEditingController: _passwordController,
                isPass: true,
                hintText: "Enter your Password",
                textFieldInput: TextInputType.text),
            SizedBox(
              height: 24,
            ),
            TextFieldsInput(
                textEditingController: _biocontroller,
                isPass: false,
                hintText: "Enter your Bio",
                textFieldInput: TextInputType.text),
            SizedBox(
              height: 24,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                child: const Text("Sign Up"),
                width: double.infinity,
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 12),
                decoration: const ShapeDecoration(
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)))),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Flexible(
              child: Container(),
              flex: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text("Don't have an account ?"),
                  padding: EdgeInsets.symmetric(vertical: 8),
                ),
                SizedBox(
                  width: 8,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    child: Text(
                      "Sign up",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 8),
                  ),
                ),
              ],
            )
          ],
                ),
              )),
    );
  }
}
