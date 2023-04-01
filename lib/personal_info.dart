import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_cv/add_education.dart';
import 'package:task_cv/add_experience.dart';

class PersonalInfo extends StatelessWidget {
   PersonalInfo({super.key});


    var fNameController = TextEditingController();
    var lNameController = TextEditingController();
    var emailController = TextEditingController();
    var phoneController = TextEditingController();
    var roleController = TextEditingController();
    var addressController = TextEditingController();
    var objectiveController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    var Size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff6B59D3),
      body: Center(
        //main container....
        child: Container(
          width: Size.width * .90,
          height: Size.height * .90,
          color: Color(0xffFFFFFF),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //1con..
                      Container(
                        child: Center(
                            child: Text(
                          "1",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        )),
                        decoration: BoxDecoration(
                          color: Color(0xff6B59D3),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        height: 50,
                        width: 50,
                      ),
                      //1line cont...
                      Container(
                        height: 3,
                        width: 50,
                        color: Color(0xff6B59D3),
                      ),
                      //2con..
                      Container(
                        child: Center(
                            child: Text(
                          "2",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        )),
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        height: 50,
                        width: 50,
                      ),
                      //2line cont...
                      Container(
                        height: 3,
                        width: 50,
                        color: Colors.black12,
                      ),
                      //3con..
                      Container(
                        child: Center(
                            child: Text(
                          "3",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        )),
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          // color: Color(0xff6B59D3),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        height: 50,
                        width: 50,
                      ),
                  // 3line container...
                   Container(
                        height: 3,
                        width: 50,
                        color: Colors.black12,
                      ),
                      // 4container...
                       Container(
                        child: Center(
                            child: Text(
                          "4",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        )),
                        decoration: BoxDecoration(
                          color: Colors.black12,
                         
                          borderRadius: BorderRadius.circular(30),
                        ),
                        height: 50,
                        width: 50,
                      ),
                  
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Center(
                    child: Text(
                      "PERSONAL INFO",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
            //1col txtf
                 Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   Text(
                    "First Name",
                    style: TextStyle(
                        color: Colors.black12,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                 
                  Container(
                    width: Size.width * .50,
                    child: TextField(
                      controller: fNameController,
                      decoration: InputDecoration(border: OutlineInputBorder()),
                    ),
                  ),
                 ],),
                  SizedBox(height: 30,),
                  //2colum text
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Text(
                    "Last Name",
                    style: TextStyle(
                        color: Colors.black12,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  //2texfeild...
                  Container(
                    width: Size.width * .50,
                    child: TextField(
                      controller: lNameController,
                      decoration: InputDecoration(border: OutlineInputBorder()),
                    ),
                  ),
                    ],
                  ),
                  SizedBox(height: 30,),
                   //3colum text
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Text(
                    "Email",
                    style: TextStyle(
                        color: Colors.black12,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  //3texfeild...
                  Container(
                    width: Size.width * .50,
                    child: TextField(
                      controller: emailController,
                      decoration: InputDecoration(border: OutlineInputBorder()),
                    ),
                  ),
                    ],
                  ),
                
                  SizedBox(height: 30,),

                  //4colum text.
                     Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Text(
                    "Phone No",
                    style: TextStyle(
                        color: Colors.black12,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  //3texfeild...
                  Container(
                    width: Size.width * .50,
                    child: TextField(
                      controller: phoneController,
                      decoration: InputDecoration(border: OutlineInputBorder()),
                    ),
                  ),
                    ],
                  ),
                
                  SizedBox(height: 30,),
                  //5colum text..

                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Text(
                    "Role",
                    style: TextStyle(
                        color: Colors.black12,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  
                  Container(
                    width: Size.width * .50,
                    child: TextField(
                      controller: roleController,
                      decoration: InputDecoration(border: OutlineInputBorder()),
                    ),
                  ),
                    ],
                  ),
                
                  SizedBox(height: 30,),
                  //6colum text..
                       Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Text(
                    "Address",
                    style: TextStyle(
                        color: Colors.black12,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                 
                  Container(
                    width: Size.width * .50,
                    child: TextField(
                      controller: addressController,
                      decoration: InputDecoration(border: OutlineInputBorder()),
                    ),
                  ),
                    ],
                  ),
                
                  SizedBox(height: 30,),
                  //7colum text...
                     Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Text(
                    "Objective",
                    style: TextStyle(
                        color: Colors.black12,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  
                  Container(
                    width: Size.width * .50,
                    child: TextField(
                      controller: objectiveController,
                      decoration: InputDecoration(border: OutlineInputBorder()),
                    ),
                  ),
                    ],
                  ),
                
           
              SizedBox(height: 30,),

              Container(
                width: Size.width*.50,
                child: Row(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: (){
                        print(lNameController.text);
                        // Navigator.push(context, CupertinoPageRoute(builder: (context)=> AddExperience() ));
                      },
                      child: Container(
                                width:130,
                                height: 50,
                                color:  Color(0xff6B59D3),
                                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    
                      children: [
                        Text("Next",style: TextStyle(color: Colors.white,fontSize: 15),),
                        SizedBox(width: 5,),
                        Icon(Icons.arrow_forward,color: Colors.white,size: 15,),
                      ],
                                ),
                    
                      ),
                    ),
                  ],
                ),
              ),
            
                ],
              ),
            ),
          ),
        ),
      ),
   
    );
  }
}
