import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'Home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4, child: Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text('Whatsapp'),
        backgroundColor: Colors.teal,
        bottom: const TabBar(
            tabs: [
              Tab(
                child: Icon(Icons.camera),
              ),
                Tab(
                  child:Text('Chats'),
                ),
              Tab(
                child: Text('Status') ,
              ),

              Tab(
                child: Text('Calls'),
              ),


          ]
        ),
        actions:  [

          Icon(Icons.search),
          SizedBox(width: 10,),
          PopupMenuButton(
    icon: Icon(Icons.more_vert_outlined),
              itemBuilder: (context,) => [
                PopupMenuItem(
                  value: '1',
                    child: Text('New Group')
                ),
                PopupMenuItem(
                    value: '2',
                    child: Text('Settings')
                ),
                PopupMenuItem(
                    value: '3',
                    child: Text('Logout')
                ),
          ]
          ),

          SizedBox(width: 10,)
        ],
      ),
body: TabBarView(
    children: [
      Text('Camera'),

      ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) {
          return  ListTile(

            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://img.freepik.com/free-photo/modern-stylish-muslim-woman-hijab-city-street_1157-58014.jpg',
              ),
            ),
            title: Text('Hifza'),
            subtitle: Text('Where is my paint?'),
            trailing: Text('6:36 PM'),
          );
        },
      ),

      Text('Calls'),
      ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) {
          return  ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://img.freepik.com/free-photo/modern-stylish-muslim-woman-hijab-city-street_1157-58014.jpg',
              ),
            ),
            title: Text('Hifza'),
            subtitle:Text(index /2 ==0?'You missed call':'cal times is 12:23'),
            trailing: Icon(
              (index /2 == 0?Icons.phone: Icons.video_call),
            ),

          );
        },
      ),

      Text('Status'),
      ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) {

          return  ListTile(

            leading: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(

                color: Colors.green,
                  width: 3
              ),
              ),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://img.freepik.com/free-photo/modern-stylish-muslim-woman-hijab-city-street_1157-58014.jpg',
                ),
              ),
            ),
            title: Text('Hifza'),
            subtitle: Text('35m ago'),

          );
        },
      ),
      Text('Chats'),


    ]
),
    )



    );
  }
}
