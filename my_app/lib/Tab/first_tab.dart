import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class FirstTab extends StatefulWidget {
  const FirstTab({Key? key}) : super(key: key);

  @override
  State<FirstTab> createState() => _FirstTabState();
}

class _FirstTabState extends State<FirstTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Slidable(
          endActionPane: ActionPane(motion: StretchMotion(), children: [
            SlidableAction(
                onPressed: _showModalBottomSheet,
                backgroundColor: Colors.grey,
                foregroundColor: Colors.white,
                icon: Icons.add,
                label: 'Thêm'),
            SlidableAction(
              onPressed: ((context) {}),
              backgroundColor: Colors.blue,
              icon: Icons.percent,
              label: 'Tiến độ',
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
                      'Cập nhật trạng thái',
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
                      'Người thực hiện',
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
                      icon: Image.asset('my_app/assets/icons/icon3.jpg'),
                    ),
                    Text(
                      'Đánh giá',
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
                      'Quản lý đầu việc',
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
                      'Thêm một việc con',
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
                      'Sửa công việc',
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
                      'Xóa công việc',
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
                      'File đính kèm',
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
                      'Liên kết nghiệp vụ',
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
                      'Cài đặt quyền',
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
                      'Chia tỉ trọng',
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
                      'Gán nhãn',
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
                      'Copy & tạo mới',
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
                      'Lịch sử công việc',
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
