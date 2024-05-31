import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FullScreen extends StatefulWidget {
  const FullScreen({super.key});

  @override
  State<FullScreen> createState() => _FullScreenState();
}

class _FullScreenState extends State<FullScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) => Dialog(
                          insetPadding: EdgeInsets.all(10),
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Icon(
                                        Icons.highlight_remove,
                                        size: 30,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Text(
                                      'Full-screen dialog title',
                                      style: TextStyle(fontSize: 25),
                                    ),
                                    SizedBox(
                                      width: 25,
                                    ),
                                    Text(
                                      'Save',
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                SizedBox(
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelText: 'Label',
                                      labelStyle:
                                          TextStyle(color: Colors.black87),
                                      hintText: 'Input',
                                      hintStyle: TextStyle(color: Colors.black),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.black54)),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.black54, width: 2),
                                      ),
                                      suffixIcon: Icon(Icons.arrow_drop_down),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                SizedBox(
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        hintText: 'Event name',
                                        hintStyle:
                                            TextStyle(color: Colors.black87),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.black54)),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.black54,
                                                width: 2))),
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'From',
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: width * 0.5 - 35,
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          labelText: 'Label',
                                          labelStyle:
                                              TextStyle(color: Colors.black87),
                                          hintText: 'Input',
                                          hintStyle:
                                              TextStyle(color: Colors.black87),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.black54),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.black54,
                                                width: 1),
                                          ),
                                            suffixIcon:
                                            Icon(Icons.arrow_drop_down),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    SizedBox(
                                      width: width * 0.5 - 35,
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          labelText: 'Label',
                                          labelStyle:
                                              TextStyle(color: Colors.black87),
                                          hintText: 'Input',
                                          hintStyle:
                                              TextStyle(color: Colors.black87),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.black54),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.black54,
                                                width: 1),
                                          ),
                                            suffixIcon:
                                            Icon(Icons.arrow_drop_down),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'To',
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: width * 0.5 - 35,
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          labelText: 'Label',
                                          labelStyle:
                                              TextStyle(color: Colors.black87),
                                          hintText: 'Input',
                                          hintStyle:
                                              TextStyle(color: Colors.black87),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.black54),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.black54,
                                                width: 1),
                                          ),
                                            suffixIcon:
                                            Icon(Icons.arrow_drop_down),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    SizedBox(
                                      width: width * 0.5 - 35,
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          labelText: 'Label',
                                          labelStyle:
                                              TextStyle(color: Colors.black87),
                                          hintText: 'Input',
                                          hintStyle:
                                              TextStyle(color: Colors.black87),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.black54),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.black54,
                                                width: 1),
                                          ),
                                            suffixIcon:
                                            Icon(Icons.arrow_drop_down),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    child: Text(
                      'Full Screen Dialog ',
                      style: TextStyle(fontSize: 20),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
