import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class DashboardOne extends StatefulWidget {
  @override
  _DashboardOneState createState() => _DashboardOneState();
}

class _DashboardOneState extends State<DashboardOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [Padding(
          padding: const EdgeInsets.all(10.0),
          child: Icon(Icons.notifications_active_outlined),
        ),],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              overflow: Overflow.visible,
              children: [
                Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80),bottomRight: Radius.circular(80)),
                    gradient: LinearGradient(
                      colors: [
                        Colors.blue,
                        Colors.indigo,
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 100,
                  left: 30,
                                  child: Container(
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 40,
                    backgroundImage: NetworkImage("https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Charlotte",style: TextStyle(fontSize: 28,color: Colors.white),),
                      Text("Software Developers,Nepal",style: TextStyle(fontSize: 18,color: Colors.white),)
                    ],
                    
                  ),
                  ],
                                      
                  ),
                  ),
                 
                ),
              Positioned(
                top: 200,
                left: 25,
                              child: Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width-50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ),
                    color: Colors.white,
                    boxShadow:[
                      BoxShadow(
                        color: Colors.grey.shade300,
                        offset: Offset(0,10),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20,20,20,20),
                        child: RichText(text: 
                        TextSpan(
                          children: [
                            TextSpan(text: "My Balance: ",style: TextStyle(fontSize: 20,color: Colors.grey),
                            ),
                            TextSpan(text: "\$1000",style: TextStyle(fontSize: 20,color: Colors.blue,fontWeight: FontWeight.w600),
                            ),
                          ],  
                        ),),
                      ),
                      Divider(
                        thickness: 2,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children:[
                          Container(
                            child: Column(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.grey.shade100,
                                  radius: 20,
                                  child: Icon(FontAwesome.truck,color: Colors.blue,),),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text("Drop-off"),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.grey.shade100,
                                  radius: 20,
                                  child: Icon(FontAwesome.pie_chart,color: Colors.blue,),),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text("Pickup"),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.grey.shade100,
                                  radius: 20,
                                  child: Icon(FontAwesome.shopping_bag,color: Colors.blue,),),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text("Shop"),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.grey.shade100,
                                  radius: 20,
                                  child: Icon(FontAwesome.toggle_up,color: Colors.blue,),),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text("Top-up"),
                              ],
                            ),
                          ),
                          
                        ],
                      ),

                    ],
                  ),
                ),
                
              ),
              
              Positioned(
                top: 420,
                left: 20,
                              child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      ListTile(
                        title: Text("Explore Olio Life",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text("Discover more things and Grab offers"),
                        trailing: Padding(
                          padding: const EdgeInsets.only(right:20.0),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              
                              borderRadius: BorderRadius.circular(26),
                              
                              gradient: LinearGradient(colors:[
                                Colors.blue,
                                Colors.indigo,
                              ],
                              )
                            ),
                            child: Text("View All",style: TextStyle(
                              color: Colors.white,
                            ),),
                          ),
                        ),
                        ),
                      
                    ],
                  ),
                ),
              ),
              ],

            ),
          ],
        ),
      ),
      
    );
  }
}