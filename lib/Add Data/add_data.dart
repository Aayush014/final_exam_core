import 'package:final_exam_core/Utils/data.dart';
import 'package:flutter/material.dart';

import '../Utils/colour.dart';

class AddData extends StatefulWidget {
  const AddData({super.key});

  @override
  State<AddData> createState() => _AddDataState();
}

class _AddDataState extends State<AddData> {
  TextEditingController txtGRIDId = TextEditingController(text: "1000");
  TextEditingController txtName = TextEditingController(text: "Akhil Sir");
  TextEditingController txtStd = TextEditingController(text: "Faculty");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: appBarColor,
        centerTitle: true,
        leading: const Icon(
          Icons.school_outlined,
          size: 35,
        ),
        title: const Text(
          "Edit Data Screen",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
               Padding(
                padding: const EdgeInsets.only(top: 30),
                child: CircleAvatar(
                  backgroundColor: appBarColor,
                  backgroundImage: const AssetImage('Assets/img/2.png'),
                  radius: 70,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: txtGRIDId,
                  style:
                      TextStyle(color: appBarColor, fontWeight: FontWeight.bold),
                  onTapOutside: (event) {
                    FocusScope.of(context).unfocus();
                  },
                  cursorColor: appBarColor,
                  decoration: InputDecoration(
                    hintText: "Enter GRID",
                    hintStyle: TextStyle(color: appBarColor),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                          color: appBarColor,
                          width: 1.8,
                        )),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                          color: appBarColor,
                          width: 1.8,
                        )),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  style:
                      TextStyle(color: appBarColor, fontWeight: FontWeight.bold),
                  controller: txtName,
                  onTapOutside: (event) {
                    FocusScope.of(context).unfocus();
                  },
                  cursorColor: appBarColor,
                  decoration: InputDecoration(
                    hintText: "Enter Name",
                    hintStyle: TextStyle(color: appBarColor),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                          color: appBarColor,
                          width: 1.8,
                        )),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                          color: appBarColor,
                          width: 1.8,
                        )),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  style:
                      TextStyle(color: appBarColor, fontWeight: FontWeight.bold),
                  controller: txtStd,
                  onTapOutside: (event) {
                    FocusScope.of(context).unfocus();
                  },
                  cursorColor: appBarColor,
                  decoration: InputDecoration(
                    hintText: "Enter STD",
                    hintStyle: TextStyle(color: appBarColor),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                          color: appBarColor,
                          width: 1.8,
                        )),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                          color: appBarColor,
                          width: 1.8,
                        )),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      gridList.add(txtGRIDId.text);
                      nameList.add(txtName.text);
                      Navigator.of(context).pushReplacementNamed('/');
                    });
                  },
                  child: SizedBox(
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 75,
                          width: 250,
                          decoration: BoxDecoration(
                            color: appBarColor,
                            borderRadius: BorderRadius.circular(50)
                          ),
                          child: const Text("        Add ",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                        ),
                        CircleAvatar(radius: 45,backgroundColor: subTxtColor,child: const Icon(Icons.add,size: 50,),)
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
