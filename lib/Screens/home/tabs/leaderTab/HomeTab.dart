part of 'HomeTapImports.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  String cost = '300';


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: MyLists.homeTabTitles.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 120,
          leading: Center(
            child: NotifiedButton(
              counter: 8,
              icon: Icons.notifications_none,
              onTapped: (){
                AutoRouter.of(context).push(NotificationScreenRoute());
              },
            ),
          ),
          title: Image.asset(
            'assets/images/logo.png',
            fit: BoxFit.fitHeight,
            width: 50,
          ),
          centerTitle: true,
          actions: [
            Center(
              child: NotifiedButton(
                counter: 8,
                icon: Icons.search_rounded,
                showBadge: false,
                onTapped: (){},
              ),
            ),
            Center(
              child: NotifiedButton(
                counter: 8,
                icon: Icons.shopping_bag_outlined,
                onTapped: (){
                  AutoRouter.of(context).push(ShoppingBagRoute());
                },
              ),
            ),
            SizedBox(
              width: 10,
            )
          ],
          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.label,
            labelPadding: EdgeInsets.symmetric(horizontal: 10),
            isScrollable: true,
            unselectedLabelColor: Colors.black,
            indicatorColor: Colors.black,
            labelColor: Colors.black,
            tabs: List.generate(
              MyLists.homeTabTitles.length,
              (index) => Tab(
                child: Text(MyLists.homeTabTitles[index]),
              ),
            ),
          ),
        ),
        body: ListView(
          children: [
            // CarouselWithIndicator(),
            Container(
              height: 200,
              child: new Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return new Image.network(
                    MyLists.imgList[index],
                    fit: BoxFit.fill,
                    loadingBuilder: (BuildContext context, Widget child,
                        ImageChunkEvent? loadingProgress) {
                      if (loadingProgress == null) {
                        return child;
                      }
                      return Center(
                        child: CircularProgressIndicator(
                          value: loadingProgress.expectedTotalBytes != null
                              ? loadingProgress.cumulativeBytesLoaded /
                              loadingProgress.expectedTotalBytes!
                              : null,
                        ),
                      );
                    },
                  );
                },
                autoplay: true,
                itemCount: MyLists.imgList.length,
                pagination:
                SwiperPagination(builder: SwiperPagination.dots,),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 5),
              child: Text(
                'وصل حديثاً',
                style: MyTextStyle.primaryTextStyle,
              ),
            ),
            HorizontalListView(cost: cost),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      'الأقسامً',
                      style: MyTextStyle.primaryTextStyle,
                    ),
                  ),
                  CategoryWidget(),
                  ResponsiveCard(imageUrl: 'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80', cardName: 'ملابس رجالي',),
                  Row(
                    children: [
                      Expanded(child: ResponsiveCard(imageUrl: 'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',cardName: 'ملابس أطفال',)),
                      Expanded(child: ResponsiveCard(imageUrl: 'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',cardName: 'ملابس نسائي',)),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


