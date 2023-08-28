import 'package:flutter/material.dart';
import 'package:flutter_application_1/helpers/styles.dart';
import 'package:flutter_application_1/presention-layer/views/NewsPage.dart';
import 'package:flutter_application_1/presention-layer/widgets/customText.dart';

class News extends StatelessWidget {
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: CustomText(
            text: 'News',
          ),
        ),
        Column(children: [
          OneNews(),
          OneNews(),
          OneNews(),
          OneNews(),
        ]),
      ],
    );
  }
}

class OneNews extends StatelessWidget {
  const OneNews({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NewsPage(),
          )),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/art.png',
                fit: BoxFit.cover,
                height: 100,
                width: 100,
              ),
              Text(
                maxLines: 3,
                overflow: TextOverflow.fade,
                'ajksdhfaskfka\nsfgkashfkhaksfhasf',
                style: setStyleText(14),
              ),
              Icon(Icons.save),
            ]),
      ),
    );
  }
}
