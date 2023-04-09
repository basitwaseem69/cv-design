import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Share extends StatefulWidget {
  @override
  State<Share> createState() => _ShareState();
}

class _ShareState extends State<Share> {
// var c=1;

//    set()async{
//     var sp= await SharedPreferences.getInstance();
//     // c = c+1;
//     sp.setInt("count", ++c);
//     get();

//   }
//   remove()async{
//     var sp = await SharedPreferences.getInstance();
//     sp.setInt("count", --c);
//     get();
//   }

//   get()async{
//     var sp = await SharedPreferences.getInstance();
//     sp.getInt("count");
//     var data = sp.getInt("count");
//     if (data != null) {
//       c = data;
//       setState(() {

//       });
//     }
//     print(data);

//   }

// @override
//   void initState() {
//     super.initState();
//     get();
//   }
// again practise function.........

// var c=0;
// add()async{
//   var sp = await SharedPreferences.getInstance();
//   sp.setInt("count", ++c);
//   get();
// }
// remove()async{
//   var sp = await SharedPreferences.getInstance();
//   sp.setInt("count", c=c-9);
//   get();
// }

//   get()async{
//     var sp = await SharedPreferences.getInstance();
//     sp.getInt("count");
//     var data = sp.getInt("count");
//     if(data != null){
//       c = data;
//       setState(() {

//       });
//       print(data);
//     }
//   }
//   @override
//   void initState() {

//     super.initState();
//     get();
//   }
// again 2 practise sharedprefferences function.........
  var i = 5;
  add() async {
    var sp = await SharedPreferences.getInstance();
    sp.setInt("click", ++i);
    get();
  }

  minus() async {
    var sp = await SharedPreferences.getInstance();
    sp.setInt("click", i = i - 10);
    get();
  }

  get() async {
    var sp = await SharedPreferences.getInstance();
    sp.getInt("click");
    var data = sp.getInt("click");
    if (data != null) {
      i = data;
      setState(() {});
    }
  }

  @override
  void initState() {
    super.initState();
    get();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                "$i",
                style: TextStyle(fontSize: 100, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 5,
              ),
              ElevatedButton(
                  onPressed: () {
                    // remove();
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
