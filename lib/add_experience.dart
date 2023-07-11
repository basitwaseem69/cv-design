import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_cv/add_education.dart';
import 'package:task_cv/cvscreen.dart';
import 'package:task_cv/widget.dart';

class AddExperience extends StatefulWidget {
  @override
  State<AddExperience> createState() => _AddExperienceState();
}

class _AddExperienceState extends State<AddExperience> {
  var nCompanyController = TextEditingController();

  var designationController = TextEditingController();

  var descriptionController = TextEditingController();

  var jobController = TextEditingController();

  setAddExperience() async {
    var pref = await SharedPreferences.getInstance();

    pref.setString('AddExperience', jsonEncode(selecetedData));
  }

  getAddExperience() async {
    var pref = await SharedPreferences.getInstance();
    var data = pref.getString("AddExperience");
    if (data != null) {
      var myData = jsonDecode(data);
      nCompanyController.text = myData['nCompany'];
      designationController.text = myData['designation'];
      descriptionController.text = myData['description'];
      jobController.text = myData['jobRole'];
    }
  }

  @override
  void initState() {
    super.initState();
    getAddExperience();
  }

  List selecetedData = [];

  @override
  Widget build(BuildContext context) {
    var Size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff6B59D3),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (nCompanyController.text.isEmpty) {
            snack(context, 'Please Enter the Name');
          } else if (designationController.text.isEmpty) {
            snack(context, 'Please Enter the Designation');
          } else if (nCompanyController.text.isEmpty) {
            snack(context, 'Please Enter the Description');
          } else if (jobController.text.isEmpty) {
            snack(context, 'Please Enter the Job Role');
          } else {
            setState(() {
              var data = {
                "nCompany": nCompanyController.text,
                "designation": designationController.text,
                "description": descriptionController.text,
                "jobRole": jobController.text,
              };
              selecetedData.add(data);
            });
          }
        },
        child: Icon(Icons.add),
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
                          // color: Colors.black12,
                          color: Color(0xff6B59D3),
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
                      "ADD EXPERIENCE",
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
                        "NAME OF COMPANY",
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
                          controller: nCompanyController,
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
                        "DESIGNATION",
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
                          controller: designationController,
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
                        "DESCRIPTION",
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
                          controller: descriptionController,
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
                        "JOB ROLE",
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
                          controller: jobController,
                          decoration:
                              InputDecoration(border: OutlineInputBorder()),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 30,
                  ),

                  //row last button..
                  Container(
                    // color: Colors.red,
                    width: Size.width * .50,
                    //row ko container mai wrap kiya
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
                        //2.
                        InkWell(
                          onTap: () {
                            if (selecetedData.isEmpty) {
                              snack(context, 'Please Enter Data');
                            } else {
                              setAddExperience();
                              Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (context) => Cv()));
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
                                  "Done",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                                // SizedBox(width: 5,),
                                // Icon(Icons.arrow_forward,color: Colors.white,size: 15,),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  DataTable(columns: [
                    DataColumn(label: Text("Company")),
                    DataColumn(label: Text("Designation")),
                    DataColumn(label: Text("Description")),
                    DataColumn(label: Text("Role")),
                    DataColumn(label: Text("Remove")),
                  ], rows: [
                    // for(var item in selecetedData)
                    for (int i = 0; i < selecetedData.length; i++)
                      DataRow(cells: [
                        DataCell(
                          Text("${selecetedData[i]["nCompany"]}"),
                        ),
                        DataCell(Text("${selecetedData[i]["designation"]}")),
                        DataCell(Text(selecetedData[i]["description"])),
                        DataCell(Text(selecetedData[i]["jobRole"])),
                        DataCell(IconButton(
                            onPressed: () {
                              selecetedData.removeAt(i);
                              setState(() {});
                            },
                            icon: Icon(
                              Icons.delete,
                              color: Colors.red,
                            )))
                      ])
                  ])
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
