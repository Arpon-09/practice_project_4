import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Alert extends StatelessWidget {
  const Alert({super.key});

  @override
  Widget build(BuildContext context) {

    void showAlertDialouge () {
      showDialog(context: context,
          builder: (context) => AlertDialog(
            title: Text("Warning"),
            content: Text("You Really Wanted To Back ?"),
            actions: [
              TextButton(onPressed: () {
                Navigator.pop(context);
              },
                  child: Text("Cancel")),
              TextButton(onPressed: () {},
                  child: Text("ok"))
            ],
          ));
    }

    void showSmpleDialouge () {
      showDialog(context: context,
          builder: (context) => SimpleDialog(
            title: Text("Warning"),
            children: [
              SimpleDialogOption(
                child: Text("Dark"),
              ),
              SimpleDialogOption(
                child: Text("Dark"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Enter you age ..?"),
              ),

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(),
              )



            ],
          ) );
    }

    void showSnakbar () {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Nothing here just for practice"),
        action: SnackBarAction(label: 'Undo', onPressed: () {}),
        )
      );
    }

    void showBottomBar () {
      showModalBottomSheet(context: context,
          builder: (context) => Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Choose Option"),
                ListTile(
                  title: Text("Option-1"),
                ),
                ListTile(
                  title: Text("Option-1"),
                ),
                ListTile(
                  title: Text("Option-1"),
                )
              ],
            ),
          ));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Alert"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {
              showBottomBar();
            },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                  foregroundColor: Colors.white
                ),
                child: Text("Show Alert Dialouge",
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
                )
            ),
            

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {},
      child: Icon(Icons.add),),
    );
  }
}
