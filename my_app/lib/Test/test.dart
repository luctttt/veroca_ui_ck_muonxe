import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class test extends StatefulWidget {
  const test({Key? key}) : super(key: key);

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Slidable(
          startActionPane: ActionPane(
            motion: StretchMotion(),
            children: [
              SlidableAction(
                onPressed: _showModalBottomSheet,
                backgroundColor: Colors.green,
                icon: Icons.phone,
              ),
              SlidableAction(
                onPressed: ((context) {}),
                backgroundColor: Colors.blue,
                icon: Icons.chat,
              ),
            ],
          ),
          endActionPane: ActionPane(motion: StretchMotion(), children: [
            SlidableAction(
              onPressed: doNothing,
              backgroundColor: Colors.red,
              icon: Icons.cancel,
            ),
          ]),
          child: Container(
            color: Colors.grey[300],
            child: ListTile(
              title: Text('Ngo Duc'),
              subtitle: Text('0965223408'),
              leading: Icon(Icons.person, size: 40),
            ),
          ),
        ),
      ),
    );
  }
}

void _showModalBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (context) => DraggableScrollableSheet(
      expand: false,
      initialChildSize: 0.4,
      maxChildSize: 0.9,
      minChildSize: 0.3,
      builder: (context, scrollController) => SingleChildScrollView(
        controller: scrollController,
        child: Align(
          child: GestureDetector(
            onTap: () {
              print('object');
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        print('111111');
                      },
                      icon: Image.asset('assets/icons/icon1.jpg'),
                    ),
                    Text(
                      'C???p nh???t tr???ng th??i',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        print('111111');
                      },
                      icon: Image.asset('assets/icons/icon2.jpg'),
                    ),
                    Text(
                      'Ng?????i th???c hi???n',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        print('111111');
                      },
                      icon: Image.asset('assets/icons/icon3.jpg'),
                    ),
                    Text(
                      '????nh gi??',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        print('111111');
                      },
                      icon: Image.asset('assets/icons/icon4.jpg'),
                    ),
                    Text(
                      'Qu???n l?? ?????u vi???c',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        print('111111');
                      },
                      icon: Image.asset('assets/icons/icon5.jpg'),
                    ),
                    Text(
                      'Th??m m???t vi???c con',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        print('111111');
                      },
                      icon: Image.asset('assets/icons/icon6.jpg'),
                    ),
                    Text(
                      'S???a c??ng vi???c',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        print('111111');
                      },
                      icon: Image.asset('assets/icons/icon7.jpg'),
                    ),
                    Text(
                      'X??a c??ng vi???c',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        print('111111');
                      },
                      icon: Image.asset('assets/icons/icon8.jpg'),
                    ),
                    Text(
                      'File ????nh k??m',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        print('111111');
                      },
                      icon: Image.asset('assets/icons/icon9.jpg'),
                    ),
                    Text(
                      'Li??n k???t nghi???p v???',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        print('111111');
                      },
                      icon: Image.asset('assets/icons/icon10.jpg'),
                    ),
                    Text(
                      'C??i ?????t quy???n',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        print('111111');
                      },
                      icon: Image.asset('assets/icons/icon11.jpg'),
                    ),
                    Text(
                      'Chia t??? tr???ng',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        print('111111');
                      },
                      icon: Image.asset('assets/icons/icon12.jpg'),
                    ),
                    Text(
                      'G??n nh??n',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        print('111111');
                      },
                      icon: Image.asset('assets/icons/icon13.jpg'),
                    ),
                    Text(
                      'Copy & t???o m???i',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        print('111111');
                      },
                      icon: Image.asset('assets/icons/icon14.jpg'),
                    ),
                    Text(
                      'L???ch s??? c??ng vi???c',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

void doNothing(BuildContext context) {}
