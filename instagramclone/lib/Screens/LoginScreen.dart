import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagramclone/Widgets/TextFieldInput.dart';
import 'package:instagramclone/utilis/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
 final TextEditingController _emailController = TextEditingController();
 final TextEditingController _passwordController = TextEditingController();
  
  @override
  void dispose(){
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Flexible(child: Container(), flex : 2),
            SvgPicture.asset("assets/Instagram.svg", color: primaryColor, height: 64,),
            SizedBox(height: 64,),
            TextFieldsInput(textEditingController: _emailController, isPass: false, hintText: "Enter your Email", textFieldInput: TextInputType.emailAddress),
            SizedBox(height: 24,),
            TextFieldsInput(textEditingController: _passwordController, isPass: true, hintText: "Enter your Password", textFieldInput: TextInputType.text),
            SizedBox(height: 24,), 
           InkWell(
           onTap: (){}, 
             child: Container(
              child: const Text("Login"),
              width: double.infinity,
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(vertical: 12),
              decoration: const ShapeDecoration(
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(4)
                )
              )),
             ),
           ),
          SizedBox(height: 12,),
          Flexible(child: Container(), flex: 2,),
          Row(
           mainAxisAlignment: MainAxisAlignment.center, 
            children: [
               Container(
                child: Text("Don't have an account ?"),
                padding: EdgeInsets.symmetric(vertical: 8),
               ),
              SizedBox(width: 8,), 
              GestureDetector(
               onTap: (){

               }, 
                child: Container(
                  child: Text("Sign up" , style: TextStyle(fontWeight: FontWeight.bold),),
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
