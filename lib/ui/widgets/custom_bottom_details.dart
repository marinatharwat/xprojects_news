import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:xprojects_news/core/data/model/responses/news/article.dart';
import 'package:xprojects_news/core/res/colors.dart';
import 'package:xprojects_news/core/utils/book_mark_service.dart';
class CustomBottomDetails extends StatefulWidget {
  final int currentIndex;
  final Function(int) onTap;
  final Article newsArticle;

  const CustomBottomDetails({
    Key? key,
    required this.currentIndex,
    required this.onTap,
    required this.newsArticle,
  }) : super(key: key);

  @override
  State<CustomBottomDetails> createState() => _CustomBottomDetailsState();
}

class _CustomBottomDetailsState extends State<CustomBottomDetails> {
  bool isBookmarked = false;

  @override
  void initState() {
    super.initState();
    checkIfBookmarked();
  }

  void checkIfBookmarked() async {
    final saved = await BookmarkService().isSaved(widget.newsArticle.title);
    setState(() {
      isBookmarked = saved;
    });
  }

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.only(
        left: w * 0.12,
        right: w * 0.12,
        bottom: h * 0.035,
      ),
      child: Container(
        height: h * 0.075,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 15,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SvgPicture.asset(
              "assets/images/svg/circle.svg",
              color: AppColors.grayLight,
            ),
            InkWell(
              onTap: () async {
                if (isBookmarked) {
                  await BookmarkService().removeNews(widget.newsArticle.title);
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Removed!")),
                  );
                } else {
                  await BookmarkService().saveNews(widget.newsArticle);
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Saved!")),
                  );
                }

                setState(() {
                  isBookmarked = !isBookmarked;
                });
              },
              child: SvgPicture.asset(
                "assets/images/svg/bookmark_outline.svg",
                color: isBookmarked ? AppColors.green : AppColors.grayLight,
                colorBlendMode: BlendMode.srcIn,
              ),
            ),
            SvgPicture.asset(
              "assets/images/svg/arrow.svg",
              color: AppColors.grayLight,
            ),
          ],
        ),
      ),
    );
  }
}
