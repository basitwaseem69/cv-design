import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_cv/add_education.dart';
import 'package:task_cv/add_experience.dart';
import 'package:task_cv/widget.dart';

class Skills extends StatefulWidget {
  @override
  State<Skills> createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  var nameController = TextEditingController();

  var levelController = TextEditingController();

  setSkills() async {
    var pref = await SharedPreferences.getInstance();

    pref.setString("Skills", jsonEncode(skillSelectedData));
  }

  getSkills() async {
    var pref = await SharedPreferences.getInstance();
    var data = pref.getString("Skills");
    if (data != null) {
      var myData = jsonDecode(data);
      nameController.text = myData['name'];
      levelController.text = myData['level'];
    }
  }

  @override
  void initState() {
    super.initState();
    getSkills();
  }

  var skillSelectedData = [];
  @override
  Widget build(BuildContext context) {
    var Size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff6B59D3),
      // floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            if (nameController.text.isEmpty) {
              snack(context, "Please Enter the Name");
            } else if (levelController.text.isEmpty) {
              snack(context, "Please Enter the Level");
            } else {
              var data = {
                "name": nameController.text,
                "level": levelController.text,
              };
              skillSelectedData.add(data);
            }
            setState(() {});
          }),
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
        const          SizedBox(
                    height: 40,
                  ),
      const            Center(
                    child: Text(
                      "SKILLS",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
          const        SizedBox(
                    height: 40,
                  ),
                  //1col txtf
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [const
                      Text(
                        "NAME",
                        style: TextStyle(
                            color: Colors.black12,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
       const               SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: Size.width * .50,
                        //wrap kiya Textfeild container mai...
                        child: TextField(
                          controller: nameController,
                          decoration:
                              InputDecoration(border: OutlineInputBorder()),
                        ),
                      ),
                    ],
                  ),
       const           SizedBox(
                    height: 30,
                  ),
                  //2colum text
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [const
                      Text(
                        "LEVEL",
                        style: TextStyle(
                            color: Colors.black12,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
              const        SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: Size.width * .50,
                        //wrap kiya Textfeild container mai...
                        child: TextField(
                          controller: levelController,
                          decoration:
                          const    InputDecoration(border: OutlineInputBorder()),
                        ),
                      ),
                    ],
                  ),
                  // SizedBox(
                  //   height: 30,
                  // ),

                  SizedBox(
                    height: 30,
                  ),

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
                              children:const [
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
                        // contai butt...1...
                        InkWell(
                          onTap: () {
                            if (skillSelectedData.isEmpty) {
                              snack(context, "Please Enter Skills Data!");
                            } else {
                              setSkills();
                              Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                    builder: (context) => AddExperience(),
                                  ));
                            }
                          },
                          child: Container(
                            width: 130,
                            height: 50,
                            color: Color(0xff6B59D3),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:const [
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
        const          SizedBox(
                    height: 30,
                  ),
                  //datatable/....
                  Container(
                    color: Color.fromARGB(255, 190, 190, 190),
                    width: Size.width * 0.50,
                    child: DataTable(
                        headingTextStyle:const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                        // headingRowHeight: 20,
                        columns:const [
                          DataColumn(label: Text("Name")),
                          DataColumn(label: Text("Level")),
                          DataColumn(label: Text("Remove")),
                         
                        ],
                        rows: [
                          for (int i = 0; i < skillSelectedData.length; i++)
                            DataRow(cells: [
                              DataCell(Text("${skillSelectedData[i]["name"]}")),
                              DataCell(
                                  Text("${skillSelectedData[i]["level"]}")),
                              DataCell(IconButton(
                                onPressed: () {
                                  skillSelectedData.removeAt(i);
                                  setState(() {});
                                },
                                icon: Icon(Icons.delete, color: Colors.red),
                              )),
                              // DataCell(Icon(Icons.delete,color: Colors.red,)),
                              // DataCell(Text("0.5 percent")),
                            ]),
                        ]),
                  ),
                  //yai extra work hai...........
                  // Align(
                  //   alignment: Alignment.centerRight,
                  //   child: FloatingActionButton(

                  //           child: Icon(Icons.add),
                  //           onPressed: () {
                  //             if (nameController.text.isEmpty) {
                  //               snack(context, "Please Enter the Name");
                  //             } else if (levelController.text.isEmpty) {
                  //               snack(context, "Please Enter the Level");
                  //             } else {
                  //               var data = {
                  //                 "name": nameController.text,
                  //                 "level": levelController.text,
                  //               };
                  //               skillSelectedData.add(data);
                  //             }
                  //          setState(() {

                  //          });

                  //           }),
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
   
   
    );
  }
}
