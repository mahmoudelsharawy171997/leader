import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:leader/routes/RouterImports.gr.dart';
class SelectedLanguage extends StatelessWidget {
  const SelectedLanguage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 100,horizontal: 20),
        width: double.infinity,
        child: Column(
          children: [
            Center(
              child: Image.asset(
                'assets/images/logo.png',
                fit: BoxFit.fitWidth,
                width: MediaQuery.of(context).size.width * 0.4,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Arabic',
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                  ),
                  Text('Choose Language',
                    style: TextStyle(fontSize: 16,color: Colors.grey[800]),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            InkWell(
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.teal[700]
                ),
                child: Text('العربية',
                  style: TextStyle(fontSize: 20,color: Colors.white),
                ),
              ),
              onTap: (){
                AutoRouter.of(context).replace(HomePageRoute(index: 0));
              },
            ),
            SizedBox(height: 20,),
            InkWell(
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.teal,),
                ),
                child: Text('ENGLISH',
                  style: TextStyle(fontSize: 20,color: Colors.teal[700]),
                ),
              ),
              onTap: (){},
            ),
          ],
        ),
      ),
    );
  }
}
