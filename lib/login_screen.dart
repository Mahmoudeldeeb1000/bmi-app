import 'package:bmi/homepage.dart';
import 'package:flutter/material.dart';


class login_screen extends StatefulWidget{
  @override
  State<login_screen> createState() => _login_screenState();
}

class _login_screenState extends State<login_screen> {
  GlobalKey<FormState>  formkey = GlobalKey();

  late String  name;

  late String  password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("login screen"),
        centerTitle: true,
      ),
      body:
      Container(
        color: Color(0xff00008b),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Form(
            key:formkey ,
            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  style: TextStyle(color: Colors.white),

                  validator: (value){
                    if(value==null || value.isEmpty) {
                      return"user name is required";
                    }
                    else{
                      return null;
                    }
                  },
                  decoration:InputDecoration (
                    hintText: "please enter your name ",
                    hintStyle: TextStyle(color: Colors.white,fontSize: 20),
                    // labelText: "your email ",labelStyle: TextStyle(fontSize: 20),
                    enabledBorder:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                            color: Colors.blue,
                            width: 3
                        )
                    ) ,
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                            color: Colors.green,
                            width: 3
                        )
                    ) ,
                  ),
                  onFieldSubmitted: (value){
                    name = value;
                  },
                  onChanged: (value){
                    name = value;
                  },
                ),
                SizedBox(height: 15),
                TextFormField(
                  style: TextStyle(color: Colors.white),
                  validator: (value){
                    if(value==null || value.isEmpty){
                      return"user password is required";
                    }  else{
                      return null;
                    }
                  },
                  onChanged: (value){
                    password = value;
                  },
                  decoration:InputDecoration (
                    hintText: "please enter your password ",
                    hintStyle: TextStyle(color: Colors.white,fontSize: 20),
                    // labelText: "your password ",labelStyle: TextStyle(fontSize: 20),
                    enabledBorder:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                            color: Colors.blue,
                            width: 3
                        )
                    ) ,
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                            color: Colors.green,
                            width: 3
                        )
                    ) ,


                  ),
                  onFieldSubmitted: (value){
                    password = value;
                  },
                ),
                SizedBox(height: 15),
                MaterialButton(
                  onPressed: (){
                    if(formkey.currentState!.validate() ==true)
                    {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder:(context){
                                return homepage(name: name,password: password,);
                              } ));
                    }
                  },
                  color: Colors.blue,
                  child:
                  Text("login",style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.bold
                  )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// inkwell = GestureDetector