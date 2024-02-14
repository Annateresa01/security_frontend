import 'package:flutter/material.dart';
import 'package:securityapp/models/addsec.dart';
import 'package:securityapp/services/addsecapi.dart';

class secviewmenu extends StatefulWidget {
  const secviewmenu({super.key});

  @override
  State<secviewmenu> createState() => _secviewmenuState();
}

class _secviewmenuState extends State<secviewmenu> {

  Future<List<Admin> > ? data;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data=addsecapi().getSec();
  }
  Widget build(BuildContext context) {
    return  FutureBuilder(future: data, builder: (context,sshot){
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
                            subtitle: Text("empID :" +(sshot.data![index].empId.toString()) + "\n" +"Adress :" + (sshot.data![index].adrs.toString())+"\n"+"phone no " + (sshot.data![index].phnNo.toString())+"\n"+"emailId " + (sshot.data![index].emailId.toString()),),

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
          });

  }
}
