import 'dart:math';

import 'package:flutter/material.dart';
import 'package:quote_app_daily_task/qutos/home/qutos.dart';
import 'package:quote_app_daily_task/utils/global.dart';

QuotesModel? quotesModel;

bool ch = false;

class HomePage2 extends StatefulWidget {
  const HomePage2({super.key});

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'Quotes',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.black,
          ),
        ),
        actions: [
          ActionChip(
            label: Text(''),
            // backgroundColor: Colors.black,
            side: BorderSide(color: Colors.white),
            avatar: Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Icon(
                ch ? Icons.list : Icons.grid_view_outlined,
                size: 30,
                color: Colors.black,
              ),
            ),
            onPressed: () {
              setState(() {
                ch = !ch;
              });
            },
          )
        ],
      ),
      body: (ch)?GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 9 / 8),
        itemBuilder: (context, index) => Card(
          color: colorList[index % colorList.length],
          child: ListTile(
            title: Text(quotesModel!.QuotesList[index].quote!),
            subtitle: Text('-${quotesModel!.QuotesList[index].author!}',style: TextStyle(fontWeight: FontWeight.bold)),
          ),
        ),
      ): ListView.builder(
        itemBuilder: (context, index) => Card(
          color: colorList[index % colorList.length],
          child: ListTile(
            title: Text(quotesModel!.QuotesList[index].quote!),
            subtitle: Text('-${quotesModel!.QuotesList[index].author!}',style: TextStyle(fontWeight: FontWeight.bold),),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Random random = Random();
          int x = random.nextInt(quotesModel!.QuotesList.length);
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              backgroundColor: colorList[x % colorList.length],
              title: Text(
                '${quotesModel!.QuotesList[x].author}',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              content: Text(
                quotesModel!.QuotesList[x].quote,
                style: TextStyle(fontSize: 20),
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    'Continue',
                    style: TextStyle(color: Colors.black87, fontSize: 20),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    'Back',
                    style: TextStyle(color: Colors.black87, fontSize: 20),
                  ),
                ),
              ],
            ),
          );
        },
        child: Icon(Icons.notification_add),
      ),
    );
  }
}
