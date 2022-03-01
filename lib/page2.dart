import 'package:flutter/material.dart';
// import 'package:DatabaseManager/DatabaseManager.dart';
import 'package:flutter_application/DatabaseManager/DatabaseManager.dart';
// import 'package:Services/AuthenticationService.dart';

class MyPage2 extends StatefulWidget {
  const MyPage2({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyPage2> createState() => _MyPage2State();
}

class _MyPage2State extends State<MyPage2> {
  List userProfilesList = [];

  String userID = "";

  @override
  void initState() {
    super.initState();
    // fetchUserInfo();
    fetchDatabaseList();
  }

  fetchDatabaseList() async {
    dynamic resultant = await DatabaseManager().getUsersList();

    if (resultant == null) {
      // ignore: avoid_print
      print('Unable to retrieve info');
    } else {
      setState(() {
        userProfilesList = resultant;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("More about  POPI"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: userProfilesList.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(userProfilesList[index]['name']),
                subtitle: Text(userProfilesList[index]['gender']),
                // leading: CircleAvatar(
                //   child: Image(
                //     image: AssetImage('assets/Profile_Image.png'),
                //   ),
                // ),
                trailing: Text('${userProfilesList[index]['score']}'),
              ),
            );
          }),
    );
  }
}
