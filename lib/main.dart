import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('username'),
          centerTitle: false,
          actions: [
            Icon(Icons.add_box_outlined),
            SizedBox(width: 10),
            Icon(Icons.menu),
            SizedBox(width: 10),
          ],
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1517841905240-472988babdf9', // contoh URL
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buildStat("0", "Posts"),
                        buildStat("0", "Followers"),
                        buildStat("0", "Following"),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("username", style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                  ),
                  Text(
                    "Link goes here",
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),

            // Tombol Edit Profile
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: OutlinedButton(
                onPressed: () {},
                child: Text("Edit Profile"),
              ),
            ),

            SizedBox(height: 10),

            // Story Highlights
            Container(
              height: 90,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  storyItem("Story 1",
                      "https://images.unsplash.com/photo-1504208434309-cb69f4fe52b0"),
                  storyItem("Story 2",
                      "https://images.unsplash.com/photo-1494790108377-be9c29b29330"),
                  storyItem("Story 3",
                      "https://images.unsplash.com/photo-1517841905240-472988babdf9"),
                  storyItem("Story 4",
                      "https://images.unsplash.com/photo-1504215680853-026ed2a45def"),
                  storyItem("New",
                      "https://cdn-icons-png.flaticon.com/512/1828/1828817.png"),
                ],
              ),
            ),

            // Grid Post
            GridView.count(
              crossAxisCount: 3,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                Image.network('https://images.unsplash.com/photo-1504208434309-cb69f4fe52b0', fit: BoxFit.cover),
                Image.network('https://images.unsplash.com/photo-1541696432-82c6da8ce7bf', fit: BoxFit.cover),
                Image.network('https://images.unsplash.com/photo-1506744038136-46273834b3fb', fit: BoxFit.cover),
                Image.network('https://images.unsplash.com/photo-1494790108377-be9c29b29330', fit: BoxFit.cover),
                Image.network('https://images.unsplash.com/photo-1504215680853-026ed2a45def', fit: BoxFit.cover),
                Image.network('https://images.unsplash.com/photo-1501594907352-04cda38ebc29', fit: BoxFit.cover),
                Image.network('https://images.unsplash.com/photo-1517841905240-472988babdf9', fit: BoxFit.cover),
                Image.network('https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d', fit: BoxFit.cover),
                Image.network('https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d', fit: BoxFit.cover),
              ],
            ),
          ],
        ),

        // Bottom Navigation Bar
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: 0,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.movie), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
          ],
        ),
      ),
    );
  }

  // Fungsi kecil untuk ringkas tampilan
  Widget buildStat(String number, String label) {
    return Column(
      children: [
        Text(number, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        Text(label),
      ],
    );
  }

  Widget storyItem(String title, String imagePath) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage('https://images.unsplash.com/photo-1501594907352-04cda38ebc29'),
          ),
          SizedBox(height: 5),
          Text(title),
        ],
      ),
    );
  }
}
