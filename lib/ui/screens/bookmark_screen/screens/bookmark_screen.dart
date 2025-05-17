import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:xprojects_news/core/data/model/responses/news/article.dart';
import 'package:xprojects_news/core/res/app_text_theme.dart';
import 'package:xprojects_news/core/res/colors.dart';
import 'package:xprojects_news/core/utils/book_mark_service.dart';
import 'package:xprojects_news/ui/screens/home_screen/widgets/latest_new_item.dart';
import 'package:xprojects_news/ui/widgets/cusom_bottom_bar.dart';

class BookMarkScreen extends StatefulWidget {
  const BookMarkScreen({super.key});

  @override
  BookMarkScreenState createState() => BookMarkScreenState();
}

class BookMarkScreenState extends State<BookMarkScreen> {
  List<Article> bookMark = [];

  @override
  void initState() {
    super.initState();
    loadBookMark();
  }

  void loadBookMark() async {
    final news = await BookmarkService().getSavedNews();
    setState(() {
      bookMark = news;
    });
  }

  void removeArticle(int index) async {
    final article = bookMark[index];
    await BookmarkService().removeNews(article.title);
    loadBookMark();
  }


  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.all(w * 0.02),
          child: InkWell(
            onTap: () => Scaffold.of(context).openDrawer(),
            child: SvgPicture.asset("assets/images/svg/menu_icon.svg"),
          ),
        ),
        actions: [Padding(
          padding: EdgeInsets.all(w * 0.02),
          child: SvgPicture.asset("assets/images/svg/search_icon.svg"),
        )],
        backgroundColor: AppColors.white,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: w * 0.04),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("collections".tr(),
                    style: AppTextTheme.h1.copyWith(fontWeight: FontWeight.w900)),
                SizedBox(height: h * 0.2, child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Image.asset('assets/images/png/1.png'),
                    SizedBox(width: w * 0.01),
                    Image.asset('assets/images/png/2.png'),
                    SizedBox(width: w * 0.01),
                    Image.asset('assets/images/png/2.png'),
                  ],
                )),
                SizedBox(height: h * 0.01),
                Text("latest_bookmarks".tr(),
                    style: AppTextTheme.h2.copyWith(fontWeight: FontWeight.w500)),
                SizedBox(height: h * 0.02),
                Expanded(
                  child: bookMark.isEmpty
                      ? Center(child: Text('no_news_saved'.tr(), style: AppTextTheme.body))
                      : ListView.builder(
                    padding: EdgeInsets.only(bottom: h * 0.12),
                    itemCount: bookMark.length,
                    itemBuilder: (ctx, i) {
                      final item = bookMark[i];
                      return Dismissible(
                        key: Key(item.title),
                        direction: DismissDirection.endToStart,
                        onDismissed: (_) {
                          removeArticle(i);
                          ScaffoldMessenger.of(context).showSnackBar(
                               SnackBar(content: Text('news_removed'.tr())));
                        },
                        background: Container(
                          padding: EdgeInsets.symmetric(horizontal: w * 0.05),
                          alignment: Alignment.centerRight,
                          color: AppColors.light,
                          child: Padding(
                            padding: EdgeInsets.all(w * 0.02),
                            child: SvgPicture.asset("assets/images/svg/close.svg"),
                          ),
                        ),
                        child: LatestNewsItem(newsArticle: item),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: w * 0.08,
            right: w * 0.08,
            bottom: h * 0.03,
            child: CustomBottomNavBar(
              currentIndex: 1,
              onTap: (index) {
              },
            ),
          ),
        ],
      ),
    );
  }
}
