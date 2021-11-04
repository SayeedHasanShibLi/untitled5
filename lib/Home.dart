import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _value=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.green ,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(height: 30,),
            Text("Registrastion Hare",style: TextStyle(fontSize: 30)),
            Form(child: Padding(
              padding: const EdgeInsets.only(left: 30,right: 30),
              child: Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      labelText: 'Enter Your Name'

                    ),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                        labelText: 'Enter Your Address'

                    ),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                        labelText: 'Enter Your Phone Number'

                    ),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        labelText: 'Enter Your Email Address'

                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: 'Enter Your Password'

                    ),
                  ),
                  Row(
                    children: [
                      Text("Gender"),
                      Row(
                        children: [
                          Radio(value: 1, groupValue: _value, onChanged: (valuex){
                            setState(() {
                              valuex=_value;

                            });
                          })

                        ],
                      ),
                      Text("Male"),
                      Row(
                        children: [
                          Radio(value: 2, groupValue: _value, onChanged: (valuex){
                            setState(() {
                              valuex=_value;

                            });
                          })

                        ],
                      ),
                      Text("Female"),

                    ],
                  ),


                  DropdownButtonFormField(
                      hint: Text("Enter Your Status"),
                      onChanged: (value){
                        setState(() {
                          print(value);
                        });
                      },
                      items: [

                   DropdownMenuItem(child: Text("Married"),value: "married",),
                    DropdownMenuItem(child: Text("Devorced"),value: "devorced",),
                    DropdownMenuItem(child: Text("Complecated"),value: "complecated",),

                  ]),
                ],
              ),
            )),
            RaisedButton(onPressed: (){},child: Text('Sing Up Hare',style: TextStyle(color: Colors.white),),color: Colors.lightBlue,),

          ],
        ),
      ),



    );
  }
}
