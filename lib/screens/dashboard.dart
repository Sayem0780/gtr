import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gtr/model/Market.dart';
import 'package:gtr/provider/market.dart';
import 'package:provider/provider.dart';

class DashboardScreen extends StatefulWidget {
  static const routeName ='\dashboard';
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    final store = Provider.of<Markeet>(context);
    return Scaffold(
      appBar: AppBar(
        title:  Padding(
          padding: const EdgeInsets.all(100.0),
          child: SvgPicture.asset(
            'imge/title.svg',
          ),
        ),
        centerTitle: true,
        leading: Icon(Icons.dehaze_rounded),
        actions: [
          Icon(Icons.search_sharp),
          Icon(Icons.shopping_cart_checkout_outlined),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'imge/banner.png',
              fit: BoxFit.fitWidth, scale: 0.5
            ),
          ),
          SvgPicture.asset(
            'imge/iconpannel.svg',
            fit: BoxFit.fitWidth,
            width: MediaQuery.of(context).size.width*1,
          ),
          Expanded(
            flex: 1,
            child: FutureBuilder(
                future: store.fetchProducts(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    print(snapshot.hasData);
                    return Center(child: CircularProgressIndicator());
                  } else {
                    print(snapshot.toString());
                    print(snapshot.hasData);
                    return ListView.builder(
                        itemCount: store.product.length,
                        itemBuilder: (context, index) {
                          return Card(child: ListTile(
                            leading: Image.network('https://media.istockphoto.com/id/1446945536/photo/asian-chinese-husband-photographing-wife-with-smart-phone-shopping-at-womenswear-clothing.jpg?b=1&s=170667a&w=0&k=20&c=x18LoYkonLDGyDC5gGhv1DMJJjoGWztCxPlCVn2D1GY='),
                            title: Text(store.product[index].name),
                            subtitle: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum vel arcu mauris. Maecenas vel urna congue'),
                            trailing: Icon(Icons.arrow_forward_ios_sharp,color: Colors.green,),
                          ),);
                        }
                    );
                  }
                }
                ),
          )
        ],
      ),
    );
  }
}


