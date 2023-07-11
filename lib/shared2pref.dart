import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class SharedPref extends StatefulWidget {
  @override
  State<SharedPref> createState() => _SharedPrefState();
}

class _SharedPrefState extends State<SharedPref> {
  // const SharedPref({super.key});
  var c=4;

  add()async{
    var sp =await SharedPreferences.getInstance();
    sp.setInt("count", ++c);
    get();
  }

  minus()async{
    var sp = await SharedPreferences.getInstance();
    sp.setInt("count", --c);
    get();
  }

  get()async{
    var sp = await SharedPreferences.getInstance();
    sp.getInt("count");
   var data = sp.getInt("count");
    if(data  != null){
     c = data;        // --> yai method isy tera likhna haiiii.................
    }
    setState(() {
      
    });
  }
  @override
  void initState() {
   
    super.initState();
    get();
   
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.pink,
        body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                  add();
                  },
                  child: Icon(
                    Icons.add,
                    size: 30,
                  )),
              SizedBox(
                width: 5,
              ),
              Text(
                "${c}",
                style: TextStyle(fontSize: 100, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 5,
              ),
              ElevatedButton(
                  onPressed: () {
                    minus();
                  },
                  child: Icon(
                    Icons.remove,
                    size: 30,
                  )),
            ],
          ),
        ],
      ),
   
    );
  }
}