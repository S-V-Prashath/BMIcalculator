import 'package:flutter/material.dart';

void main()=>runApp(MaterialApp(
  home: Home(),
  debugShowCheckedModeBanner: false,
));
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  double bmi=0;
  double weight = 0;
  double height = 50;
  double newheight = 0;
  double nweight = 0;
  double nheight = 0;
  bool ch = false;
  Widget img(double bmi){
    if(ch==true){
      if(bmi>35){
        return Container(
          child: Column(
            children: [
              Text("Your Body Mass Index is ${bmi.toStringAsFixed(2)}"),
              Image.asset("images/eobse.png",height: 220),
              Container(
                height: 10,
                width: 320,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color(0xff93b4d7),
                          Color(0xff7dbd4d),
                          Color(0xfff9d648),
                          Color(0xffeb843d),
                          Color(0xffd65c5b),

                        ]
                    )
                ),
                //color: Colors.purple,
              )
            ],
          ),
        );
      }
      else if(bmi>30){
        return Container(
          child: Column(
            children: [
              Text("Your Body Mass Index is ${bmi.toStringAsFixed(2)}"),
              Image.asset("images/obse.png",height: 220),
              Container(
                height: 10,
                width: 320,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color(0xff93b4d7),
                          Color(0xff7dbd4d),
                          Color(0xfff9d648),
                          Color(0xffeb843d),
                          Color(0xffd65c5b),

                        ]
                    )
                ),
                //color: Colors.purple,
              )

            ],
          ),
        );
      }
      else if(bmi>25){
        return Container(
          child: Column(
            children: [
              Text("Your Body Mass Index is ${bmi.toStringAsFixed(2)}"),
              Image.asset("images/overweight.png",height: 220),
              Container(
                height: 10,
                width: 320,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color(0xff93b4d7),
                          Color(0xff7dbd4d),
                          Color(0xfff9d648),
                          Color(0xffeb843d),
                          Color(0xffd65c5b),

                        ]
                    )
                ),
                //color: Colors.purple,
              )

            ],
          ),
        );

      }
      else if(bmi>18.5){
        return Container(
          child: Column(
            children: [
              Text("Your Body Mass Index is ${bmi.toStringAsFixed(2)}"),
              Image.asset("images/normal.png",height: 220),
              Container(
                height: 10,
                width: 320,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color(0xff93b4d7),
                          Color(0xff7dbd4d),
                          Color(0xfff9d648),
                          Color(0xffeb843d),
                          Color(0xffd65c5b),

                        ]
                    )
                ),
                //color: Colors.purple,
              )

            ],
          ),
        );

      }
      else {
        return Container(
          child: Column(
            children: [
              Text("Your Body Mass Index is ${bmi.toStringAsFixed(2)}"),
              Image.asset("images/underweight.png",height: 220),
              Container(
                height: 10,
                width: 320,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color(0xff93b4d7),
                          Color(0xff7dbd4d),
                          Color(0xfff9d648),
                          Color(0xffeb843d),
                          Color(0xffd65c5b),

                        ]
                    )
                ),
                //color: Colors.purple,
              )

            ],
          ),
        );

      }
    }
    else{
      return SizedBox(height: 230,);
    }
  }
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff041636),
        title: Text("BMI Calculator"),
        centerTitle: true,
      ),
      body:Container(
        height: size.height,
        width: double.infinity,
        padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
        color: Color(0xff041636),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: size.height*0.4,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white,width: 5),
                  color: Colors.grey.shade400,
                ),
                //height: 250,
                padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                child: Column(
                  children: [
                    RichText(
                        text: TextSpan(
                          text: "Height :",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Preahvihear",
                              color: Colors.black
                          ),
                          children: [
                            TextSpan(
                              text: " $height cm",
                              style: TextStyle(
                                color: Colors.grey.shade800,
                                  fontSize: 20,
                                  //fontWeight: FontWeight.bold,
                                  fontFamily: "Preahvihear"
                              )
                            )
                          ]
                        )
                    ),
                    Slider(
                      activeColor: Colors.green.shade800,
                      inactiveColor: Colors.green.shade200,
                      thumbColor: Colors.green.shade500,
                      value: height,
                      onChanged: (nheight){
                        setState(() {
                          height=nheight;
                        });
                      },
                      min: 50,
                      max: 250,
                      divisions: 200,
                      //label: "$height cm",
                    ),
                    SizedBox(height: 30,),
                    RichText(
                        text: TextSpan(
                            text: "Weight :",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Preahvihear",
                                color: Colors.black
                            ),
                            children: [
                              TextSpan(
                                  text: " $weight kg",
                                  style: TextStyle(
                                      color: Colors.grey.shade800,
                                      fontSize: 20,
                                      //fontWeight: FontWeight.bold,
                                      fontFamily: "Preahvihear"
                                  )
                              )
                            ]
                        )
                    ),
                    Slider(
                      activeColor: Colors.red.shade800,
                      inactiveColor: Colors.red.shade200,
                      thumbColor: Colors.red.shade500,
                      value: weight,
                      onChanged: (nweight){
                        setState(() {
                          weight=nweight;
                        });
                      },
                      min: 0,
                      max: 150,
                      divisions: 150,
                      //label: "$weight kg",
                    ),
                    SizedBox(height: 30,),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(side: BorderSide(width: 3,color: Color(0xff093582))),
                      onPressed: (){
                        setState(() {
                          newheight = height/100;
                          bmi = (weight/(newheight*newheight));
                          ch=true;
                        });
                      },
                      child: Text("Calculate"),

                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                //padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                height: size.height*0.4,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white,width: 5),
                  color: Colors.grey.shade400,
                ),
                child: Center(
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Result",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,fontFamily: "Preahvihear"),),
                      //Text("Your Body Mass Index is ${bmi.toStringAsFixed(2)}"),
                      img(bmi),
                      //Image.asset("images/eobse.png",height: 220,)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: size.height*0.1,
                width: double.infinity,
                color: Colors.white,

                child: Text("ADD AREA",textAlign: TextAlign.center,),
              )
            ],
          ),
        ),
      ),

    );
  }
}
