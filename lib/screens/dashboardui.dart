import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gtr/provider/market.dart';
import 'package:provider/provider.dart';

class DashboardUIScreen extends StatefulWidget {
  static const routeName ='\dashboardui';
  const DashboardUIScreen({Key? key}) : super(key: key);

  @override
  State<DashboardUIScreen> createState() => _DashboardScreenUIState();
}

class _DashboardScreenUIState extends State<DashboardUIScreen> {
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
            child: Card(child: ListTile(
              leading: Image.network('https://media.istockphoto.com/id/1395535082/photo/tropical-fruit-concept.jpg?b=1&s=170667a&w=0&k=20&c=oaOINzSydmrDvhUs8eEStYZ71dKlcu6w2tyN8-DOYJQ=',width: 100,),
              title: Text('Fruits and Vegetables'),
              subtitle: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
              trailing: Icon(Icons.arrow_forward_ios_sharp,color: Colors.green,),
            ),),
          ),
          Expanded(
            child: Card(child: ListTile(
              leading: Image.network('https://media.istockphoto.com/id/1449032425/photo/shopping-bag-full-of-healthy-food-on-blue.jpg?b=1&s=170667a&w=0&k=20&c=FsWV_fWhTFhGtQq2KN0Kt3tqcqR5yk_ck0_qpRgu7tU=',width: 100,),
              title: Text('Grocery and Staples'),
              subtitle: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
              trailing: Icon(Icons.arrow_forward_ios_sharp,color: Colors.green,),
            ),),
          ),
          Expanded(
            child: Card(child: ListTile(
              leading: Image.network('https://media.istockphoto.com/id/1395535082/photo/tropical-fruit-concept.jpg?b=1&s=170667a&w=0&k=20&c=oaOINzSydmrDvhUs8eEStYZ71dKlcu6w2tyN8-DOYJQ=',width: 100,),
              title: Text('Household Needs'),
              subtitle: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
              trailing: Icon(Icons.arrow_forward_ios_sharp,color: Colors.green,),
            ),),
          ),
          Expanded(
            child: Card(child: ListTile(
              leading: Image.network('https://media.istockphoto.com/id/1446945536/photo/asian-chinese-husband-photographing-wife-with-smart-phone-shopping-at-womenswear-clothing.jpg?b=1&s=170667a&w=0&k=20&c=x18LoYkonLDGyDC5gGhv1DMJJjoGWztCxPlCVn2D1GY=',width: 100,),
              title: Text('Mens and Womens Wear'),
              subtitle: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
              trailing: Icon(Icons.arrow_forward_ios_sharp,color: Colors.green,),
            ),),
          ),
        ],
      ),
    );
  }
}
