import 'package:flutter/material.dart';
import 'package:securityapp/models/addvisit.dart';
import 'package:securityapp/services/addvisitapi.dart';

class visitview extends StatefulWidget {
  const visitview({super.key});

  @override
  State<visitview> createState() => _visitviewState();
}

class _visitviewState extends State<visitview> {

  Future<List<Security> > ? data;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data=addvisitapi().getVisitor();
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(),
          body: FutureBuilder(future: data, builder: (context,sshot){
            if(sshot.hasData && sshot.data!.isNotEmpty){
              return ListView.builder(
                  itemCount: sshot.data!.length,
                  itemBuilder: (value,index){
                    return Card(
                      child: Column(
                        children: [
                          ListTile(
                            leading: CircleAvatar(radius: 25,
                              child: Text(sshot.data![index].name.toString()[0]),),
                            title: Text("name:" +(sshot.data![index].name.toString()) ),
                            subtitle: Text("purpose :" +(sshot.data![index].purpose.toString()) + "\n" +"Phn no :" + (sshot.data![index].phnNo.toString())),

                          ),
                        ],
                      ),
                    );

                  });

            }
            else
            {
              return Text("Loading....");
            }
          })
      ),
    );
  }
}
