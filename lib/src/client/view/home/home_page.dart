import 'package:fine_jobs_app/src/widgets/Jobs_list.dart';
import 'package:fine_jobs_app/src/widgets/search.dart';
import 'package:fine_jobs_app/src/widgets/side_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 250, 250, 250),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        backgroundColor: Colors.green[800],
        centerTitle: true,
        title: Column(
          children: [
            Text(
              "Jober",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w900,
                fontSize: 25
              ),
            ),

            Text(
              "Easy way to find your jobs",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w300,
                fontSize: 8
              ),
            )
          ],
        ),

        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite, color: Colors.white,)
            ),
          )
        ],
      ),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            Search(),

            const SizedBox(height: 20),

            JobsList()
          ],
        ),
      ),

      drawer: SideBar(),
    );
  }
}