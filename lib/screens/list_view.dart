import 'package:flutter/material.dart';

class ProductListView extends StatefulWidget {
  const ProductListView({super.key});

  @override
  State<ProductListView> createState() => _ProductListViewState();
}

class _ProductListViewState extends State<ProductListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
        
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.teal,
              ),
              currentAccountPicture:CircleAvatar(
                backgroundImage: NetworkImage('https://www.freepik.com/free-photo/brunette-business-woman-with-wavy-long-hair-blue-eyes-stands-holding-notebook-hands_9960700.htm#fromView=keyword&page=1&position=0&query=Professional+Girl'),
              ),
              accountName: Text('Laiba'), accountEmail: Text('shahzadlaiba064@gmail.com'),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Page1'),
              onTap: (){

              },
            ),
              ListTile(
                leading: Icon(Icons.calculate),
                title: Text('Page2'),
                onTap: (){},


            )
          ],
        ),
      ),
      
      body: Column(
        children: [
          Expanded(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.teal,
                backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=47'),
              ),
              title: Text('Laiba'),
              subtitle: Text('Hello'),
              trailing: Text('3:19 PM'),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(Icons.email),
                  title: Text('laibashahzad087@gmail.com'),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              cursorColor: Colors.black,
              style: TextStyle(fontSize: 18, color: Colors.black),
              decoration: InputDecoration(
                filled: true,
                prefixIcon: Icon(Icons.email),
                fillColor: Colors.grey[200],
                hintText: 'Email',
                labelText: 'Email',
                hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red, width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.teal, width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red, width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
