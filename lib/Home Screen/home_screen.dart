import 'package:final_exam_core/Utils/colour.dart';
import 'package:final_exam_core/Utils/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
          "Home Screen",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                click = !click;
              });
            },
            icon: (click)
                ? const Icon(
                    Icons.grid_view,
                    size: 30,
                  )
                : const Icon(
                    Icons.list,
                    size: 30,
                  ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              ...List.generate(
                studentData[0]['name'].length,
                (index) => mainBox(
                    studentData[0]["img"][index],
                    studentData[0]["name"][index],
                    studentData[0]["grid"][index],
                    index),
              ),
              ...List.generate(
                nameList.length,
                (index) => mainBox(imgList[index], nameList[index],
                    gridList[index + 1], index),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context).pushNamed('add'),
        backgroundColor: appBarColor,
        child: Icon(
          Icons.add,
          size: 30,
          color: bgColor,
        ),
      ),
    );
  }

  Widget mainBox(
    String i1,
    String n1,
    int sn1,
    int index,
  ) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 80,
        width: 400,
        decoration: BoxDecoration(
            color: subBgColor,
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [
              BoxShadow(color: Colors.black26, spreadRadius: 0.5, blurRadius: 5)
            ]),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: CircleAvatar(
                backgroundImage: AssetImage(i1),
                radius: 33,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    n1,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: txtColor),
                  ),
                  Text(
                    "$sn1",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: subTxtColor),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                title: Text(nameList[index]),
                              ));
                    },
                    icon: Icon(
                      Icons.edit_outlined,
                      size: 30,
                      color: txtColor,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        imgList.removeAt(index);
                        nameList.removeAt(index);
                        gridList.removeAt(index);
                      });
                    },
                    icon: const Icon(
                      Icons.delete_forever_outlined,
                      color: Colors.red,
                      size: 30,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

bool click = true;
