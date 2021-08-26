import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:leader/Screens/globalwidgets/BottomButton.dart';
import 'package:leader/Screens/settings/otherSettings/widgets/CustomAppBar.dart';
import 'package:leader/routes/RouterImports.gr.dart';
class LanguageScreen extends StatefulWidget {
  LanguageScreen({Key? key}) : super(key: key);

  @override
  _LanguageScreenState createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {

  bool English2 = true;
  bool Arapic = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'اللغة',
      ),
      body: Container(
        color: Colors.grey[100],
        child: Column(
          children: [
            ListTile(
              leading: Image.asset('assets/images/saudi-arabia .png'),
              title: Text(
                'Arabic',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              trailing: Checkbox(
                activeColor: Colors.black,
                value: Arapic,
                onChanged: (value) {
                  setState(() {
                    Arapic = value!;
                    English2 = !value;
                  });
                },
              ),
            ),
            Divider(thickness: 2,),
            ListTile(
              tileColor: Colors.white,
              leading: Image.asset('assets/images/uk .png'),
              title: Text(
                'English',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
               trailing: Checkbox(
                 activeColor: Colors.black,
                 value: English2,
                 onChanged: (value) {
                   setState(() {
                     English2 = value!;
                     Arapic = !value;
                   });
                 },
               ),
            ),
            Divider(thickness: 2,),
            Expanded(child: Container()),
            Container(
              padding: EdgeInsets.all(20),
              child: BottomButton(
                title: 'Save Changes',onTab: () {
                AutoRouter.of(context).replace(HomePageRoute(index: 0));
              },),
            ),
          ],
        ),
      ),
    );
  }
}
