import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(title: const Center(child: Text('Bakai'),),
      backgroundColor: Colors.red),
      body: Center(child: CustomTextField()),
    ),
  ));
}


class CustomTextField extends StatefulWidget {
  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  TextEditingController _controller = TextEditingController();
  bool _isEmpty = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: TextField(
        controller: _controller,
        onChanged: (value) {
          setState(() {
            _isEmpty = value.isEmpty;
          });
        },
        decoration: InputDecoration(
          hintText: 'Введите текст',
          hintStyle: const TextStyle(color: Colors.grey),
          fillColor: _isEmpty ? Colors.grey[300] : Colors.green,
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }
}