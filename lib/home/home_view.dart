import 'package:flutter/material.dart';
import 'package:supabase_cubitt/static_var.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
        drawer: Drawer(
          backgroundColor: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: const [
                  UserAccountsDrawerHeader(
                      currentAccountPicture: CircleAvatar(
                        backgroundColor: Colors.black,
                      ),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(62, 207, 142, 100),
                      ),
                      accountName: Text('data'),
                      accountEmail: Text('asd')),
                  ListTile(
                    title: Text('data',
                        style: TextStyle(
                          color: Colors.white,
                        )),
                  ),
                ],
              ),
              Container(color: Colors.white, width: 50, height: 50),
            ],
          ),
        ),
        backgroundColor: Colors.black,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
                backgroundColor: Colors.black,
                title: Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * .1),
                  child: const Image(
                    image: AssetImage('assets/images/logo-dark.png'),
                  ),
                )),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Text(
                    'Storage',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: size.height * .03,
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                    indent: size.width * .3,
                    endIndent: size.width * .3,
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (contex, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 100,
                          width: 100,
                          child: Image.network(StaticVar.listUrl[2]),
                        ),
                      );
                    },
                    itemCount: StaticVar.listUrl.length,
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
