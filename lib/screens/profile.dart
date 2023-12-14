import 'package:flutter/material.dart';
import 'package:linked_all_pages/screens/about_screen.dart';
import 'package:linked_all_pages/screens/edit.dart';
import 'package:linked_all_pages/screens/forget1.dart';
import 'package:linked_all_pages/screens/home_screen.dart';

// class profile extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: test(),
//     );
//   }
// }

// ignore: camel_case_types
class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

// ignore: camel_case_types
class _profileState extends State<profile> {
  bool remember = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.of(context)
                    .pushReplacement(MaterialPageRoute(builder: (context) {
                  return const HomeScreen();
                }));
              },
              icon: const Icon(Icons.chevron_left, color: Colors.white)),
          centerTitle: true,
          title: const Text(
            "profile",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w700, fontSize: 16),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_cart_outlined,
                    color: Colors.white))
          ],
          backgroundColor: const Color(0xff414E56),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25))),
        ),
        body: ListView(children: [
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(children: [
                    const Text(
                      "My Account",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                          color: Color(0xff000000)),
                    ),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => edit()));
                          });
                        },
                        child: const Icon(Icons.edit))
                  ]),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 325,
                    height: 349,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFD5E2EA),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: ListView(
                      children: const [
                        SizedBox(
                          height: 10,
                        ),
                        ListTile(
                          title: Text("Username"),
                          subtitle: Text("Username"),
                          leading: Icon(
                            Icons.badge_sharp,
                            color: Colors.black,
                          ),
                        ),
                        Divider(
                          color: Colors.black,
                        ),
                        ListTile(
                            title: Text("Email"),
                            subtitle: Text("Ash@gmail.com"),
                            leading: Icon(
                              Icons.email,
                              color: Colors.black,
                            )),
                        Divider(
                          color: Colors.black,
                        ),
                        ListTile(
                          title: Text("Phone Number"),
                          subtitle: Text("phone Number"),
                          leading: Icon(
                            Icons.phone,
                            color: Colors.black,
                          ),
                        ),
                        Divider(
                          color: Colors.black,
                        ),
                        ListTile(
                          title: Text("Address"),
                          subtitle: Text("damanhour"),
                          leading: Icon(
                            Icons.location_on,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  //----------------------------------------------------------------------------------------
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text("Addition settings",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                            color: Color(0xff000000))),
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  Container(
                    width: 325,
                    height: 125,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFD5E2EA),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: ListView(
                      children: [
                        ListTile(
                          title: const Text("Forget Password"),
                          leading: const Icon(Icons.language,
                              color: Color(0xff000000)),
                          trailing: const Icon(Icons.chevron_right_outlined,
                              color: Color(0xff000000)),
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return forget();
                            }));
                          },
                        ),
                        const Divider(
                          color: Colors.black,
                        ),
                        ListTile(
                            title: const Text("Change Password"),
                            leading: const Icon(Icons.flag,
                                color: Color(0xff000000)),
                            trailing: const Icon(Icons.chevron_right_outlined,
                                color: Color(0xff000000)),
                            onTap: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return forget();
                              }));
                            })
                      ],
                    ),
                  ),

                  const SizedBox(
                    height: 10,
                  ),

                  //-----------------------------------------------------------------
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text("Reach Out TO Us ",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                            color: Color(0xff000000))),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 325,
                    height: 200,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFD5E2EA),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: ListView(children: [
                      ListTile(
                          title: const Text("Help"),
                          leading: const Icon(Icons.help_center_rounded,
                              color: Color(0xff000000)),
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return forget();
                            }));
                          }),
                      const Divider(
                        color: Colors.black,
                      ),
                      const ListTile(
                        title: Text("Contact Us"),
                        leading: Icon(
                          Icons.phone,
                          color: Colors.black,
                        ),
                      ),
                      const Divider(
                        color: Colors.black,
                      ),
                      ListTile(
                        title: const Text("About us"),
                        leading: const Icon(
                          Icons.info,
                          color: Colors.black,
                        ),
                        onTap: () {
                          setState(() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const AboutScreen()));
                          });
                        },
                      ),
                    ]),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 325,
                    height: 60,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFD5E2EA),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const ListTile(
                      title: Text("Logout"),
                      leading: Icon(
                        Icons.power_settings_new_sharp,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ))
        ]));
  }
}
