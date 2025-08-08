import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget{
  const MyLogin({Key? key}): super(key: key);


  @override
  _MyLoginState createState() => _MyLoginState(); }

class _MyLoginState extends State<MyLogin>{

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
         image: AssetImage('assets/gym-iphone-wallpaper-6.jpg'),
          fit: BoxFit.cover
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              alignment: Alignment.topCenter,
              padding: EdgeInsets.only(left:35, top:130),
              child: Text('Welcome \nFiT_UNITE',
                  style: TextStyle(color: Colors.orangeAccent,fontSize: 40,),),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.5,
                    right: 35,left: 35),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: 'Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                        )
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText: 'Password',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          )
                      ),
                    ),
                      SizedBox(
                        height: 25,
                      ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [TextButton(onPressed: (){},child: Text('Sign In',style: TextStyle(
                            fontSize: 25,fontWeight: FontWeight.w700,color: Colors.white),),
                        ),
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.amber,
                            child: IconButton(
                              color: Colors.white,
                              onPressed: (){},
                              icon: Icon(Icons.arrow_forward),
                            ),
                          )
                        ],
                      ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                      children: [
                        TextButton(onPressed:(){
                          Navigator.pushNamed(context, 'register');
                        }, child: Text('Sign up',style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),)),
                        TextButton(onPressed:(){}, child: Text('Forgot Password?',style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),)),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(onPressed: (){}, child: Text('Sign Up With Google',style: TextStyle(
                          fontSize: 23,
                          color: Colors.white,
                      ),
                        ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  }

