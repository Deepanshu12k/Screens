import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'package:screens/components/constants.dart';

class Details extends StatefulWidget {
  static String id = 'Details';

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  double _currentSliderValue = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white54,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            OMIcons.arrowBack,
            size: 30,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Center(
          child: Text(
            'Transactions',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
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
      body: Container(
        color: kOffButtonColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Agarwal Sweets',
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    'Last 30 Days',
                    style: TextStyle(fontSize: 15, color: Colors.black38),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    '₹850',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
                  ),
                Slider(
                 value: _currentSliderValue,
                 activeColor: kSendColor,
                 min: 0,
                 max: 1000,
                 divisions: 100,
                 label: _currentSliderValue.round().toString(),
                 onChanged: (double value) {
                   setState(() {
                     _currentSliderValue = value;
                   });
                 },
                 ),
                ],
              ),
            ),
            ListTile(
              leading: Text(
                'Transactions',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              trailing: IconButton(
                onPressed: (){},
                icon: Icon(OMIcons.filterList, size: 30, color: Colors.black),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 5,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                    ListTiles(color: Color(0xFFBDC6E8) ,
                      text:'↑' ,
                      title: 'Pay',
                      subtitle:'Jan 2,2021' ,
                      amount: '-₹250',
                    ),
                    ListTiles(
                      color: Color(0xFFBDE8C6),
                      text: '↓',
                      title: 'Receive',
                      subtitle:'Jan 1,2021' ,
                      amount: '₹150',
                    ),
                    ListTiles(
                      color: Color(0xFFE8E3BD),
                      text: '↓',
                      title: 'Food',
                      subtitle:'Jan 2,2021' ,
                      amount: '₹200',
                    ),
                    ListTiles(
                      color: Color(0xFFE8BDBD),
                      text: '↓',
                      title: 'Food',
                      subtitle:'Jan 1,2021' ,
                      amount: '₹250',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ListTiles extends StatelessWidget {
ListTiles({@required this.color,
           @required this.text,
           @required this.title,
           @required this.subtitle,
           @required this.amount});

final Color color;
final String text;
final String title;
final String subtitle;
final String amount;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
       decoration: BoxDecoration(
         color: color,
         borderRadius: BorderRadius.circular(18.0),
       ),
        child:Padding(
          padding: const EdgeInsets.only(left: 17,right: 17,bottom: 15,),
          child: Text(
            '$text', style: TextStyle(fontSize: 35,),
          ),
        ),
      ),
      title: Text(
        '$title',
        style: TextStyle(
          fontSize: 24,
        ),
      ),
      subtitle: Text(
        '$subtitle',
        style: TextStyle(
          fontSize: 13,
          color: Colors.black26,
        ),
      ),
      trailing: Text(
        '$amount',
        style: TextStyle(fontSize: 23, color: Colors.redAccent),
      ),
      contentPadding: EdgeInsets.all(20),
    );
  }
}
