import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_cv/add_education.dart';
class Skills extends StatelessWidget {

  var nameController = TextEditingController();
  var levelController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var Size=MediaQuery.of(context).size;
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
                          color: Color(0xff6B59D3),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        height: 50,
                        width: 50,
                      ),
                      //2line cont...
                      Container(
                        height: 3,
                        width: 50,
                        color: Color(0xff6B59D3),
                      ),
                      //3con..
                      Container(
                        child: Center(
                            child: Text(
                          "3",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        )),
                        decoration: BoxDecoration(
                          // color: Colors.black12,
                          color: Color(0xff6B59D3),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        height: 50,
                        width: 50,
                      ),
                   //3line cont...
                     Container(
                        height: 3,
                        width: 50,
                        color: Color(0xff6B59D3),
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
                          // color: Color(0xff6B59D3),
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
                      "SKILLS",
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
                        "NAME",
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
                        //wrap kiya Textfeild container mai...
                        child: TextField(
                          controller:nameController,
                          decoration:
                              InputDecoration(border: OutlineInputBorder()),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  //2colum text
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "LEVEL",
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
                        //wrap kiya Textfeild container mai...
                        child: TextField(
                          controller: levelController,
                          decoration:
                              InputDecoration(border: OutlineInputBorder()),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  // //3colum text
                  // Column(
                  //   crossAxisAlignment: CrossAxisAlignment.start,
                  //   children: [
                  //     Text(
                  //       "Email",
                  //       style: TextStyle(
                  //           color: Colors.black12,
                  //           fontWeight: FontWeight.bold,
                  //           fontSize: 20),
                  //     ),
                  //     SizedBox(
                  //       height: 5,
                  //     ),
                      
                  //     Container(
                  //       width: Size.width * .50,
                  //       //wrap kiya Textfeild container mai...
                  //       child: TextField(
                  //         decoration:
                  //             InputDecoration(border: OutlineInputBorder()),
                  //       ),
                  //     ),
                  //   ],
                  // ),

                  // SizedBox(
                  //   height: 30,
                  // ),

                  // //4colum text.
                  // Column(
                  //   crossAxisAlignment: CrossAxisAlignment.start,
                  //   children: [
                  //     Text(
                  //       "Phone No",
                  //       style: TextStyle(
                  //           color: Colors.black12,
                  //           fontWeight: FontWeight.bold,
                  //           fontSize: 20),
                  //     ),
                  //     SizedBox(
                  //       height: 5,
                  //     ),
                     
                  //     Container(
                  //       width: Size.width * .50,
                  //       //wrap kiya Textfeild container mai...
                  //       child: TextField(
                  //         decoration:
                  //             InputDecoration(border: OutlineInputBorder()),
                  //       ),
                  //     ),
                  //   ],
                  // ),

                  // SizedBox(
                  //   height: 30,
                  // ),
                  // //5colum text..

                  // Column(
                  //   crossAxisAlignment: CrossAxisAlignment.start,
                  //   children: [
                  //     Text(
                  //       "Role",
                  //       style: TextStyle(
                  //           color: Colors.black12,
                  //           fontWeight: FontWeight.bold,
                  //           fontSize: 20),
                  //     ),
                  //     SizedBox(
                  //       height: 5,
                  //     ),
                      
                  //     Container(
                  //       width: Size.width * .50,
                  //       //wrap kiya Textfeild container mai...
                  //       child: TextField(
                  //         decoration:
                  //             InputDecoration(border: OutlineInputBorder()),
                  //       ),
                  //     ),
                  //   ],
                  // ),

                  SizedBox(
                    height: 30,
                  ),
        
              //row last button..
              Container(
                // color: Colors.red,
                width: Size.width *.50,
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // contai butt...1...
                  InkWell(
                    onTap: (){
                     
                      Navigator.pop(context);                 

                    },
                    child: Container(
                      width: 130,
                      height: 50,
                    color: Color(0xffC1C1C1),  
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                         Icon(Icons.arrow_back,color: Colors.white,size: 15,),
                          SizedBox(width: 5,),
                         Text("back",style: TextStyle(color: Colors.white,fontSize: 15),),
                 
                 
                      ],
                    ),                    
                                
                    ),
                  ),
            // contai butt...1...
                     InkWell(
                    onTap: (){
                      Navigator.push(context, CupertinoPageRoute(builder: (context) => AddEducation(),));

                    },
                    child: Container(
                      width: 130,
                      height: 50,
                      color: Color(0xff6B59D3) ,
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