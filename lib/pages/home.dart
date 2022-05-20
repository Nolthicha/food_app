import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fooddy'),
      ),
      drawer: _buildDrawer(),
      body: ListView(
        padding: const EdgeInsets.all(28),
        children: [
          _buildSearchField(),
          const SizedBox(height: 20),
          _buildCategories(),
          const SizedBox(height: 20),
          _buildPopularFoods()
        ],
      ),
    );
  }

  Widget _buildPopularFoods() {
    return Row(
      children: const [
        Text(
          'Popular Foods',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Spacer(),
        Text('View All'),
      ],
    );
  }

  Widget _buildCategories() {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(22),
                  ),
                  color: Colors.grey[200],
                ),
                child: Row(
                  children: const [
                    Icon(
                      Icons.star,
                      color: Colors.pink,
                    ),
                    Text('Food')
                  ],
                ),
              ),
              const SizedBox(width: 28),
            ],
          );
        },
      ),
    );
  }

  Widget _buildSearchField() {
    return Row(
      children: [
        Flexible(
          child: TextFormField(
            controller: _controller,
            decoration: InputDecoration(
              hintText: 'Search',
              contentPadding: const EdgeInsets.all(8),
              filled: true,
              fillColor: Colors.grey[200],
              focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(18),
                  bottomLeft: Radius.circular(18),
                ),
                borderSide: BorderSide(
                  color: Colors.transparent,
                ),
              ),
              enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(18),
                  bottomLeft: Radius.circular(18),
                ),
                borderSide: BorderSide(
                  color: Colors.transparent,
                ),
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
            color: Colors.deepOrange,
          ),
          child: const Icon(
            Icons.search,
            color: Colors.white,
          ),
        )
      ],
    );
  }

  ClipRRect _buildDrawer() {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(
        top: Radius.circular(32),
        bottom: Radius.circular(32),
      ),
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(8),
                      ),
                      border: Border.all(
                        color: Colors.grey,
                        width: 2,
                      ),
                    ),
                    child: const Icon(
                      Icons.close,
                      size: 20,
                    ),
                  ),
                  const Spacer(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(5.0),
                          ),
                        ),
                        child: const Icon(
                          Icons.person,
                          color: Colors.amber,
                          size: 60,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Text(
                            'Nolthicha Ngaongam',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text('@Nolthicha'),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const ListTile(
              title: Text(
                'Profile',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'See my profile',
              ),
              trailing: Icon(Icons.arrow_forward),
            ),
            const ListTile(
              title: Text(
                'Categories',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'See categories item',
              ),
              trailing: Icon(Icons.arrow_forward),
            ),
            const ListTile(
              title: Text(
                'Cart',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'See my cart items',
              ),
              trailing: Icon(Icons.arrow_forward),
            ),
            const ListTile(
              title: Text(
                'Payment Card',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'See my payment card option',
              ),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: const Text(
                'Push Notifications',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: const Text(
                'Set up push notification',
              ),
              trailing: CupertinoSwitch(
                value: true,
                activeColor: Colors.deepOrange,
                onChanged: (value) {},
              ),
            ),
            const ListTile(
              title: Text(
                'Logout',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.logout),
            )
          ],
        ),
      ),
    );
  }
}
