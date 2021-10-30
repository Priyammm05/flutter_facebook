import 'package:flutter/material.dart';
import 'package:flutter_facebook_ui/models/marketplace_model.dart';

class MarketPage extends StatefulWidget {
  const MarketPage({Key? key}) : super(key: key);

  @override
  _MarketPageState createState() => _MarketPageState();
}

class _MarketPageState extends State<MarketPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Market Place',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                child: IconButton(
                    icon: const Icon(Icons.search_outlined),
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onPressed: () {}),
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.grey[300]),
              ),
            ],
          ),
        ),
        const Divider(
          thickness: 1,
          color: Colors.black38,
        ),
        Expanded(
          child: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            childAspectRatio: (2 / 3),
            children: [
              for (int i = 0; i < marketplaceData.length; i++) ...[
                InkWell(
                  child: Container(
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 2,
                        ),
                      ],
                    ),
                    child: Card(
                      child: Column(
                        children: [
                          Expanded(
                            child: Image(
                              image: AssetImage(marketplaceData[i].photo),
                            ),
                          ),
                          Text(
                            marketplaceData[i].title,
                            style: const TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 12),
                          Text(
                            '\$${marketplaceData[i].price}',
                            style: const TextStyle(
                                fontSize: 17.0, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 8),
                        ],
                      ),
                    ),
                  ),
                  onTap: () {},
                ),
              ],
            ],
          ),
        ),
      ],
    );
  }
}
