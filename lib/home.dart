import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:practice_project_4_validationchk/visit.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {

    TextEditingController phoneController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    final _formKey = GlobalKey<FormState>();

    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: phoneController,
                  decoration: InputDecoration(
                    hintText: "Enter Your Phone number",
                    border: OutlineInputBorder(),
                  ),
          
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Phone Number';
                    } else if (value.length != 11) {
                      return 'Please Enter a Valid Phone Number';
                    } else {
                      return null;
                    }
                  }
                ),
              ),
          
              SizedBox(height: 10.h,),
          
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: passwordController,
                  obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Your Password",
                      border: OutlineInputBorder(),
                    ),
          
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Enter Password';
                      } else if (value.length < 6) {
                        return 'password must be at lest 6 Characters';
                      } else {
                        return null;
                      }
                    }
                ),
              ),
              
              SizedBox(height: 20.h,),
              
              SizedBox(
                height: 50.h,
                width: 300.h,
                child: ElevatedButton(onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Navigation
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Visit()));

                  }
                },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      foregroundColor: Colors.white
                    ),
                    child: Text('Login')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
