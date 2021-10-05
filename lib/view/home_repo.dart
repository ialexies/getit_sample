import 'package:flutter/material.dart';
import 'package:getit_sample/domain/meme_controller.dart';
import 'package:getit_sample/domain/models/meme.dart';
import 'package:getit_sample/locator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Meme? visibleMeme;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('fdf'),
      ),
      body: Container(
        child: visibleMeme != null
            ? Center(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Category ${visibleMeme!.category}",
                        style: TextStyle(fontSize: 36),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                        ),
                        child: Image.network(visibleMeme!.imageUrl),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text("Caption: ${visibleMeme!.caption}"),
                    ],
                  ),
                ),
              )
            : Center(child: Text("No Meme Loaded yet")),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.skip_next),
        onPressed: () async {
          // locator.get<MemeDomainController>().getNextMeme();
          Meme meme = await locator.get<MemeDomainController>().getNextMeme();
          setState(() {
            visibleMeme = meme;
          });
        },
      ),
    );
  }
}
