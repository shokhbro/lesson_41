import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> fashionItems = [
      {
        "title": "\$ 30.5",
        "subtitle": "Discount up to 60%",
        "image": "assets/images/man1.png"
      },
      {
        "title": "\$ 26.5",
        "subtitle": "Discount up to 60%",
        "image": "assets/images/man2.png"
      },
      {
        "title": "\$ 56.7",
        "subtitle": "Discount up to 60%",
        "image": "assets/images/man3.png"
      },
      {
        "title": "\$ 18.5",
        "subtitle": "Discount up to 60%",
        "image": "assets/images/man4.png"
      },
      {
        "title": "\$ 65.1",
        "subtitle": "Discount up to 60%",
        "image": "assets/images/man5.png"
      },
      {
        "title": "\$ 65.1",
        "subtitle": "Discount up to 60%",
        "image": "assets/images/man6.png"
      },
    ];

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            centerTitle: true,
            pinned: true,
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.back,
                color: Colors.white,
              ),
            ),
            title: const Text(
              "Order Details",
              style: TextStyle(
                fontFamily: 'Lato',
                color: Colors.white,
              ),
            ),
            actions: const [
              Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
              Gap(10),
            ],
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/images/model1.png",
                fit: BoxFit.cover,
              ),
            ),
            expandedHeight: 160,
          ),
          SliverPersistentHeader(
            pinned: true,
            delegate: _SliverAppBarDelegate(
              minHeight: 25,
              maxHeight: 25,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Popular",
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 18,
                    ),
                  ),
                  Gap(100),
                  Text(
                    "See All",
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 3 / 4.2,
            ),
            delegate: SliverChildBuilderDelegate(
              childCount: fashionItems.length,
              (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 150,
                          width: 160,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage(fashionItems[index]['image']!),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                fashionItems[index]["title"]!,
                                style: const TextStyle(fontFamily: 'Lato'),
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.favorite_border),
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            "Pull bear men's...",
                            style: TextStyle(fontFamily: 'Lato'),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          SliverPersistentHeader(
            pinned: true,
            delegate: _SliverAppBarDelegate(
              minHeight: 25,
              maxHeight: 25,
              child: Container(
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Men's Fashion",
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 18,
                      ),
                    ),
                    Gap(100),
                    Text(
                      "See All",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 6,
              (BuildContext context, int index) {
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    height: 100,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              ),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Men's Fashion",
                                    style: TextStyle(
                                      fontFamily: 'Lato',
                                      fontSize: 18,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    "Collection up to 60%",
                                    style: TextStyle(
                                      fontFamily: 'Lato',
                                      fontSize: 14,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/model3.png"),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final double maxHeight;
  final double minHeight;
  final Widget child;

  _SliverAppBarDelegate({
    required this.maxHeight,
    required this.minHeight,
    required this.child,
  });

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  double get maxExtent => maxHeight;

  @override
  double get minExtent => minHeight;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
