import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;

  void getData() async {
    String username = await Future.delayed(Duration(seconds: 3), () {
      return 'Arafat Islam';
    });

    String bio = await Future.delayed(Duration(seconds: 2), () {
      return 'bio';
    });

    print('$username - $bio');

    print('Statement');
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
    print('second statement');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ElevatedButton(
        onPressed: () {
          // Navigator.pushNamed(context, '/');
          // Navigator.popAndPushNamed(context, '/home');
          setState(() {
            counter++;
          });
        },
        child: Text('Counter is $counter'),
      ),
    );
  }
}
