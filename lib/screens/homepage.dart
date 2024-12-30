import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _controller = TextEditingController();
  String saveText = "";
  String savedByButton = "";

  late DatabaseReference db;

  @override
  void initState() {
    super.initState();

    db = FirebaseDatabase.instance.ref().child("data");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Add padding for better spacing
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                labelText: "Enter Text", // Label to guide the user
                border:
                    OutlineInputBorder(), // Makes the field visible with a border
              ),
            ),
            const SizedBox(height: 16), // Add spacing between widgets
            TextButton(
              onPressed: () {
                setState(() {
                  savedByButton =
                      _controller.text; // Update savedByButton with input
                });
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue, // Button background color
                foregroundColor: Colors.white, // Button text color
              ),
              child: const Text("Save Me"),
            ),
            const SizedBox(height: 16),
            Text(
              "Changed Value: $saveText",
              style: const TextStyle(fontSize: 16),
            ),
            Text(
              "Saved by Button: $savedByButton",
              style: const TextStyle(fontSize: 16),
            ),

            TextButton(
              onPressed: () {
                setState(() {
                  // Get the current time and date
                  final now = DateTime.now();
                  final formattedDate =
                      "${now.year}-${now.month}-${now.day}  ||  ${now.hour}:${now.minute}:${now.second}";
                  // Data to be saved
                  Map<String, String> data = {
                    'value': saveText,
                    'valueSaved': savedByButton,
                    'timestamp': formattedDate, // Add the timestamp
                  };

                  // Push the data to Firebase
                  db.push().set(data);
                });
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue, // Button background color
                foregroundColor: Colors.white,
              ),
              child: const Text("Save on Firebase"),
            ),

            Container(
              height: 400,
              child: StreamBuilder(
                  stream: db.onValue,
                  builder: (context, snapshot) {
                    print(snapshot.hasData);
                    print(snapshot.hasError);

                    if (snapshot.hasData) {
                      // print(snapshot.data?.snapshot.value);
                      Map data = snapshot.data?.snapshot.value as Map;
                      print(data.values);

                      return ListView.builder(
                        itemCount: data.values.length,
                        itemBuilder: (context, index) {
                          final Map value = data.values.toList()[index];
                          return Row(
                            children: [
                              Text("Index : $index,"),
                              Text("Value : ${value['value']},"),
                              Text("Value Saved : ${value['valueSaved']}"),
                            ],
                          );
                        },
                      );
                    }

                    return Text("Data");
                  }),
            )
          ],
        ),
      ),
    );
  }
}
