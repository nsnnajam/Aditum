import 'dart:convert';
import 'dart:math';

import 'package:aditum/widget/wigt.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'dumyjason.dart';

class SearchSecreen extends StatefulWidget {
  SearchSecreen({
    Key? key,
  }) : super(key: key);
  // late int index;

  @override
  _SearchSecreenState createState() => _SearchSecreenState();
}

class _SearchSecreenState extends State<SearchSecreen> {
  var name;
  TextEditingController namecontroller = TextEditingController();

  Future<Dumy> getProductsApi() async {
    final response =
        await http.get(Uri.parse('https://dummyjson.com/users/search?q=$name'));
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
        title: const Text('Search Users'),
      ),
      body: Column(
        children: [
          TextFormField(
            controller: namecontroller,
            decoration: const InputDecoration(labelText: "Search user"),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  try {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        });
                    name = namecontroller.text;

                    Navigator.of(context).pop();
                  } catch (e) {
                    print(e);
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("first enter name")));
                  }
                });
              },
              child: Text("submit")),
          Expanded(
            child: FutureBuilder<Dumy>(
              future: getProductsApi(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  // var data = snapshot.data!.users![widget.index];
                  // var companydata = snapshot.data!.users![widget.index];

                  // return Column(
                  //   mainAxisAlignment: MainAxisAlignment.start,
                  //   crossAxisAlignment: CrossAxisAlignment.start,
                  //   children: [
                  //     Padding(
                  //       padding: const EdgeInsets.all(8.0),
                  //       child: recomendcard(
                  //           snapshot.data!.users![widget.index].firstName
                  //               .toString(),
                  //           data.university,
                  //           data.company.department,
                  //           data.domain,
                  //           data.image.toString()),
                  //     ),
                  //     ListTile(
                  //       title: Text("Blood Group:${data.bloodGroup}"),
                  //       subtitle: Text("${data.gender}"),
                  //       trailing: Text("Age:${data.age}"),
                  //     ),
                  //     ListTile(
                  //       title: Text("City:${data.address.city}"),
                  //       subtitle: Text("State:${data.address.state}"),
                  //       trailing:
                  //           Text("Postal code:${data.address.postalCode}"),
                  //     ),
                  //     ListTile(
                  //       title: Text("Card:${data.bank.cardType}"),
                  //       subtitle: Text("No:${data.bank.cardNumber}"),
                  //       trailing: Text("Currency:${data.bank.currency}"),
                  //     ),
                  //     ListTile(
                  //       title: Text("${data.eyeColor}"),
                  //       subtitle: Text("Hair color:${data.hair.color}"),
                  //       trailing: Text("${data.hair.type}"),
                  //     ),
                  //     ListTile(
                  //       title: Text("Email:${data.email}"),
                  //       subtitle: Text("No:${data.phone}"),
                  //     ),
                  //     ListTile(
                  //       title: Text("Compnay:${data.company.name}"),
                  //       subtitle: Text(data.company.title),
                  //       trailing: Text("city:${data.company.address.city}"),
                  //     ),
                  //   ],
                  // );

                  return ListView.builder(
                      itemCount: snapshot.data!.users!.length,
                      itemBuilder: (context, index) {
                        var data = snapshot.data!.users![index];
                        var companydata = snapshot.data!.users![index];

                        return Column(
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
                        );
                      });
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

List<Dumy> userList = [];

Future<List<Dumy>> getUserApi() async {
  final response =
      await http.get(Uri.parse('https://dummyjson.com/users?limit=100'));
  var data = jsonDecode(response.body.toString());
  if (response.statusCode == 200) {
    print("data loaded");
    for (var i in data) {
      userList.add(Dumy.fromJson(i));
    }
    return userList;
  } else {
    return userList;
  }
}

class ExampleThree extends StatefulWidget {
  const ExampleThree({Key? key}) : super(key: key);

  @override
  _ExampleThreeState createState() => _ExampleThreeState();
}

class _ExampleThreeState extends State<ExampleThree> {
  @override
  Widget build(BuildContext context) {
    print('hello');
    print(userList);

    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            ListTile(
              onTap: () {
                // Navigator.of(context)
                //     .push(MaterialPageRoute(builder: (context) => HttpClass()));
              },
              title: Text("Fake Api"),
            ),
            ListTile(
              onTap: () {
                //   Navigator.of(context).push(MaterialPageRoute(
                //       builder: (context) => LastExampleScreen()));
              },
              title: Text("DumyJason Api"),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text('Api Course'),
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
              future: getUserApi(),
              builder: (context, AsyncSnapshot<List<Dumy>> snapshot) {
                if (!snapshot.hasData) {
                  return Center(child: CircularProgressIndicator());
                } else {
                  return ListView.builder(
                      itemCount: userList.length,
                      itemBuilder: (context, index) {
                        var data = snapshot.data![2].users[index];
                        return GestureDetector(
                          onTap: () {},
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  ListTile(
                                    title: Text(data.phone),
                                    trailing: Image.network(data.image),
                                    subtitle: Text(data.firstName)
                                    //         .toString()),
                                    ,
                                  ),
                                  ListTile(
                                    title: Text(
                                        userList[0].users[index].firstName),
                                    subtitle: Text(snapshot
                                        .data![1].users[1].firstName
                                        .toString()),
                                  ),
                                  // ReusbaleRow(
                                  //     title: 'Name',
                                  //     value: snapshot.data![index].title
                                  //         .toString()),

                                  //         ReusbaleRow(
                                  //     title: 'Address',
                                  //     value: snapshot.data![index].brand
                                  //         .toString()),
                                  //         ReusbaleRow(
                                  //     title: 'Address',
                                  //     value: snapshot.data![index].description
                                  //         .toString()),
                                ],
                              ),
                            ),
                          ),
                        );
                      });
                }
              },
            ),
          )
        ],
      ),
    );
  }
}

class ReusbaleRow extends StatelessWidget {
  String title, value;
  ReusbaleRow({Key? key, required this.title, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(value),
        ],
      ),
    );
  }
}
