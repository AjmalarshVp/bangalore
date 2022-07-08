import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
   bool isSwitch = true;
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        title: Text('Settings'),
        centerTitle: true,
        backgroundColor: Colors.pink,
        elevation: 0,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(35),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), bottomRight: Radius.circular(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.7,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              Icons.person_outlined,
                              size: 30,
                              color: Colors.white,
                            ),
                            label: Text(
                              'About me',
                              style:
                                  TextStyle(fontSize: 19, color: Colors.white),
                            )),
                        SizedBox(
                          height: 20,
                        ),
                       Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton.icon(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.notifications_outlined,
                                  size: 30,
                                  color: Colors.white,
                                ),
                                label: const Text(
                                  'Notification',
                                  style: TextStyle(
                                      fontSize: 19, color: Colors.white),
                                )),
                            Switch.adaptive(
                                inactiveThumbColor:
                                    Colors.red,
                                activeColor: Colors.white,
                                value: isSwitch,
                                onChanged: (bool value) {
                                  setState(() {
                                    isSwitch = value;
                                 
                                  });
                              
                                })
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              Icons.share,
                              size: 30,
                              color: Colors.white,
                            ),
                            label: Text(
                              'Share',
                              style:
                                  TextStyle(fontSize: 19, color: Colors.white),
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        TextButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              Icons.report_problem,
                              size: 30,
                              color: Colors.white,
                            ),
                            label: Text(
                              'License',
                              style:
                                  TextStyle(fontSize: 19, color: Colors.white),
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        TextButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              Icons.security,
                              size: 30,
                              color: Colors.white,
                            ),
                            label: Text(
                              'PrivacyPolicy',
                              style:
                                  TextStyle(fontSize: 19, color: Colors.white),
                            ))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
