import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:leader/routes/RouterImports.gr.dart';
import 'package:leader/Utilities.dart';
class TabContent extends StatelessWidget {
  const TabContent({
    Key? key,
    required this.listLength,
    required this.showBadge,
    required this.cost,
  }) : super(key: key);

  final int listLength;
  final bool showBadge;
  final int cost;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 15),
          alignment: Alignment.center,
          child: Wrap(
            children: List.generate(
                listLength,
                    (index) => Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    height: MediaQuery.of(context).size.height * 0.25,
                    width: MediaQuery.of(context).size.width * 0.27,
                    child: Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.20,
                          width: MediaQuery.of(context).size.width * 0.27,
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80'),
                                  fit: BoxFit.fill)),
                          child: Offstage(
                            offstage: !showBadge,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      child: ImageIcon(
                                        AssetImage('assets/images/fav.png'),
                                        size: 15,
                                        color: Colors.red,
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.white.withOpacity(0.5),
                                          shape: BoxShape.circle),
                                    ),
                                  ],
                                ),
                                InkWell(
                                  onTap: (){
                                    AutoRouter.of(context).push(ProductDetailsRoute());
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(5),
                                    child: Icon(Icons.shopping_bag_outlined,size: 15,),
                                    decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.5),
                                        shape: BoxShape.circle),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Text(' ر.س$cost',
                            style: MyTextStyle.secondaryTextStyle),
                      ],
                    ))),
          ),
        ),
      ],
    );
  }
}