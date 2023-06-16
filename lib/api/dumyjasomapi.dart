import 'dart:convert';
import 'dart:math';

import 'package:aditum/widget/wigt.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'details_secreen.dart';
import 'model/dumyjason.dart';

class LastExampleScreen extends StatefulWidget {
  const LastExampleScreen({Key? key}) : super(key: key);

  @override
  _LastExampleScreenState createState() => _LastExampleScreenState();
}

class _LastExampleScreenState extends State<LastExampleScreen> {
  Future<Dumy> getProductsApi() async {
    final response =
        await http.get(Uri.parse('https://dummyjson.com/users?limit=100'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      return Dumy.fromJson(data);
    } else {
      return Dumy.fromJson(data);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: Text('Dumy jasson'),
      // ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder<Dumy>(
              future: getProductsApi(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                      itemCount: snapshot.data!.users!.length,
                      itemBuilder: (context, index) {
                        var data = snapshot.data!.users![index];
                        var companydata = snapshot.data!.users![index];

                        return GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  DetailsSecreen(index: index),
                            ));
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: recomendcard(
                                    snapshot.data!.users![index].firstName
                                        .toString(),
                                    data.university,
                                    data.company.department,
                                    data.domain,
                                    data.image.toString()),
                              ),
                            ],
                          ),
                        );
                      });
                } else {
                  return Text('Loading');
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
