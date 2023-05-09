import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitch = false;
  bool? isCheckbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn Flutter'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
            onPressed: () {
              debugPrint('Actions');
            },
            icon: const Icon(
              Icons.info_outline,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/most-famous-paintings-2.jpg'),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.black,
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              color: Colors.blueGrey,
              width: double.infinity,
              child: const Center(
                child: Text('This is a text widget',
                    style: TextStyle(color: Colors.white)),
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: isSwitch ? Colors.green : Colors.blue,
                ),
                onPressed: () {
                  debugPrint('Elevated Button');
                },
                child: const Text('Elevated Button')),
            OutlinedButton(
                onPressed: () {
                  debugPrint('Outlined Button');
                },
                child: const Text('Outlined Button')),
            TextButton(
                onPressed: () {
                  debugPrint('Text Button');
                },
                child: const Text('Text Button')),
            GestureDetector(
              // can click anywhere in this area
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint('This is the row');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.local_fire_department_rounded,
                    color: Colors.red,
                  ),
                  Text('1st widget'),
                  Icon(
                    Icons.local_fire_department_rounded,
                    color: Colors.yellow,
                  ),
                  Text('2nd widget'),
                ],
              ),
            ),
            Switch(
                value: isSwitch,
                onChanged: (bool newBool) {
                  setState(() {
                    isSwitch = newBool;
                  });
                }),
            Checkbox(
                value: isCheckbox,
                onChanged: (bool? newBool) {
                  setState(() {
                    isCheckbox = newBool;
                  });
                }),
            Image.network(
                'https://images.unsplash.com/photo-1598124146163-36819847286d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80')
          ],
        ),
      ),
    );
  }
}
