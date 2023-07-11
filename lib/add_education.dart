import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_cv/cvscreen.dart';
import 'package:task_cv/personal_info.dart';
import 'package:task_cv/skills.dart';
import 'package:task_cv/widget.dart';

class AddEducation extends StatefulWidget {
  @override
  State<AddEducation> createState() => _AddEducationState();
}

class _AddEducationState extends State<AddEducation> {
  
  var levelController = TextEditingController();

  var insituteController = TextEditingController();

  var startingController = TextEditingController();

  var endingController = TextEditingController();

  var detailsController = TextEditingController();

  setAddEducation() async {
    var pref = await SharedPreferences.getInstance();
    
    pref.setString("AddEducation", jsonEncode(selecetedData));
  }

  getAddEducation() async {
    var pref = await SharedPreferences.getInstance();
    var data = pref.getString('AddEducation');
    if (data != null) {
      var myData = jsonDecode(data);
      levelController.text = myData['level'];
      insituteController.text = myData['insitute'];
      startingController.text = myData['starting'];
      endingController.text = myData['ending'];
      detailsController.text = myData['details'];
      // roleController.text = myData['role'];
    }
  }

  @override
  void initState() {
    super.initState();
    getAddEducation();
  }

  List selecetedData = [];

  @override
  Widget build(BuildContext context) {
    var Size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff6B59D3),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          if (levelController.text.isEmpty) {
            snack(context, "Please Enter the Level");
          } else if (insituteController.text.isEmpty) {
            snack(context, "Please enter the Name");
          } else if (startingController.text.isEmpty) {
            snack(context, "Please enter the Email");
          } else if (endingController.text.isEmpty) {
            snack(context, "Please Enter the Phone Number");
          } else if (detailsController.text.isEmpty) {
            snack(context, "Please Enter the Role Play");
          } else {
            var data = {
              "level": levelController.text,
              "insitute": insituteController.text,
              "starting": startingController.text,
              "ending": endingController.text,
              "details": detailsController.text,
            };
            selecetedData.add(data);
            // levelController.clear();
            // insituteController.clear();
            // startingController.clear();
            // endingController.clear();
            // detailsController.clear();
            setState(() {});
          }
        },
      ),
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
                      //3line cont...
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
                          color: Colors.black12,
                          // color: Color(0xff6B59D3),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        height: 50,
                        width: 50,
                      ),
                      Container(
                        height: 3,
                        width: 50,
                        color: Colors.black12,
                        // color: Color(0xff6B59D3),
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
                      "ADD EDUCATION",
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
                        "Level",
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
                  //2colum text
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Insitute",
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
                          controller: insituteController,
                          decoration:
                              InputDecoration(border: OutlineInputBorder()),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  //3colum text
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Starting",
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
                          controller: startingController,
                          decoration:
                              InputDecoration(border: OutlineInputBorder()),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 30,
                  ),

                  //4colum text.
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Ending",
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
                          controller: endingController,
                          decoration:
                              InputDecoration(border: OutlineInputBorder()),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 30,
                  ),
                  //5colum text..

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Details",
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
                          controller: detailsController,
                          decoration:
                              InputDecoration(border: OutlineInputBorder()),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 30,
                  ),
                  // sie nahi ...fazool ...
                  // Container(
                  //   width: 90,
                  //   height: 50,
                  //   color: Color(0xff6B59D3),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.center,
                  //     children: [
                  //       Text(
                  //         "Next",
                  //         style: TextStyle(color: Colors.white, fontSize: 15),
                  //       ),
                  //       SizedBox(
                  //         width: 5,
                  //       ),
                  //       Icon(
                  //         Icons.arrow_forward,
                  //         color: Colors.white,
                  //         size: 15,
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  //row last button..
                  Container(
                    // color: Colors.red,
                    width: Size.width * .50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // contai butt...1...
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            width: 130,
                            height: 50,
                            color: Color(0xffC1C1C1),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.arrow_back,
                                  color: Colors.white,
                                  size: 15,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "back",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                        ),

                        InkWell(
                          onTap: () {
                            if (levelController.text.isEmpty) {
                              snack(context, "Please Enter the Level");
                            } else if (insituteController.text.isEmpty) {
                              snack(context, "Please enter the Name");
                            } else if (startingController.text.isEmpty) {
                              snack(context, "Please enter the Email");
                            } else if (endingController.text.isEmpty) {
                              snack(context, "Please Enter the Phone Number");
                            } else if (detailsController.text.isEmpty) {
                              snack(context, "Please Enter the Role Play");
                            }
                             else {
                            setAddEducation();
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                  builder: (context) => Skills(),
                                ));
                            }
                          },
                          child: Container(
                            width: 130,
                            height: 50,
                            color: Color(0xff6B59D3),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Next",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                  size: 15,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                 
               
                  DataTable(
                      headingTextStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                      columns: [
                        DataColumn(label: Text("Level")),
                        DataColumn(label: Text("Insitute")),
                        DataColumn(label: Text("Starting")),
                        DataColumn(label: Text("Ending")),
                        DataColumn(label: Text("Details")),
                        DataColumn(label: Text("Remove")),
                      ],
                      rows: [
                        for (int i = 0; i < selecetedData.length; i++)
                          DataRow(cells: [
                            DataCell(Text("${selecetedData[i]["level"]}")),
                            DataCell(Text("${selecetedData[i]["insitute"]}")),
                            DataCell(Text("${selecetedData[i]["starting"]}")),
                            DataCell(Text("${selecetedData[i]["ending"]}")),
                            DataCell(Text("${selecetedData[i]["details"]}")),
                            DataCell(IconButton(
                              onPressed: () {
                                selecetedData.removeAt(i);
                                setState(() {
                                  
                                });

                              },
                              icon: Icon(Icons.delete, color: Colors.red),
                            )),
                          ]),
                      ]),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
