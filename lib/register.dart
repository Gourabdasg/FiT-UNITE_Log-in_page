import 'package:flutter/material.dart';

class MyRegister extends StatefulWidget{
  const MyRegister({Key?key}): super(key: key);


  @override
  _MyRegisterState createState() => _MyRegisterState(); }

  class _MyRegisterState extends State<MyRegister> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/image.jpg'),
              fit: BoxFit.cover
          )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              alignment: Alignment.topRight,
              padding: EdgeInsets.only(left:35, top:50),
              child: Text('Create \nAccount',
                style: TextStyle(color: Colors.white,fontSize: 60,),),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.4,
                    right: 35,left: 35),
                child: Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText: 'Enter Your Name',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          )
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText: 'Enter Your Phone Number',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          )
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: 'Gender',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                        )
                      ),
                    ),
                      SizedBox(
                        height: 15,
                      ),
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: 'Birthday',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                        )
                      ),
                    ),
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(onPressed:(){}, child: Text('SUBMIT',style: TextStyle(
                            fontSize: 35,
                            color: Colors.white,
                            backgroundColor: Colors.redAccent
                          ),))
                        ],
                      )

                      ],
                    ),


                    ),





                    ),




          ],
        ),
      ),
    );
  }
}



