import 'package:flutter/material.dart';
import 'package:prakmobile_6/model/reqresuser.dart';
import 'package:prakmobile_6/viewmodel/services.dart';

class TestReqresPage extends StatefulWidget {
  const TestReqresPage({Key? key}) : super(key: key);

  @override
  State<TestReqresPage> createState() => _TestReqresPageState();
}

class _TestReqresPageState extends State<TestReqresPage> {
  ReqresUser? reqresuser;
  bool isLoading = false;
  String id = '7';
  TextEditingController idController = TextEditingController(); // Add this line

  @override
  void initState() {
    super.initState();
    isLoading = true;
    getReqresUser(id).then((value) {
      reqresuser = value;
      isLoading = false;
      setState(() {});
    });
  }

  void fetchData() {
    setState(() {
      isLoading = true;
    });
    getReqresUser(idController.text).then((value) {
      reqresuser = value;
      isLoading = false;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('reqres test', style: TextStyle(color: Colors.black)),
      ),
      body: Center(
        child: isLoading
            ? CircularProgressIndicator()
            : Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(reqresuser!.data.avatar),
                  ),
                  Text(reqresuser!.data.firstName),
                  Text(reqresuser!.data.lastName),
                  Text(reqresuser!.data.email),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: idController,
                            decoration: InputDecoration(labelText: 'User ID'),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: fetchData,
                          child: Text('Ganti Id'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
