import 'dart:math';
import 'package:bmi/Bmipage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class homepage extends StatefulWidget{
  late String  name;
  late String  password;
  homepage({super.key,required this.name,required this.password});
  @override
  State<homepage> createState() => _homepageState(name,password);
}
class _homepageState extends State<homepage> {
  double slidervalue= 100;
  bool male = true;
  int weight =70;
  int age =20;
  late String x ;
  late String y;
  _homepageState(this.x,this.y);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Bmi calculater",style: TextStyle(color: Colors.white,
            letterSpacing: 3,fontSize: 30)),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Color(0xff00008B),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: (){
                    setState(() {});
                    male =false;
                  },
                  child: Container(
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: male? Colors.grey: Colors.pink,
                        borderRadius: BorderRadius.circular(40),
                    ),
                  child:Column(
                    children: [
                      Image.asset("assets/images/female-icon-2.png",
                          height: 145),
                      Text("female",style: TextStyle(color: Colors.black,letterSpacing: 2,
                      fontSize: 30),)
                    ],
                  )
            ),
                ),
              ),
              SizedBox(width: 20,),
              Expanded(
                child: InkWell(
                  onTap: (){
                    setState(() {});
                    male=true;
                  },
                  child: Container(
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: male? Colors.blue: Colors.grey,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Column(
                      children: [
                        Image.asset("assets/images/male-icon-15.png",
                          height: 150,),
                        Text("male",style: TextStyle(color: Colors.black,letterSpacing: 2,
                            fontSize: 30),)
                      ],
                    )
                  ),
                ),
              ),
            ],
          ),
          
          Container(
           padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color:Colors.grey,
            borderRadius: BorderRadius.circular(30)),
            child: Column(
              children: [
                Text(
                    "HEIGHT",style: TextStyle(color: Colors.white,
                    fontSize: 30,fontWeight: FontWeight.bold)
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(slidervalue.toInt().toString(),style: TextStyle(color: Colors.white,
                        fontSize: 30,fontWeight: FontWeight.bold)),
                    Text("cm",style: TextStyle(color: Colors.grey,
                    fontSize: 20)),
                  ],
                ),
                Slider(
                   activeColor: Colors.cyanAccent,
                  value: slidervalue,
                  onChanged:(value){
                  slidervalue =value;
                  setState(() {});
                  },
                  min: 100, //start
                  max: 200, //end
                )
              ],
            ),
          ),

          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(15),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey,
                  ),
                  child: Column(
                    children: [
                      Text("WEIGHT",style: TextStyle(color: Colors.white,
                          fontSize:30,fontWeight: FontWeight.bold),),
                      Text(weight.toString(),style: TextStyle(color: Colors.white,
                          fontSize:30),),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton(onPressed: (){
                            setState(() {

                            });
                            weight++;
                          },
                            child: Icon(Icons.add),
                          ),
                          FloatingActionButton(onPressed: (){
                            setState(() {

                            });
                            weight--;
                          },
                            child: Icon(Icons.remove),
                          ),
                          ],
                      )

                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(15),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey,
                  ),
                  child: Column(
                    children: [
                      Text("AGE",style: TextStyle(color: Colors.white,
                          fontSize:30,fontWeight: FontWeight.bold),),
                      Text(age.toString(),style: TextStyle(color: Colors.white,
                          fontSize:30),),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton(onPressed: (){
                            setState(() {
                            });
                            age++;
                          },
                            child: Icon(Icons.add),
                          ),
                          FloatingActionButton(onPressed: (){
                            setState(() {
                            });
                            if(age>10){
                              age--;
                            }

                          },
                            child: Icon(Icons.remove),
                          ),
                          ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          InkWell(
            onTap: (){
              setState(() {});
              double result = weight / pow(slidervalue/100, 2);
              print(result);
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return bmi(age: this.age,male: this.male,
                  weight: this.weight, result: result,name: this.x,
                );
              }));
            },
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 90,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(30)
              ),
              child: Text("CALCULATE",style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                  letterSpacing: 4,
              )),
            ),
          )
        ],
      ),
    );
  }
}

