import 'package:flutter/material.dart';
import 'package:moduel4/question-9/screens/all_inboxes.dart';
import 'package:moduel4/question-9/screens/primary_screen.dart';
import 'package:moduel4/question-9/screens/trash_screen.dart';
import 'model/label_data.dart';

class Question9 extends StatefulWidget {
  const Question9({super.key});

  @override
  State<Question9> createState() => _Question9State();
}

class _Question9State extends State<Question9> {
  List<Label> labelList = [

    Label(
      labelName: 'Starred',
      labelsIcon: Icon(Icons.star_border_outlined),
      badge: '',
      badgeColor: Colors.transparent,
    ),
    Label(
      labelName: 'Snoozed',
      labelsIcon: Icon(Icons.watch_later_outlined),
      badge: '',
      badgeColor: Colors.transparent,
    ),
    Label(
        labelName: 'Important',
        labelsIcon: Icon(Icons.label_important_outline),
        badge: '27',
        badgeColor: Colors.transparent),
    Label(
        labelName: 'Sent',
        labelsIcon: Icon(
          Icons.send_outlined,
        ),
        badge: '',
        badgeColor: Colors.transparent),
    Label(
      labelName: 'Scheduled',
      labelsIcon: Icon(Icons.schedule_send_outlined),
      badge: '',
      badgeColor: Colors.transparent,
    ),
    Label(
      labelName: 'Outbox',
      labelsIcon: Icon(Icons.outbox),
      badge: '',
      badgeColor: Colors.transparent,
    ),
    Label(
      labelName: 'Draft',
      labelsIcon: Icon(Icons.insert_drive_file_outlined),
      badge: '',
      badgeColor: Colors.transparent,
    ),
    Label(
      labelName: 'Spam',
      labelsIcon: Icon(Icons.report_gmailerrorred),
      badge: '22',
      badgeColor: Colors.transparent,
    ),
    Label(
      labelName: 'Trash',
      labelsIcon: Icon(Icons.delete_outline),
      badge: '',
      badgeColor: Colors.transparent,
    ),
    Label(
      labelName: '[Imap]/Trash',
      labelsIcon: Icon(Icons.label_outline),
      badge: '10',
      badgeColor: Colors.transparent,
    ),

  ];

  List<Widget> widgetList = [
    AllinBox(),
    PrimaryScreen(),
    Center(
      child: Text('Promotion'),
    ),
    Center(
      child: Text('Social'),
    ),
    Center(
      child: Text('Starred'),
    ),
  ];

  int selectedIndex = 1, navigationBarIndex = 0;

  List<Data> dataList = [];

  void initState() {
    dataList.add(
        Data(title: '', icon: Icons.mail_outline, selectedIcon: Icons.mail));
    dataList.add(Data(
        title: '',
        icon: Icons.video_chat_outlined,
        selectedIcon: Icons.video_chat));
  }

  itemClicked(int index, BuildContext context) {
    setState(() {
      selectedIndex = index;
      Navigator.pop(context);
    });
  }

  bottomitemClicked(int index, BuildContext context) {
    setState(() {
      selectedIndex = index;
      navigationBarIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Builder(
          builder: (context) {
            return Column(
              children: [
                SizedBox(height: 5),
                Center(
                  child: Container(
                    height: 50,
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.grey,
                    ),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: IconButton(
                            onPressed: () {
                              Scaffold.of(context).openDrawer();
                            },
                            icon: Icon(
                              Icons.menu,
                              color: Colors.black,
                              size: 30,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 8),
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Search in mail',
                                hintStyle: TextStyle(
                                    color: Colors.grey.shade200, fontSize: 18),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: CircleAvatar(
                            radius: 18,
                            child: Text('P',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20)),
                            backgroundColor: Colors.cyanAccent,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: widgetList[selectedIndex],
                )
              ],
            );
          },
        ),
      ),
      bottomNavigationBar: NavigationBar(
        height: 60,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        backgroundColor: Colors.grey,
        selectedIndex: navigationBarIndex,
        indicatorColor: Colors.indigo.shade500,
        onDestinationSelected: (value) {
          bottomitemClicked(navigationBarIndex, context);
          setState(() {
            navigationBarIndex = value!;
          });
        },
        destinations: List.generate(
          dataList.length,
          (index) => NavigationDestination(
            icon: Icon(dataList[index].icon),
            label: dataList[index].title.split(' ').first,
            selectedIcon: Icon(dataList[index].selectedIcon),
          ),
        ),
      ),
      drawer: Drawer(
          backgroundColor: Colors.grey.shade300,
          child: ListView(
            children: [
              ListTile(
                title: Text(
                  'Gmail',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
              ),
              Divider(color: Colors.white),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: ListTile(
                  onTap: () {
                    itemClicked(0, context);
                  },
                  title: Text('All Emails'),
                  leading: Icon(
                    Icons.all_inbox,
                    color: Colors.black,
                  ),
                  selected: selectedIndex == 0,
                  selectedTileColor: Colors.green,
                  selectedColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                ),
              ),
              Divider(color: Colors.white54),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: ListTile(
                  onTap: () {
                    itemClicked(1, context);
                  },
                  title: Text('Primary'),
                  leading: Icon(
                    Icons.inbox,
                    color: Colors.black,
                  ),
                  selected: selectedIndex == 1,
                  selectedTileColor: Colors.green,
                  selectedColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                  trailing: Badge(
                    label: Text(
                      '99+',
                      style: TextStyle(color: Colors.black),
                    ),
                    backgroundColor: Colors.transparent,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: ListTile(
                  onTap: () {
                    itemClicked(2, context);
                  },
                  title: Text('Promotion'),
                  leading: Icon(
                    Icons.discount_outlined,
                    color: Colors.black,
                  ),
                  selected: selectedIndex == 2,
                  selectedTileColor: Colors.green,
                  selectedColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: ListTile(
                  onTap: () {
                    itemClicked(3, context);
                  },
                  title: Text('Social'),
                  leading: Icon(
                    Icons.group_outlined,
                    color: Colors.black,
                  ),
                  selected: selectedIndex == 3,
                  selectedTileColor: Colors.green,
                  selectedColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                  trailing: Badge(
                    label: Text(
                      '50+ new',
                      style: TextStyle(color: Colors.black),
                    ),
                    backgroundColor: Colors.green,
                    largeSize: 24,
                  ),
                ),
              ),
              ExpansionTile(
                title: Text('All labels'),
              ),
            ],
          )),
    );
  }
}
