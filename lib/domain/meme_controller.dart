import 'package:getit_sample/locator.dart';
import 'package:getit_sample/repository/meme_repository.dart';

class MemeDomainController {
  getNextMeme() async {
    //Todo 6: Call The Repository and recieve a meme
    return locator.get<MemeRepo>().getMeme();
  }
}
