import 'package:flutter/material.dart';

//It works now just pick it don't touch it
// ignore: must_be_immutable
class Droplist extends StatelessWidget {
  Droplist({super.key});
  final TextEditingController _controller = TextEditingController();
  var items = [
    'Male',
    'Female',
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Drop List Example',
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[100],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Expanded(child: TextField(controller: _controller)),
                      PopupMenuButton(
                        icon: const Icon(Icons.arrow_drop_down),
                        onSelected: (String value) {
                          _controller.text = value;
                        },
                        itemBuilder: (BuildContext context) {
                          return items
                              .map<PopupMenuItem<String>>((String value) {
                            return PopupMenuItem(
                                value: value, child: Text(value));
                          }).toList();
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
