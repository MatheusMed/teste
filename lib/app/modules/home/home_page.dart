import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste/app/modules/historico/historico_page.dart';
import 'package:teste/app/modules/home/home_controller.dart';
import 'package:teste/app/repository/model/user_model.dart';

class HomePage extends GetResponsiveView<HomeController> {
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
                trailing: SizedBox(
                  height: 45,
                  child: OutlinedButton(
                    style:
                        OutlinedButton.styleFrom(backgroundColor: Colors.white),
                    child: Text(
                      'Payday in a week',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.green,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  'Total Balance to spend',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                subtitle: Text(
                  ' \$5785.55',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                ),
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
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ListTile(
                title: Text(
                  'Planning Ahead',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                trailing: Text(
                  '-\$540.52',
                  style: TextStyle(fontSize: 17),
                ),
              ),
              Container(
                height: 160,
                padding: EdgeInsets.all(10),
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [horizontalList1],
                ),
              ),
              SizedBox(height: 25),
              Divider(
                thickness: 1,
                height: 1,
                color: Colors.grey.shade400,
                indent: 5,
                endIndent: 5,
              ),
              ListTile(
                title: Text(
                  'Last Month Expense',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                trailing: Text(
                  '-\$1800.50',
                  style: TextStyle(fontSize: 17),
                ),
              ),
              Container(
                height: 70,
                padding: EdgeInsets.all(10),
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [horizontalList2],
                ),
              ),
              Container(
                height: 220,
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
                            title: Text('Craftwork'),
                            leading: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Icon(
                                  CommunityMaterialIcons.flower_tulip,
                                  color: Colors.white,
                                )),
                            trailing: Text('-150.52'),
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
                            title: Text('Focus Lab'),
                            leading: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Image.asset('assets/icons/f.png'),
                            ),
                            trailing: Text('-150.52'),
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
                            title: Text('Craftwork'),
                            leading: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Icon(Icons.add),
                            ),
                            trailing: Text('-150.52'),
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
      ),
    );
  }

  Widget horizontalList1 = Container(
    height: 140,
    child: new ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        SizedBox(width: 10),
        Container(
          width: 135,
          padding: EdgeInsets.only(left: 25),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20)),
                child: Icon(
                  CommunityMaterialIcons.cash_multiple,
                  size: 28,
                  color: Colors.white,
                ),
              ),
              Text(
                '-150.52',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                ),
              ),
              Text('in a 2 days'),
            ],
          ),
        ),
        SizedBox(width: 10),
        Container(
          width: 135,
          padding: EdgeInsets.only(left: 25),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20)),
                  child: Image.asset('assets/icons/n.png')),
              Text(
                '-150.52',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                ),
              ),
              Text('in a 2 days'),
            ],
          ),
        ),
        SizedBox(width: 10),
        Container(
          width: 135,
          padding: EdgeInsets.only(left: 25),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset('assets/icons/r.png')),
              Text(
                '-150.52',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                ),
              ),
              Text('in a 2 days'),
            ],
          ),
        ),
        SizedBox(width: 10),
        Container(
          width: 135,
          padding: EdgeInsets.only(left: 25),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20)),
                  child: Icon(Icons.add)),
              Text(
                '-150.52',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                ),
              ),
              Text('in a 2 days'),
            ],
          ),
        ),
        SizedBox(width: 10),
      ],
    ),
  );
  Widget horizontalList2 = new Container(
    height: 50,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Container(
          width: 55,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('25', style: TextStyle(color: Colors.grey[500])),
              Text('Mar', style: TextStyle(color: Colors.grey[500])),
            ],
          ),
        ),
        Container(
          width: 55,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('26', style: TextStyle(color: Colors.grey[500])),
              Text('Mar', style: TextStyle(color: Colors.grey[500])),
              Icon(Icons.circle, size: 7),
            ],
          ),
        ),
        Container(
          width: 55,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('27', style: TextStyle(color: Colors.grey[500])),
              Text('Mar', style: TextStyle(color: Colors.grey[500])),
              // Icon(Icons.circle, size: 7),
            ],
          ),
        ),
        Container(
          width: 55,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('28'),
              Text('Mar'),
              Icon(Icons.circle, size: 7),
            ],
          ),
        ),
        Container(
          width: 55,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('29', style: TextStyle(color: Colors.grey[500])),
              Text('Mar', style: TextStyle(color: Colors.grey[500])),
            ],
          ),
        ),
        Container(
          width: 55,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('30', style: TextStyle(color: Colors.grey[500])),
              Text('Mar', style: TextStyle(color: Colors.grey[500])),
              Icon(Icons.circle, size: 7),
            ],
          ),
        ),
        Container(
          width: 55,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('31', style: TextStyle(color: Colors.grey[500])),
              Text('Mar', style: TextStyle(color: Colors.grey[500])),
              Icon(Icons.circle, size: 7),
            ],
          ),
        ),
        Container(
          width: 55,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('25', style: TextStyle(color: Colors.grey[500])),
              Text('Mar', style: TextStyle(color: Colors.grey[500])),
            ],
          ),
        ),
        Container(
          width: 55,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('25', style: TextStyle(color: Colors.grey[500])),
              Text('Mar', style: TextStyle(color: Colors.grey[500])),
            ],
          ),
        ),
      ],
    ),
  );
}
