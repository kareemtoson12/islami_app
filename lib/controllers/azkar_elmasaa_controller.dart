import 'package:get/get.dart';

class AzkarElmassaController extends GetxController {
  var ayetElkorsy =
      "للهم أنت ربي لا إله إلا أنت، خلقتني وأنا عبدك، وأنا على عهدك ووعدك ما استطعت، أعوذ بك من شر ما صنعت، أبوء لك بنعمتك عليّ، وأبوء لك بذنبي، فاغفر لي، فإنه لا يغفر الذنوب إلا أنت"
          .obs;

  var bismillah =
      "بِسْمِ اللَّهِ الَّذِي لا يَضُرُّ مَعَ اسْمِهِ شَيْءٌ فِي الأَرْضِ وَلا فِي السَّمَاءِ وَهُوَ السَّمِيعُ العَلِيمُ"
          .obs;
  var radetbEllah =
      "اللهم أنت ربي لا إله إلا أنت، خلقتني وأنا عبدك، وأنا على عهدك ووعدك ما استطعت، أعوذ بك من شر ما صنعت، أبوء لك بنعمتك عليّ، وأبوء لك بذنبي، فاغفر لي، فإنه لا يغفر الذنوب إلا أنت."
          .obs;

  var astaghfirullah = "سبحان الله وبحمده".obs;
  var bismillah2 =
      'اللهم بك أصبحنا وبك أمسينا، وبك نحيا وبك نموت، وإليك المصير.';

  var bismalaaj3 =
      'أمسينا وأمسى الملك لله وحده لا شريك له، له الملك وله الحمد وهو على كل شيء قدير، رب أسألك خير هذه الليلة، وأعوذ بك من شرها وشر ما فيها، رب أعوذ بك من الكسل وسوء الكبر، رب أعوذ بك من عذاب في النار وعذاب في القبر.';
  var bismillahCounter = 3.obs;

  var bismillahCounter2 = 3.obs;
  var radetbEllahCounter = 3.obs;
  var astaghfirullahCounter = 100.obs;

  void decrement(RxInt counter) {
    if (counter.value > 0) {
      counter.value--;
    }
  }
}
