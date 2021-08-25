import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:teste/app/modules/home/home_controller.dart';
import 'package:teste/app/repository/model/user_model.dart';

class HistoricoPage extends GetResponsiveView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(280),
        child: Container(
          padding: EdgeInsets.only(top: 50, left: 10, right: 10),
          height: 280,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.blueAccent.shade100,
                Colors.green.shade400,
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ListTile(
                contentPadding: EdgeInsets.all(0),
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.network(
                    'https://mhmcdn.manualdohomemmoderno.com.br/?w=781&h=558&quality=100&clipping=crop&url=https://manualdohomemmoderno.com.br/files/2020/09/cortes-de-cabelos-masculinos-para-2021-cortes-de-cabelos-masculinos-para-2021-11.jpg',
                    height: 60,
                    width: 60,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      'Apartments Savings',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$700.55',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                        ),
                      ),
                      Text('of 50m',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                          )),
                    ],
                  )
                ],
              ),
              controller.obx(
                (state) => ListView.builder(
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  itemBuilder: (_, i) {
                    final UserModel user = state[i];
                    return Text(
                      "Name: ${user.name}",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    );
                  },
                  itemCount: state.length,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            label: 'Spend',
            icon: Icon(Icons.account_balance_wallet_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Save',
            icon: Icon(CommunityMaterialIcons.heart_outline),
          ),
          BottomNavigationBarItem(
            label: 'Schedule',
            icon: Icon(CommunityMaterialIcons.calendar),
          ),
          BottomNavigationBarItem(
            label: 'Menu',
            icon: Icon(Icons.menu),
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                SizedBox(height: 10),
                FloatingActionButton(
                  backgroundColor: Colors.green.shade400,
                  elevation: 5,
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle, // circular shape
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Colors.blueAccent.shade100,
                          Colors.green.shade400,
                        ],
                      ),
                    ),
                    child: Icon(Icons.add, size: 40),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            label: '',
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 80,
              width: MediaQuery.of(context).size.width,
              child: OutlinedButton(
                child: ListTile(
                  leading: Text(
                    'Saving 5% of daily pay',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios, size: 15),
                ),
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  '     Activity',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(),
                  child: Row(
                    children: [
                      Text(
                        'View All',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                      ),
                    ],
                  ),
                )
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height * .46,
              padding: EdgeInsets.all(20),
              child: Center(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: <Widget>[
                    SizedBox(height: 10),
                    Container(
                      width: 135,
                      height: 80,
                      padding: EdgeInsets.only(left: 25),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: ListTile(
                          title: Text('5% of \$2500'),
                          subtitle: Text(
                            'Dec 25',
                            style: TextStyle(color: Colors.grey[500]),
                          ),
                          leading: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(20)),
                              child: Icon(
                                CommunityMaterialIcons.percent,
                                color: Colors.black,
                              )),
                          trailing: Text('+125.00'),
                        ),
                      ),
                    ),
                    Container(
                      width: 135,
                      height: 80,
                      padding: EdgeInsets.only(left: 25),
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Center(
                        child: ListTile(
                          title: Text('5% of \$2500'),
                          subtitle: Text(
                            'Dec 25',
                            style: TextStyle(color: Colors.grey[500]),
                          ),
                          leading: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(20)),
                              child: Icon(
                                CommunityMaterialIcons.percent,
                                color: Colors.black,
                              )),
                          trailing: Text('+125.00'),
                        ),
                      ),
                    ),
                    Container(
                      width: 135,
                      height: 80,
                      padding: EdgeInsets.only(left: 25),
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Center(
                        child: ListTile(
                          title: Text('5% of \$2500'),
                          subtitle: Text(
                            'Dec 25',
                            style: TextStyle(color: Colors.grey[500]),
                          ),
                          leading: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(20)),
                              child: Icon(
                                CommunityMaterialIcons.percent,
                                color: Colors.black,
                              )),
                          trailing: Text('+125.00'),
                        ),
                      ),
                    ),
                    Container(
                      width: 135,
                      height: 80,
                      padding: EdgeInsets.only(left: 25),
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Center(
                        child: ListTile(
                          title: Text('5% of \$2500'),
                          subtitle: Text(
                            'Dec 25',
                            style: TextStyle(color: Colors.grey[500]),
                          ),
                          leading: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(20)),
                              child: Icon(
                                CommunityMaterialIcons.percent,
                                color: Colors.black,
                              )),
                          trailing: Text('+125.00'),
                        ),
                      ),
                    ),
                    Container(
                      width: 135,
                      height: 80,
                      padding: EdgeInsets.only(left: 25),
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Center(
                        child: ListTile(
                          title: Text('5% of \$2500'),
                          subtitle: Text(
                            'Dec 25',
                            style: TextStyle(color: Colors.grey[500]),
                          ),
                          leading: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(20)),
                              child: Icon(
                                CommunityMaterialIcons.percent,
                                color: Colors.black,
                              )),
                          trailing: Text('+125.00'),
                        ),
                      ),
                    ),
                    Container(
                      width: 135,
                      height: 80,
                      padding: EdgeInsets.only(left: 25),
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Center(
                        child: ListTile(
                          title: Text('5% of \$2500'),
                          subtitle: Text('Dec 25',
                              style: TextStyle(color: Colors.grey[500])),
                          leading: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(20)),
                              child: Icon(
                                CommunityMaterialIcons.percent,
                                color: Colors.black,
                              )),
                          trailing: Text('+125.00'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
