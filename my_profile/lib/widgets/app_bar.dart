
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
   return DefaultTabController(
      length: 4, // Number of tabs
      child: Scaffold(
        body: Column(
          children: [
            Container(
              color: Colors.black,
              height: screenHeight * 0.06,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Logo + Name
                  Row(
                    children: [
                      /*Image.asset(
                        "assets/images/logo.png",
                        height: 40,
                        width: 40,
                      ),*/
                      const SizedBox(width: 8),
                      const Text(
                        "Abhishek Verma",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  // Tabs
                  TabBar(
                    isScrollable: true,
                    indicatorColor: Colors.white,
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.grey[400],
                    tabs: const [
                      Tab(text: "About"),
                      Tab(text: "Skills"),
                      Tab(text: "Projects"),
                      Tab(text: "Contact"),
                    ],
                  ),
                ],
              ),
            ),

            // Tab Views
           /* Expanded(
              child: TabBarView(
                children: [
                  Center(child: Text("About Page")),
                  Center(child: Text("Skills Page")),
                  Center(child: Text("Projects Page")),
                  Center(child: Text("Contact Page")),
                ],
              ),
            ),*/
          ],
        ),
      ),
    );
  }
  @override
  Size get preferredSize => throw UnimplementedError();
}