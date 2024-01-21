import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teamkhagrachari/all_screen/home/Controller/home_provider.dart';
import 'package:teamkhagrachari/all_screen/news_details/fullnews_screen.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (context, value, child) => ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: value.newList.length,
        itemBuilder: (context, index) => Card(
          child: ListTile(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FullNews(
                      content: value.newList[index].content,
                      thumbnail: value.newList[index].thumbnail,
                      title: value.newList[index].title),
                )),
            leading: Image.network(value.newList[index].thumbnail,
                fit: BoxFit.cover),
            title: Text(
              value.newList[index].title,
              style: const TextStyle(fontFamily: 'myfont'),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            subtitle: Text(value.newList[index].content, maxLines: 2),
          ),
        ),
      ),
    );
  }
}
