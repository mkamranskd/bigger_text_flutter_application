import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'BiggerTextColor'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _textEditingController = TextEditingController();
  Color _textColor = Colors.white;
  Color? _selectedColor = Colors.white;
  int _textRotation = 0; // Define _textRotation here

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Focus the text field when upper text is tapped
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: <Widget>[
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: FittedBox(

                      child: RotatedBox(
                        quarterTurns: _textRotation,
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text(
                            _textEditingController.text,
                            style: TextStyle(color: _textColor),
                            textAlign: TextAlign.center, // Align the text to center
                            maxLines: null, // Enable multiple lines
                          )

                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.blue), // Bottom border
                    top: BorderSide(color: Colors.blue), // Top border
                  ),
                ),
                child: TextField(
                  style: const TextStyle(color: Colors.white),
                  controller: _textEditingController,
                  onSubmitted: (text) {
                    setState(() {
                      _textEditingController.text = text;
                    });
                  },
                  decoration: InputDecoration(
                    hintText: 'Enter Text',
                    hintStyle: const TextStyle(color: Colors.grey),
                    contentPadding: const EdgeInsets.fromLTRB(20, 15, 0, 0), // Adjusted content padding
                    prefixIcon: const Icon(Icons.edit, color: Colors.white),
                    suffixIcon: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.clear, color: Colors.red), // Red cross icon
                          onPressed: () {
                            setState(() {
                              _textEditingController.clear(); // Clear text field
                              _textColor = Colors.white; // Reset text color to white
                              _selectedColor = Colors.white; // Reset selected color
                            });
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.rotate_left, color: Colors.green), // Icon to change orientation
                          onPressed: () {
                            setState(() {
                              _textRotation = (_textRotation - 1) % 4; // Rotate text counter-clockwise
                            });
                          },
                        ),
                        SizedBox(
                          width: 50, // Set the width as per your requirement
                          child: DropdownButton<Color>(
                            value: _selectedColor,
                            onChanged: (color) {
                              setState(() {
                                _textColor = color!;
                                _selectedColor = color;
                              });
                            },
                            icon: const Center(child: Icon(Icons.arrow_drop_down, color: Colors.black)),
                            underline: Container(),
                            items: [
                              const DropdownMenuItem<Color>(
                                value: Colors.white,
                                child: Center(
                                  child: SizedBox(
                                    width: 25,
                                    height: 25,
                                    child: CircleAvatar(backgroundColor: Colors.white),
                                  ),
                                ),
                              ),
                              const DropdownMenuItem<Color>(
                                value: Colors.blue,
                                child: Center(
                                  child: SizedBox(
                                    width: 25,
                                    height: 25,
                                    child: CircleAvatar(backgroundColor: Colors.blue),
                                  ),
                                ),
                              ),
                              DropdownMenuItem<Color>(
                                value: Colors.grey[200],
                                child: Center(
                                  child: SizedBox(
                                    width: 25,
                                    height: 25,
                                    child: CircleAvatar(backgroundColor: Colors.grey[200]),
                                  ),
                                ),
                              ),
                              DropdownMenuItem<Color>(
                                value: Colors.grey[800],
                                child: Center(
                                  child: SizedBox(
                                    width: 25,
                                    height: 25,
                                    child: CircleAvatar(backgroundColor: Colors.grey[800]),
                                  ),
                                ),
                              ),
                              // Additional colors
                              const DropdownMenuItem<Color>(
                                value: Colors.teal,
                                child: Center(
                                  child: SizedBox(
                                    width: 25,
                                    height: 25,
                                    child: CircleAvatar(backgroundColor: Colors.teal),
                                  ),
                                ),
                              ),
                              DropdownMenuItem<Color>(
                                value: Colors.blue[900],
                                child: Center(
                                  child: SizedBox(
                                    width: 25,
                                    height: 25,
                                    child: CircleAvatar(backgroundColor: Colors.blue[900]),
                                  ),
                                ),
                              ),
                              const DropdownMenuItem<Color>(
                                value: Colors.green,
                                child: Center(
                                  child: SizedBox(
                                    width: 25,
                                    height: 25,
                                    child: CircleAvatar(backgroundColor: Colors.green),
                                  ),
                                ),
                              ),
                              const DropdownMenuItem<Color>(
                                value: Colors.red,
                                child: Center(
                                  child: SizedBox(
                                    width: 25,
                                    height: 25,
                                    child: CircleAvatar(backgroundColor: Colors.red),
                                  ),
                                ),
                              ),
                              const DropdownMenuItem<Color>(
                                value: Colors.yellow,
                                child: Center(
                                  child: SizedBox(
                                    width: 25,
                                    height: 25,
                                    child: CircleAvatar(backgroundColor: Colors.yellow),
                                  ),
                                ),
                              ),
                              const DropdownMenuItem<Color>(
                                value: Colors.purple,
                                child: Center(
                                  child: SizedBox(
                                    width: 25,
                                    height: 25,
                                    child: CircleAvatar(backgroundColor: Colors.purple),
                                  ),
                                ),
                              ),
                              const DropdownMenuItem<Color>(
                                value: Colors.pink,
                                child: Center(
                                  child: SizedBox(
                                    width: 25,
                                    height: 25,
                                    child: CircleAvatar(backgroundColor: Colors.pink),
                                  ),
                                ),
                              ),
                              const DropdownMenuItem<Color>(
                                value: Colors.lightBlue,
                                child: Center(
                                  child: SizedBox(
                                    width: 25,
                                    height: 25,
                                    child: CircleAvatar(backgroundColor: Colors.lightBlue),
                                  ),
                                ),
                              ),
                              const DropdownMenuItem<Color>(
                                value: Colors.orange,
                                child: Center(
                                  child: SizedBox(
                                    width: 25,
                                    height: 25,
                                    child: CircleAvatar(backgroundColor: Colors.orange),
                                  ),
                                ),
                              ),
                              const DropdownMenuItem<Color>(
                                value: Colors.white54,
                                child: Center(
                                  child: SizedBox(
                                    width: 25,
                                    height: 25,
                                    child: CircleAvatar(backgroundColor: Colors.white54),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }
}
