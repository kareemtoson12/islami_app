import 'package:get/get.dart';

class HadithController extends GetxController {
  RxList<String> hadiths = [
    "إنما الأعمال بالنيات، وإنما لكل امرئ ما نوى. (متفق عليه)",
    "من حسن إسلام المرء تركه ما لا يعنيه. (رواه الترمذي)",
    "لا يؤمن أحدكم حتى يحب لأخيه ما يحب لنفسه. (متفق عليه)",
    "من كان يؤمن بالله واليوم الآخر فليقل خيرًا أو ليصمت. (متفق عليه)",
    "الدين النصيحة. (رواه مسلم)",
    "المسلم من سلم المسلمون من لسانه ويده. (متفق عليه)",
    "الحياء شعبة من الإيمان. (متفق عليه)",
    "من لا يَرحم لا يُرحم. (متفق عليه)",
    "من غشنا فليس منا. (رواه مسلم)",
    "البِرُّ حسن الخلق. (رواه مسلم)",
    "اتق الله حيثما كنت. (رواه الترمذي)",
    "قل آمنت بالله ثم استقم. (رواه مسلم)",
    "الظلم ظلمات يوم القيامة. (متفق عليه)",
    "الكلمة الطيبة صدقة. (رواه البخاري)",
    "من كان في حاجة أخيه كان الله في حاجته. (رواه مسلم)",
    "يسروا ولا تعسروا، وبشروا ولا تنفروا. (متفق عليه)",
    "إن الله كتب الإحسان على كل شيء. (رواه مسلم)",
    "كل معروف صدقة. (متفق عليه)",
    "ليس الشديد بالصرعة، إنما الشديد الذي يملك نفسه عند الغضب. (متفق عليه)",
    "إذا مات ابن آدم انقطع عمله إلا من ثلاث: صدقة جارية، أو علم يُنتفع به، أو ولد صالح يدعو له. (رواه مسلم)",
    "أحب الأعمال إلى الله أدومها وإن قل. (متفق عليه)",
    "الدعاء هو العبادة. (رواه الترمذي)",
    "خيركم من تعلم القرآن وعلمه. (رواه البخاري)",
    "من أقال مسلماً أقاله الله عثرته يوم القيامة. (رواه أبو داود)",
    "من تطهر في بيته ثم مشى إلى بيت من بيوت الله ليقضي فريضة من فرائض الله، كانت خطواته إحداها تحط خطيئة، والأخرى ترفع درجة. (رواه مسلم)",
    "اتقوا النار ولو بشق تمرة. (متفق عليه)",
    "إذا أحب الله عبداً ابتلاه. (رواه الترمذي)",
    "من صلى البردين دخل الجنة. (رواه البخاري)",
    "من صام يوماً في سبيل الله، باعد الله وجهه عن النار سبعين خريفاً. (متفق عليه)",
    "لا تغضب. (رواه البخاري)",
    "من سلك طريقًا يلتمس فيه علمًا، سهل الله له به طريقًا إلى الجنة. (رواه مسلم)",
    "كل المسلم على المسلم حرام: دمه وماله وعرضه. (متفق عليه)",
    "الدنيا سجن المؤمن وجنة الكافر. (رواه مسلم)",
    "اتبع السيئة الحسنة تمحها، وخالق الناس بخلق حسن. (رواه الترمذي)",
    "من ستر مسلماً ستره الله في الدنيا والآخرة. (رواه مسلم)",
    "من عال جاريتين حتى تبلغا جاء يوم القيامة أنا وهو كهاتين. (رواه مسلم)",
    "ما نقصت صدقة من مال. (رواه مسلم)",
    "من عاد مريضاً أو زار أخًا له في الله ناداه منادٍ: أن طبت وطاب ممشاك وتبوأت من الجنة منزلاً. (رواه الترمذي)",
    "إن الله لا ينظر إلى صوركم وأموالكم ولكن ينظر إلى قلوبكم وأعمالكم. (رواه مسلم)",
    "من كان يؤمن بالله واليوم الآخر فليكرم جاره. (متفق عليه)",
    "إن الله رفيق يحب الرفق. (رواه مسلم)",
    "الصدق يهدي إلى البر. (متفق عليه)",
    "اجتنبوا السبع الموبقات. (متفق عليه)",
    "لا يدخل الجنة من لا يأمن جاره بوائقه. (رواه مسلم)",
    "إن الله يغفر الذنوب جميعًا. (رواه الترمذي)",
    "الصيام جنة. (رواه البخاري)",
    "ليس منا من لم يرحم صغيرنا ويعرف شرف كبيرنا. (رواه الترمذي)",
    "من تواضع لله رفعه. (رواه مسلم)",
    "المؤمن للمؤمن كالبنيان يشد بعضه بعضًا. (متفق عليه)",
    "إنما المؤمنون إخوة. (رواه مسلم)",
    "الصدق منجاة. (رواه البخاري)",
    "من صمت نجا. (رواه الترمذي)",
    "الساعي على الأرملة والمسكين كالمجاهد في سبيل الله. (رواه البخاري)",
    "تبسمك في وجه أخيك صدقة. (رواه الترمذي)",
    "يد الله مع الجماعة. (رواه الترمذي)",
    "إماطة الأذى عن الطريق صدقة. (متفق عليه)",
    "الكبائر: الإشراك بالله، وعقوق الوالدين، وقتل النفس. (متفق عليه)",
    "من غدا إلى المسجد أو راح أعد الله له نزلاً في الجنة. (متفق عليه)",
    "عليكم بالصلاة فإنها نور. (رواه ابن ماجه)",
    "الرفق ما كان في شيء إلا زانه. (رواه مسلم)",
    "الأعمال بالنيات. (رواه البخاري)",
    "طعام الواحد يكفي الاثنين. (رواه البخاري)",
    "لا يؤمن أحدكم حتى يحب لأخيه ما يحب لنفسه. (رواه مسلم)",
    "من كان يؤمن بالله واليوم الآخر فليكرم ضيفه. (رواه مسلم)",
    "إن الله جميل يحب الجمال. (رواه مسلم)",
    "لا تزال طائفة من أمتي ظاهرين على الحق. (رواه البخاري)",
    "من أبطأ به عمله لم يسرع به نسبه. (رواه مسلم)",
    "الخلق عيال الله. (رواه البزار)",
    "الإنسان على دين خليله فلينظر أحدكم من يخالل. (رواه الترمذي)",
    "اتقوا دعوة المظلوم. (رواه البخاري)",
    "من أطعمني في سبيل الله أطعمته من طعام الجنة. (رواه البخاري)",
    "من حفر بئرًا شرب منه مسلم فله أجر. (رواه ابن ماجه)",
    "من توكل على الله كفاه. (رواه الترمذي)",
    "الجار أحق بصقبه. (رواه البخاري)",
    "الغضب من الشيطان. (رواه الترمذي)",
    "الخير فيَّ وفي أمتي إلى يوم القيامة. (رواه ابن عساكر)",
    "من سمع سمع الله به، ومن يرائي يرائي الله به. (رواه البخاري)",
    "من أعتق رقبة مسلمة أعتق الله بكل عضو منه عضوًا من النار. (متفق عليه)",
    "إذا أحب الله عبداً حببه إلى الناس. (رواه الترمذي)",
    "من تواضع لله رفعه. (رواه الترمذي)",
    "من شرب الخمر في الدنيا حرمها في الآخرة. (رواه البخاري)",
    "من لم يدع قول الزور والعمل به فليس لله حاجة أن يدع طعامه وشرابه. (رواه البخاري)",
    "من صام رمضان إيمانًا واحتسابًا غفر له ما تقدم من ذنبه. (متفق عليه)",
    "الصبر ضياء. (رواه مسلم)",
    "من صبر على أذى الناس نال الرضا. (رواه الترمذي)",
    "من خاف أدلج. (رواه الترمذي)",
    "من دعا إلى هدى كان له من الأجر مثل أجور من تبعه. (رواه مسلم)",
    "الراحمون يرحمهم الرحمن. (رواه الترمذي)",
    "من نذر أن يطيع الله فليطعه. (رواه البخاري)",
    "ما من يوم يصبح العباد فيه إلا وملكان ينزلان فيقول أحدهما: اللهم أعط منفقًا خلفًا، ويقول الآخر: اللهم أعط ممسكًا تلفًا. (رواه مسلم)",
    "أفضل الصدقة سقي الماء. (رواه أحمد)",
    "من غدا إلى المسجد أو راح أعد الله له في الجنة نزلًا كلما غدا أو راح. (رواه البخاري)"
  ].obs;
}
