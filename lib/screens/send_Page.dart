import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:screens/screens/details.dart';
import 'file:///C:/Users/deepa/AndroidStudioProjects/screens/lib/screens/receive_Page.dart';
import '../components/constants.dart';
import '../components/customer.dart';

class Send extends StatefulWidget {
  static String id = 'To Send';
  @override
  _SendState createState() => _SendState();
}

class _SendState extends State<Send> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white54,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.sort,
            size: 40,
            color: Colors.black38,
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.perm_identity,
              size: 40,
              color: Colors.black38,
            ),
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 8.0,
              left: 15,
            ),
            child: Row(
              children: [
                Text(
                  '₹',
                  style: TextStyle(fontSize: 30),
                ),
                Text(
                  '850',
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 8.0, left: 15, right: 15, bottom: 8),
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                color: Color(0xFFF5F4F4), //0xFFF5F4F4
                borderRadius: BorderRadius.all(
                  Radius.circular(18.0),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: kSendColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      ),
                      child: Text(
                        'To Send',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Hero(
                      tag: 'Button',
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Receive(),
                            ),
                          );
                        },
                        child: Text(
                          'To Receive',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: Text(
              'Users ${customer.length}',
              style: TextStyle(color: Colors.black26, fontSize: 20),
            ),
            trailing: Text(
              '↓↑',
              style: TextStyle(color: Colors.black54, fontSize: 30),
            ),
          ),
          Expanded(
            child: GridView.builder(
              itemCount: customer.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 0.75),
              itemBuilder: (context, index) => GridViewContainer(),
            ),
          ),
          Container(
            color: Colors.black,
            width: double.infinity,
            margin: EdgeInsets.only(top: 10),
            height: 70,
            child: Icon(
              Icons.qr_code_scanner,
              color: Colors.white,
              size: 40,
            ),
          ),
        ],
      ),
    );
  }
}

class GridViewContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 5, right: 15, bottom: 20),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, Details.id);
        },
        child: Container(
          decoration: BoxDecoration(
            color: kOffButtonColor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 25,
              ),
              Text(
                customer[0].title,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                '₹${customer[0].amount}',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 90,
                decoration: BoxDecoration(
                  color: kSendColor,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Icon(
                  Icons.arrow_forward_sharp,
                  size: 40,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
