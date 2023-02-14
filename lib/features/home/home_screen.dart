import 'package:flutter/material.dart';
import 'package:my_jpj_sample/features/home/widgets/home_option_item.dart';
import 'package:my_jpj_sample/features/home/widgets/license_view_item.dart';
import 'package:my_jpj_sample/features/home/widgets/roadtax_view_item.dart';
import 'package:my_jpj_sample/features/home/widgets/vehicle_list_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPage = 0;
  bool onViewRoadtax = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(border: Border.all(width: 1, color: Colors.white)),
              child: Text('EN'),
            ),
            const SizedBox(width: 10),
            Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(border: Border.all(width: 1, color: Colors.white)),
              child: Text('FAQ'),
            )
          ],
        ),
        backgroundColor: Colors.red,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 150,
              width: double.maxFinite,
              decoration: const BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Ali Bin Abu',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    '980101011234',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            IntrinsicHeight(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                margin: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    HomeOptionItem(
                      title: 'Update\nProfile',
                      icon: Icons.update,
                    ),
                    HomeOptionItem(
                        title: 'View Terms\nand Conditions', icon: Icons.note_alt_outlined),
                    HomeOptionItem(
                      title: 'Change\nPassword',
                      icon: Icons.shield_outlined,
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: currentPage == 0 ? Colors.red : Colors.white,
                    ),
                    onPressed: () => setState(() => currentPage = 0),
                    child: Text(
                      'Driving License',
                      style: TextStyle(
                        color: currentPage == 0 ? Colors.white : Colors.red,
                      ),
                    )),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: currentPage == 1 ? Colors.red : Colors.white,
                  ),
                  onPressed: () => setState(() => currentPage = 1),
                  child: Text(
                    'Road Tax',
                    style: TextStyle(
                      color: currentPage == 1 ? Colors.white : Colors.red,
                    ),
                  ),
                ),
              ],
            ),
            if (currentPage == 0) ...[
              const LicenseViewItem(image: 'assets/images/license-sample.png'),
            ] else if (currentPage == 1) ...[
              if (!onViewRoadtax) ...[
                const SizedBox(height: 20.0),
                const Text(
                  'Updated on 12-02-2023',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 30.0),
                  child: Column(
                    children: [
                      const SizedBox(height: 20.0),
                      const Text(
                        'Motorcycle',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
                        child: Column(
                          children: [
                            VehicleListItem(
                              regNo: 'VCC1103',
                              onClick: () => setState(() => onViewRoadtax = true),
                            ),
                            const SizedBox(height: 15.0),
                            VehicleListItem(
                              regNo: 'TYQ1103',
                              onClick: () => setState(() => onViewRoadtax = true),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15.0),
                      const Text(
                        'Vehicle',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
                        child: Column(
                          children: [
                            VehicleListItem(
                              regNo: 'VCC1103',
                              onClick: () => setState(() => onViewRoadtax = true),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ] else ...[
                RoadtaxViewItem(
                  image: 'assets/images/roadtax-sample.png',
                  onClick: () => setState(() => onViewRoadtax = false),
                ),
              ]
            ]
          ],
        ),
      ),
    );
  }
}
