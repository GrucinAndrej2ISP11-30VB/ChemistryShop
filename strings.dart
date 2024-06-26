class Products {
  int id;
  String name;
  String cost;
  String shortdesc;
  String desc;
  String photo;
  Products(this.id, this.name, this.shortdesc, this.cost, this.desc, this.photo);
}
class AccountInfo {
  static String email = "";
  static String password = "";
  static String name = "";
  static String lastName = "";
  static bool isAuth = false;
}

class FavStrings {
  int id;
  int oldid;
  String name;
  String cost;
  String photo;
  FavStrings(this.id, this.oldid, this.name, this.cost, this.photo);
}

class CartStrings {
  int id;
  int oldid;
  String name;
  String cost;
  String photo;
  int quantity;
  CartStrings(this.id, this.oldid, this.name, this.cost, this.photo, {this.quantity = 1});
}

List<Products> products = [
  Products(1, "Кислородный жидкий отбеливатель и пятновыводитель без хлора Vanish Oxi Action для белого белья и тканей, 1 л",
      "441руб." "Отбеливатель и пятновыводитель Vanish Oxi Action обеспечивает превосходное удаление пятен,",
          "делая белые вещи еще белее!",
              "Даже в холодной воде (30°С)",
      "Не содержит хлор."),
  Products(2, "Набор Чистый дом" "441руб."
      " - это набор эффективных средств для поддержания чистоты",
      " и свежести в вашем доме.",
      "Набор сочетает в себе средства,",
      "которые не только удаляют загрязнения,",
      "но и обеспечивают гигиену и свежесть."),
  Products(3, "Гель для стирки цветного белья TIME, 2 л", "231 руб.", "Гель для стирки цветного белья hemotec TIME современное жидкое средство,",
      "которое подходит и для машинки автомат, и для ручной стирки.", "При регулярном использовании TIME для цветного белья сохраняет яркость красок, препятствует от быстрого появления «эффекта застирывания»,"),
  Products(4, "Средство для мытья пола Mister DEZ 1Л", "159руб." "Лаванда", "Позаботься о своём доме и о здоровье своей семьи вместе с Mister Dez! Mister Dez ценит своих клиентов и стремится,",
          "чтобы уборка дома была лёгкой и доставляла удовольствие,",
              "была безопасна для здоровья и не требовала больших финансовых расходов, чтобы наши покупатели сэкономленное время и деньги могли тратить на своих детей,""родных и близких людей."),
  Products(5, "Средство Grass щелочное для прочистки труб, 750 мл 2 шт" "814руб.",
      "ваше решение проблем с засорами.",
          "Это средство эффективно борется с засорами и труднодоступными пробками в канализационных трубах,",
              "устраняя обычные трудности,",
                  "связанные с проблемами водопровода."),
  Products(6, "Кислородный отбеливатель и пятновыводитель для белых тканей Vanish Oxi Action, 500г", "354руб.",
                  "Отбеливатель и пятновыводитель Vanish Oxi Action",
                      " обеспечивает превосходное удаление пятен,", "делая белые вещи еще белее! Даже в холодной воде (30°С) , Не содержит хлор."),
  Products(7, "Гель для стирки 2 в 1 BioMio 900 мл с пятновыводителем, для цветного и белого белья, жидкий порошок концентрат, гипоаллергенный без запаха", "362руб.", "Экологичный гель для стирки",
      "с пятновыводителем Bio Mio Bio-Laundry Gel 2-in-1 , разработан с использованием инновационных технологий.",
          "Эффективно удаляет свежие пятна даже в холодной воде (+20°С). Благодаря циклодекстринам — молекулам из крахмала — концентрированный гель устраняет с одежды неприятные запахи."),
  Products(8, "Гипоаллергенный эко кондиционер ополаскиватель для взрослого и детского белья BioMio BIO-SOFT Концентрат, ЭВКАЛИПТ, 1000 мл, 2 шт", "594", "Экологичный гель для стирки черных,",
      "темных и джинсовых тканей BIO-LAUNDRY GEL Blacks&Darks разработан с использованием инновационных технологий.",
          "Умная формула геля создана для уменьшения катышков и сохранения цвета вещей."),
  Products(9, "Гель для мытья посуды KIX, концентрированный, 5 л, Лимон", "617руб.", "Концентрированный гель для мытья посуды KIX эффективно удаляет жир,",
      "запахи и остатки пищи, хорошо смывается с посуды. Средство безопасно для использования: не содержит фосфаты, фосфонаты и хлор.",
  "Бережная формула гель-бальзама с ароматом лимона эффективно растворяет жир даже в холодной воде. Подходит для всех типов посуды, кухонных принадлежностей и поверхностей."),
  Products(10, "Средство для чистки увлажнителей и очистителей воздуха GOODHELPER / гигиеническая добавка WA-250", "309руб.", "GOODHELPER WA-250 эффективно удаляет известковый налёт с внутренних поверхностей приборов,",
      "продлевает срок эксплуатации, подходит для всех типов увлажнителей и очистителей воздуха, кроме поверхностей, чувствительных к кислотам. Перед использованием внимательно изучите инструкцию по эксплуатации вашего прибора.",
                  "Способ применения: для удаления известкового отложения, налёта, накипи заполнить водой чуть выше уровня загрязнённого слоя."),
  Products(11, "Средство для мытья посуды BIOELE Лимон Лемонграсс 1л, антибактериальное, гипоаллергенное, биоразлагаемое, эко, моющее", "117руб.", "Не сушит кожу и не вызывает раздражений.",
      "Содержит безопасные компоненты, которые полностью смываются с посуды. Гель для посуды Bioele отлично справляется с самыми сильными загрязнениями на посуде. Моющие средства Bioele не вредят микрофлоре и водным организмам, а также подходят для септиков.",
    "Средство для мытья посуды BIOELE Лимон Лемонграсс 1Л в индивидуальной коробке."),
  Products(12, "антикальций средство P-ANT-Cleanfit-01", "338руб.", "Чистящее средство для ванной и унитаза,",
      "универсальное средство для чистки акриловых ванн, душевых кабин, спрей для удаления известкового налета, ржавчины и плесени.",
              "Эффективное средство с дез эффектом для уборки известкового налета. Описание продукта: КлинФит - Средство с дезинфицирующим эффектом для уборки и обновления поверхностей."),
  Products(13, "Порошок стиральный Автомат Ariel Color, 100 стирок, 15 кг", "2331руб.", "cтиральный порошок Ariel Color Автомат для стиральной машины предназначен для стирки цветного и белого белья.",
      "Благодаря технологии Аквапудра, порошок для стирки Ariel Color растворяется, едва коснувшись воды, и моментально активируется:",
          "глубоко проникает в структуру волокон и удаляет сложные пятна, не давая загрязнениям въедаться."),
  Products(14, "Средство для прочистки труб KROT TORNADO Гель для сложных засоров 1000 гр.", "289руб.", "Средство для прочистки канализационных труб KROT TORNADO Гель для сложных засоров 1000 гр. подходит для использования на КУХНЕ,",
      "ВАННОЙ комнате, душевых кабин, так же используется как волосогон антизасор.",
          "Безопасно для всех видов труб, в том числе пластиковых."),
  Products(15, "Жироудалитель для кухни и посуды AZENTAIL, 600 мл", "195руб.", "Универсальное средство для кухни. Удаляет жир, нагар, копоть и пригоревшую пищу с изделий из нержавеющей стали, стекла, фаянса.",
      "Используется для мытья сковородок, кухонных плит, коптильных камер, казанов, фритюрниц, грилей, шампуров, духовых шкафов, микроволновых печей и др.",
          "Содержит активные компоненты, расщепляющие жир,  действие которых гарантирует отличный результат без особых усилий."),
];
List<String> photos = [
  // 1
  "https://ir.ozone.ru/s3/multimedia-x/wc350/6472003521.jpg",
  "https://ir.ozone.ru/s3/multimedia-l/wc350/6888410937.jpg",
  "https://ir.ozone.ru/s3/multimedia-e/wc350/6472003466.jpg",
  // 2
  "https://ir.ozone.ru/s3/multimedia-1-7/wc350/6935215603.jpg",
  "https://ir.ozone.ru/s3/multimedia-1-n/wc350/6935215619.jpg",
  "https://ir.ozone.ru/s3/multimedia-1-y/wc350/6935215630.jpg",
  // 3
  "https://ir.ozone.ru/s3/multimedia-c/wc350/6752082756.jpg",
  "https://ir.ozone.ru/s3/multimedia-b/wc350/6752082755.jpg",
  "https://ir.ozone.ru/s3/multimedia-k/wc350/6579408260.jpg",
  // 4
  "https://ir.ozone.ru/s3/multimedia-n/wc350/6653387111.jpg",
  "https://ir.ozone.ru/s3/multimedia-a/wc350/6436208338.jpg",
  "https://ir.ozone.ru/s3/multimedia-d/wc350/6326657605.jpg",
  // 5
  "https://ir.ozone.ru/s3/multimedia-1-o/wc350/7011189096.jpg",
  "https://ir.ozone.ru/s3/multimedia-i/wc350/6889400334.jpg",
  "https://ir.ozone.ru/s3/multimedia-x/wc350/6900427473.jpg",
  // 6
  "https://ir.ozone.ru/s3/multimedia-3/wc350/6888410883.jpg",
  "https://ir.ozone.ru/s3/multimedia-8/wc350/6876929372.jpg",
  "https://ir.ozone.ru/s3/multimedia-4/wc350/6472003564.jpg",
  // 7
  "https://ir.ozone.ru/s3/multimedia-h/wc350/6653427065.jpg",
  "https://ir.ozone.ru/s3/multimedia-7/wc350/6653427019.jpg",
  "https://ir.ozone.ru/s3/multimedia-w/wc350/6653427080.jpg",
  // 8
  "https://ir.ozone.ru/s3/multimedia-5/wc350/6681780617.jpg",
  "https://ir.ozone.ru/s3/multimedia-6/wc350/6681780618.jpg",
  "https://ir.ozone.ru/s3/multimedia-1/wc350/6681780613.jpg",
  // 9
  "https://ir.ozone.ru/s3/multimedia-d/wc350/6728263849.jpg",
  "https://ir.ozone.ru/s3/multimedia-b/wc350/6560695151.jpg",
  "https://ir.ozone.ru/s3/multimedia-q/wc350/6560695166.jpg",
  // 10
  "https://ir.ozone.ru/s3/multimedia-1-2/wc350/6922911206.jpg",
  "https://ir.ozone.ru/s3/multimedia-1-k/wc350/6911348924.jpg",
  "https://ir.ozone.ru/s3/multimedia-1-p/wc350/6906751261.jpg",
  // 11
  "https://ir.ozone.ru/s3/multimedia-1-u/wc350/6927321486.jpg",
  "https://ir.ozone.ru/s3/multimedia-1-k/wc350/6927321440.jpg",
  "https://ir.ozone.ru/s3/multimedia-1-c/wc350/6927321504.jpg",
  // 12
  "https://ir.ozone.ru/s3/multimedia-w/wc350/6744780680.jpg",
  "https://ir.ozone.ru/s3/multimedia-z/wc350/6744780683.jpg",
  "https://ir.ozone.ru/s3/multimedia-t/wc350/6744780677.jpg",
  // 13
  "https://ir.ozone.ru/s3/multimedia-1-j/wc350/7030670659.jpg",
  "https://ir.ozone.ru/s3/multimedia-1-0/wc350/6944090100.jpg",
  "https://ir.ozone.ru/s3/multimedia-8/wc350/6816378560.jpg",
  // 14
  "https://ir.ozone.ru/s3/multimedia-u/wc350/6388144218.jpg",
  "https://ir.ozone.ru/s3/multimedia-w/wc350/6388144220.jpg",
  "https://ir.ozone.ru/s3/multimedia-t/wc350/6388144217.jpg",
  // 15
  "https://ir.ozone.ru/s3/multimedia-1-a/wc350/6957049690.jpg",
  "https://ir.ozone.ru/s3/multimedia-1-z/wc350/6957049751.jpg",
  "https://ir.ozone.ru/s3/multimedia-1-8/wc350/6957049760.jpg"
];
