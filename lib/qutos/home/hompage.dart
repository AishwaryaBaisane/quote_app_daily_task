import 'dart:math';

import 'package:flutter/material.dart';
import 'package:quote_app_daily_task/qutos/home/qutos.dart';
import 'package:quote_app_daily_task/utils/global.dart';

QuotesModel? quotesModel;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    quotesModel = QuotesModel.toList(QutoesList);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(
          'Quotes',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(
            quotesModel!.QuotesList.length,
                (index) => Card(
              color: colorList[index % colorList.length],
              child: ListTile(
                title: Text(quotesModel!.QuotesList[index].quote!),
                subtitle: Text(
                  '-${quotesModel!.QuotesList[index].author!}',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
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
                    style: TextStyle(color: Colors.black87,fontSize: 20),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    'Back',
                    style: TextStyle(color: Colors.black87,fontSize: 20),
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