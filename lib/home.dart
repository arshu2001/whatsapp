import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 29, 135, 86),
        actions: [
          Icon(Icons.camera_alt_outlined,color: Colors.white,),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Icon(Icons.search,color: Colors.white,),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Icon(Icons.more_vert,color: Colors.white,),
          ),
        ],
        title: Text('WhatsApp',style: TextStyle(fontSize: 20,color: Colors.white),),
      ),
      body: Column(
        children: [
          Container(
            height: 30,
            color: Color.fromARGB(255, 29, 135, 86),
            child: Row(

              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Icon(Icons.groups_3_rounded,color: Colors.white),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Text('Chats',style: TextStyle(color: Colors.white)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Container(
                    height: 20,
                    width: 20,

                    child: Center(child: Text('27',style: TextStyle(color: Colors.green,fontSize: 10),)),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.white,),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Text('Update',style: TextStyle(color: Colors.white)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Text('Call',style: TextStyle(color: Colors.white)),
                )
              ],
            ),

          ),
          Expanded(
            child: ListView.separated(
              itemCount: 6,
              separatorBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.only(right: 15,left: 15),
                  child: Divider(),
                );
              },
              itemBuilder: (context,index){
                return ListTile(
                  title: Text('Black'),
                  subtitle: Text('oversized tshirt size XS'),
                  leading: CircleAvatar(backgroundImage: NetworkImage('https://images.pexels.com/photos/236047/pexels-photo-236047.jpeg?cs=srgb&dl=clouds-cloudy-countryside-236047.jpg&fm=jpg'),),
                  trailing: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('17.01.2024'),
                      Container(

                        child: Padding(
                          padding: const EdgeInsets.only(left: 4,right: 4),
                          child: Text('5'),
                        ),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.green),

                      )
                    ],
                  ),


                );
              },

            ),
          )
        ],
      ),
    );
  }
}
