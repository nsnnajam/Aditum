import 'dart:convert';
import 'dart:math';

import 'package:aditum/widget/wigt.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'model/dumyjason.dart';

class DetailsSecreen extends StatefulWidget {
  DetailsSecreen({Key? key, required this.index}) : super(key: key);
  late int index;

  @override
  _DetailsSecreenState createState() => _DetailsSecreenState();
}

class _DetailsSecreenState extends State<DetailsSecreen> {
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
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Details User'),
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder<Dumy>(
              future: getProductsApi(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  var data = snapshot.data!.users![widget.index];
                  var companydata = snapshot.data!.users![widget.index];

                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: recomendcard(
                            snapshot.data!.users![widget.index].firstName
                                .toString(),
                            data.university,
                            data.company.department,
                            data.domain,
                            data.image.toString()),
                      ),
                      ListTile(
                        title: Text("Blood Group:${data.bloodGroup}"),
                        subtitle: Text("${data.gender}"),
                        trailing: Text("Age:${data.age}"),
                      ),
                      ListTile(
                        title: Text("City:${data.address.city}"),
                        subtitle: Text("State:${data.address.state}"),
                        trailing:
                            Text("Postal code:${data.address.postalCode}"),
                      ),
                      ListTile(
                        title: Text("Card:${data.bank.cardType}"),
                        subtitle: Text("No:${data.bank.cardNumber}"),
                        trailing: Text("Currency:${data.bank.currency}"),
                      ),
                      ListTile(
                        title: Text("${data.eyeColor}"),
                        subtitle: Text("Hair color:${data.hair.color}"),
                        trailing: Text("${data.hair.type}"),
                      ),
                      ListTile(
                        title: Text("Email:${data.email}"),
                        subtitle: Text("No:${data.phone}"),
                      ),
                      ListTile(
                        title: Text("Compnay:${data.company.name}"),
                        subtitle: Text(data.company.title),
                        trailing: Text("city:${data.company.address.city}"),
                      ),
                    ],
                  );

                  // return ListView.builder(
                  //     itemCount: snapshot.data!.users!.length,
                  //     itemBuilder: (context, index) {
                  //       var data = snapshot.data!.users![index];
                  //       var companydata = snapshot.data!.users![index];

                  //       return Column(
                  //         mainAxisAlignment: MainAxisAlignment.start,
                  //         crossAxisAlignment: CrossAxisAlignment.start,
                  //         children: [
                  //           Padding(
                  //             padding: const EdgeInsets.all(8.0),
                  //             child: recomendcard(
                  //                 snapshot.data!.users![index].firstName
                  //                     .toString(),
                  //                 data.university,
                  //                 data.company.department,
                  //                 data.domain,
                  //                 data.image.toString()),
                  //           ),
                  //         ],
                  //       );
                  //     });
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
