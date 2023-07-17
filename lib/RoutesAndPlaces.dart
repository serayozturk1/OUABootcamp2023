import 'package:flutter/material.dart';
import 'package:travelapp/OnboardingPage.dart';
import 'PlaceWidget.dart';
import 'RouteWidget.dart';
import 'CommentWidget.dart';
import 'ScrollablePlacePage.dart';
import 'DescriptionWidget.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/ScrollableWidgetPage.dart';

class RoutesAndPlaces{
  //METHODS---------------------------------------------------------------------
  static bool placeChecker(String name){
    if(RoutesAndPlaces.placeNames.containsKey(name.toLowerCase())){
      return true;
    }
    else{
      return false;
    }
  }

  static Widget placeGetter(String name){
    if(placeChecker(name)){
      return places[placeNames[name] ?? 0] ?? Container();
    }
    else {
      return Container();
    }
  }

  static List<Widget> categoryRouteGetter(String category){
    List<Widget> widgets = [];
    if(category == "yeme"){
      for(int route in RoutesAndPlaces.yemeRoutes){
        widgets.add(RoutesAndPlaces.routes.elementAt(route));
      }
    }
    else if(category == "kulturel"){
      for(int route in RoutesAndPlaces.kulturelRoutes){
        widgets.add(RoutesAndPlaces.routes.elementAt(route));
      }
    }
    else if(category == "romantik"){
      for(int route in RoutesAndPlaces.romantikRoutes){
        widgets.add(RoutesAndPlaces.routes.elementAt(route));
      }
    }
    else if(category == "doga"){
      for(int route in RoutesAndPlaces.dogaRoutes){
        widgets.add(RoutesAndPlaces.routes.elementAt(route));
      }
    }
    else{
      widgets.add(RoutesAndPlaces.routes.elementAt(0));
    }
    return widgets;
  }

  //DATABASE--------------------------------------------------------------------
  static Map<String, int> placeNames = {
    'St. Antuan Katolik Kilisesi' : 0,
    'Galata Kulesi' : 1,
    'Nusret Steakhouse' : 2,
    'Ortaköy Sahili' : 3,
    'Maçka Parkı' : 4,
    'Ihlamur Kasrı' : 5,
    'Suflör' : 6,
    'İstiklal Caddesi' : 7,
    'Taksim Meydanı' : 8,
    'Modern Sanat Müzesi': 9,
    'Karaköy Lokantası' : 10,
    'Emirgan Sütiş Akaretler' : 11,
    'Akaretler Minoa Cafe' : 12,
    'Dolmabahçe Sarayı' : 13,
    'Maya Kumpir' : 14,
    'Mürver Cafe' : 15,
    'Beyoğlu Yeşilçam Sineması' : 16,
    'Akaretler Minoa Cafe' : 17,




  };

  static List<int> yemeRoutes= [
    1
  ];

  static List<int> kulturelRoutes= [
    0,4
  ];

  static List<int> romantikRoutes= [
    3
  ];

  static List<int> dogaRoutes= [
    2
  ];

  static List<Widget> places = [PlaceWidgett(

    //TOPKAPI

    name: 'St. Antuan Katolik Kilisesi',
    description: 'St. Antuan Katolik Kilisesi, İstanbul\'un en büyük ve cemaati en geniş Katolik Kilisesi\'dir. Beyoğlu\'ndaki İstiklal Caddesi üzerinde Galatasaray\'dan (Galatasaray Lisesi tarafında) Tünel\'e doğru giderken sol tarafta bulunur.',
    starRating: 4.5,
    imagePath: 'https://media-cdn.tripadvisor.com/media/photo-s/1b/0f/52/99/church-of-st-anthony.jpg',
    comments: [
      CommentWidget(username: "Zeynep Kaya", content: "Tarihi ve kültürel değeri yüksek bir mekan, mutlaka görülmeli!", timestamp: "14.07.2023", starRating: 4.9),
      CommentWidget(username: "Elif Yılmaz", content: "Haftasonu gidecek olanlara tavsiyem erken saatte gidin.", timestamp: "10.05.2023", starRating: 3.9),
      CommentWidget(username: "Mehmet Esen", content: "Her vatandaşımızın gezmesi görmesi gerekir.", timestamp: "10.04.2023", starRating: 5),
      CommentWidget(username: "Melisa Sarıbacak", content: "Atmosferi harika insanın içi huzur doluyor 💕", timestamp: "26.12.2022", starRating: 4),


    ],
  ),

    //GALATA

    PlaceWidgett(
      name: 'Galata Kulesi',
      description: 'Galata Kulesi, İstanbul Boğazı\'nın karşı kıyısında, Galata semtinde yer alan tarihi bir kuledir. 14. yüzyılda inşa edilen kule, muhteşem panoramik manzarasıyla ünlüdür ve şehrin tarihini ve güzelliğini keşfetmek isteyen ziyaretçiler için harika bir noktadır.',
      starRating: 4.3,
      imagePath: 'https://cdn1.ntv.com.tr/gorsel/4yta2Ywj8UaLtcWwu-ixZg.jpg?width=1080&mode=crop&scale=both',
      comments: [
        CommentWidget(username: "Selin Dertlioğlu", content: "İstanbul manzarasının tadını çıkarmak için en iyi noktalardan biri.", timestamp: "18.06.2023", starRating: 4.7),
        CommentWidget(username: "Murat Boz", content: "Galata Kulesi'nden gün batımını izlemek büyüleyici bir deneyim.", timestamp: "22.06.2023", starRating: 4.5),
      ],
    ),
    PlaceWidgett(
      name: 'Nusret Steakhouse',
      description: 'Nusr-Et Steakhouse, ayrıca kaliteli et seçenekleri, lezzetli yanlıkları ve şık atmosferiyle de öne çıkar. Bu kombinasyon, ziyaretçilere keyifli bir yemek deneyimi sunar ve restoranı popüler hale getirir.',
      starRating: 5.0,
      imagePath: 'https://www.naberbro.com/wp-content/uploads/2013/11/nusrethamburger1.jpg',
      comments: [
        CommentWidget(username: "Ece Aydeniz.", content: "İlk kez somonlu sushisini ve avokadolu hamburgerini yedim . Daha önce tüm burgerlerini denemiştim. Hepsi çok güzeldi .", timestamp: "18.06.2023", starRating: 4.9),
        CommentWidget(username: "Özlem Şahin", content: "Bayıldım!", timestamp: "22.06.2023", starRating: 4.9),
      ],
    ),
    PlaceWidgett(
      name: 'Ortaköy Sahili',
      description: 'Ortaköy sahil, geniş yürüyüş ve tarihi alanları sunan popüler bir turistik ve eğlence bölgesidir. Sahil boyunca birçok restoran, kafe, park bulunur.',
      starRating: 4.0,
      imagePath: 'https://istanbeautiful.com/tr/wp-content/uploads/ortakoy-mosque.jpg',
      comments: [
        CommentWidget(username: "Arif Haktan", content: "Hiç beğenmedim, sahil rezaletti.", timestamp: "18.06.2023", starRating: 1.9),
        CommentWidget(username: "Kübra İnce", content: "Tertemiz!", timestamp: "22.06.2023", starRating: 4.9),

      ],
    ),
    PlaceWidgett(
      name: 'Maçka Parkı',
      description: 'Maçka Parkı, İstanbul\'un Şişli ilçesinde yer alan geniş bir parktır.',
      starRating: 4.7,
      imagePath: 'https://www.soihotel.com/wp-content/uploads/2021/09/macka-parki-projesi-degistirildi-246549-5.jpg',
      comments: [
        CommentWidget(username: "Selin Yağcı", content: "Evcil hayvanınızla gezinmeniz için mükemmel bir yer.", timestamp: "18.06.2023", starRating: 4.9),
        CommentWidget(username: "İnci Sarp", content: "Tertemiz!", timestamp: "12.04.2023", starRating: 4.9),
        CommentWidget(username: "Buket Erol", content: "Maçka Parkı bol ağaçlıklı bir yer. Bu nedenle de gölgelik alanlar sıcak havalarda serinlemeye olanak sağlıyor.", timestamp: "11.05.2023", starRating: 3.8),

      ],
    ),
    PlaceWidgett(
      name: 'Ihlamur Kasrı',
      description: 'Ihlamur Kasrı, Beşiktaş ve Nişantaşı arasındaki vadide yer alan Ihlamur Mesiresi\'ndeki kasırdır. Buraya Abdülmecit (1839-1861) tarafından Nigoğos Balyan\'a “Merasim Köşkü” ile “Maiyet Köşkü” olarak adlandırılan iki kasır yaptırılmıştır. Bunlardan Merasim Köşkü, asıl Ihlamur Kasrı\'dır.',
      starRating: 4.7,
      imagePath: 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/17/72/5a/9f/ihlamur-kasri.jpg?w=1200&h=-1&s=1',
      comments: [
        CommentWidget(username: "Selen Teksöz", content: "Sanki şehirden uzakmışsınız hissi yaratıyor harika bir yer.", timestamp: "18.06.2023", starRating: 4.9),
        CommentWidget(username: "Sarp Apak", content: "Mimarisine bayıldım", timestamp: "12.04.2023", starRating: 4.9),
        CommentWidget(username: "Berna Öztürk", content: "Haftasonu gidilmesini tavsiye etmem.", timestamp: "11.05.2023", starRating: 3.8),

      ],
    ),
    PlaceWidgett(
      name: 'Suflör',
      description: 'Suflör Beşiktaş akaretlerde bulunan leziz sufleleriyle ve karikatüristik dekoruyla öne çıkan meşhur bir cafedir. ',
      starRating: 4.7,
      imagePath: 'https://listelist.com/wp-content/uploads/2019/02/suflor.jpg',
      comments: [
        CommentWidget(username: "Pelinsu Hacıoğlu", content: "Suflelere bayıldım ama servis süresi uzun sürdü.", timestamp: "18.06.2023", starRating: 4),
        CommentWidget(username: "Berk Tezcanlı", content: "Kafenin içi biraz küçük, kalabalık arkadaş grubuyla gelmenizi tavsiye etmem.", timestamp: "12.04.2023", starRating: 3),
        CommentWidget(username: "Buse Kahraman", content: "Çalışanlar çok tatlıydı sufleden sonra patlayan şeker hediye ettiler ", timestamp: "11.05.2023", starRating: 5),

      ],
    ),
    PlaceWidgett(
      name: 'İstiklal Caddesi',
      description: 'İstanbul\'un Beyoğlu ilçesindeki Tünel Meydanı ile Taksim Meydanı arasında yer alan popüler bir caddedir. 19. yüzyılın sonlarından günümüze dek Türkiye\'nin en popüler caddesi olma unvanını koruyan cadde, 1,4 km uzunluğundadır.',
      starRating: 4.7,
      imagePath: 'https://i.gazeteoksijen.com/storage/files/images/2023/04/19/dunyanin-en-guclu-caddeleri-istiktal-caddesi-de-listede-l5No.jpg',
      comments: [
        CommentWidget(username: "Fatma Hacısoy", content: "Her yer buram buram tarih kokuyor.", timestamp: "18.06.2023", starRating: 5),
        CommentWidget(username: "Berk Tezcanlı", content: "Haftasonları inanılmaz kalabalık iğne atsan yere düşmez.", timestamp: "12.04.2023", starRating: 3),
        CommentWidget(username: "Arif Hakan", content: "Rahat ayakkabıyla gelinmeli yokuşu biraz zorluyor.", timestamp: "11.05.2023", starRating: 4),

      ],
    ),
    PlaceWidgett(
      name: 'Taksim Meydanı',
      description: 'Taksim Meydanı, İstanbul\'un Beyoğlu ilçesinde yer alan ve İstanbul kentinin en ünlü noktalarından biri olan meydan. Çevresindeki lokanta, mağaza, otel, eğlence ve kültür yerleriyle İstanbul\'un en büyük turistik çekim merkezinden biridir.',
      starRating: 4.7,
      imagePath: 'https://www.soihotel.com/wp-content/uploads/2021/09/20210527_2_48484709_65545116_Web.jpg',
      comments: [
        CommentWidget(username: "Buse Kahraman", content: "Biraz kalabalıktı haftasonu gelmenizi tavsiye etmem.", timestamp: "18.06.2023", starRating: 5),
        CommentWidget(username: "Kerem Akyüz", content: "Haftasonları inanılmaz kalabalık iğne atsan yere düşmez.", timestamp: "12.04.2023", starRating: 3),
        CommentWidget(username: "Fatma Hacısoy", content: "Gezebileceğiniz çok fazla mağaza var.", timestamp: "11.05.2023", starRating: 4),

      ],
    ),
    PlaceWidgett(
      name: 'Modern Sanat Müzesi',
      description: 'İstanbul Modern Sanat Müzesi veya kısaca İstanbul Modern, İstanbul\'un Karaköy semtinde 2004 yılında kurulmuş modern sanat müzesi. Türkiye\'nin ilk modern ve çağdaş sanat müzesidir.',
      starRating: 4.7,
      imagePath: 'https://istanbeautiful.com/tr/wp-content/uploads/istanbul-modern-museum2.jpg',
      comments: [
        CommentWidget(username: "Buse Kahraman", content: "Biraz kalabalıktı haftasonu gelmenizi tavsiye etmem.", timestamp: "18.06.2023", starRating: 3),
        CommentWidget(username: "Kerem Akyüz", content: "Giriş ücreti biraz pahalıydı.", timestamp: "12.04.2023", starRating: 4),
        CommentWidget(username: "Fatma Hacısoy", content: "Harika sanat eserleri var.", timestamp: "11.05.2023", starRating: 5),

      ],
    ),
    PlaceWidgett(
      name: 'Karaköy Lokantası',
      description: 'Rengarenk seramikli iç mekanında geleneksel Osmanlı lezzetlerinin servis edildiği şık restoranda öğle veya akşam yemeği.',
      starRating: 4.7,
      imagePath: 'https://istanbultourstudio.s3.amazonaws.com/uploads/sight/cover_photo/37/Karakoy_Lokantasi_Istanbul2.jpg',
      comments: [
        CommentWidget(username: "Aslı Yılmaz", content: "Köfteleri çok güzeldi.", timestamp: "18.06.2023", starRating: 5),
        CommentWidget(username: "Sena Özdemir", content: "Tatlıdan sinek çıktı!", timestamp: "12.04.2023", starRating: 1),
        CommentWidget(username: "Ömer Faruk", content: "Servis geç yapıldı ama yemekler lezzetliydi", timestamp: "11.05.2023", starRating: 3),

      ],
    ),
    PlaceWidgett(
      name: 'Emirgan Sütiş Akaretler',
      description: 'Beşiktaş akaretlerde bulunan Emirgan Sütiş özellikle kahvaltısıyla meşhurdur.',
      starRating: 4.7,
      imagePath: 'https://fastly.4sqi.net/img/general/600x600/10882999_tUEhEWP-NFe4paIQHS8ViOaLjc-_48ffbVnnOLz896U.jpg',
      comments: [
        CommentWidget(username: "Aslı Yılmaz", content: "Menemen çok lezzetliydi.", timestamp: "18.06.2023", starRating: 5),
        CommentWidget(username: "Sena Özdemir", content: "Kahvaltıdan sonra çay ikram ettiler çalışanlar çok tatlıydı.", timestamp: "12.04.2023", starRating: 4),
        CommentWidget(username: "Ömer Faruk", content: "Masalar temiz değildi.", timestamp: "11.05.2023", starRating: 3),

      ],
    ),
    PlaceWidgett(
      name: 'Akaretler Minoa Cafe',
      description: 'Samimi ortamlı kitabevinde hafif atıştırmalıklar sunan keyifli kafe ve küçük bar.',
      starRating: 4.7,
      imagePath: 'https://3.bp.blogspot.com/-rJhobiU1Vh4/VGJQcfgiMfI/AAAAAAAAJOc/8DEQ3CkmDYU/s1600/IMG_9052.JPG',
      comments: [
        CommentWidget(username: "Atalay Yaşar", content: "Oturma alanı çok küçüktü.", timestamp: "18.06.2023", starRating: 3),
        CommentWidget(username: "Melike Tomaş", content: "Çok gürültülü ortama sahipti.", timestamp: "12.04.2023", starRating: 3),
        CommentWidget(username: "Almila Ilgın", content: "Kahveleri lezzetliydi.", timestamp: "11.05.2023", starRating: 5),

      ],
    ),
    PlaceWidgett(
      name: 'Dolmabahçe Sarayı',
      description: 'Dolmabahçe Sarayı, İstanbul, Beşiktaş\'ta, Kabataş\'tan Beşiktaş\'a uzanan Dolmabahçe Caddesi\'yle İstanbul Boğazı arasında, 250.000 m²lik bir alan üzerinde bulunan Osmanlı sarayı.',
      starRating: 4.7,
      imagePath: 'https://cdn1.ntv.com.tr/gorsel/tPBrSZ8drkSMDkuoQcs5Zw.jpg?width=1000&mode=crop&scale=both',
      comments: [
        CommentWidget(username: "Berrin Kater", content: "Müzekartla çok daha uyguna girebilirsiniz.", timestamp: "18.06.2023", starRating: 4),
        CommentWidget(username: "Efe Değirmenci", content: "Atmosferi çok güzeldi.", timestamp: "12.04.2023", starRating: 5),
        CommentWidget(username: "Deniz Demirtaş", content: "Tarihi muhteşem saraylarda biri. Tabii en önemli yani Atamızın  son zamların geçirdiği yer olması.", timestamp: "11.05.2023", starRating: 5),

      ],
    ),
    PlaceWidgett(
      name: 'Maya Kumpir',
      description: 'Beşiktaş Ortaköyde bulunan kumpirci.',
      starRating: 4.7,
      imagePath: 'https://pbs.twimg.com/media/EJ2apxhXsAE12D8?format=jpg&name=medium',
      comments: [
        CommentWidget(username: "Umut Erdem", content: "Hiç lezzetli değildi midemi ağrıttı.", timestamp: "18.06.2023", starRating: 2),
        CommentWidget(username: "Oğuz Öztürk", content: "Fiyatlar çok uygundu.", timestamp: "12.04.2023", starRating: 5),
        CommentWidget(username: "Berrin Güzel", content: "Cadde üzerindeki kumpirciler çok bağırıyordu.", timestamp: "11.05.2023", starRating: 3),

      ],
    ),
    PlaceWidgett(
      name: 'Mürver Cafe',
      description: 'Karaköy\'de Novotel İstanbul Bosphorus\'un en üst katında yer alan Mürver; yaratıcı, rahat, çağdaş ve özgün bir yemek deneyimi sunuyor.',
      starRating: 4.7,
      imagePath: 'https://dq5r178u4t83b.cloudfront.net/wp-content/uploads/sites/41/2022/12/29112958/25.06.2022_M%C3%BCrver-13495.jpg',
      comments: [
        CommentWidget(username: "Selin Ciğerci", content: "Vejeteryan yemekler de sunuyor.", timestamp: "18.06.2023", starRating: 4),
        CommentWidget(username: "Ayça Saz", content: "Fiyatlar ortalamaydı.", timestamp: "12.04.2023", starRating: 3),
        CommentWidget(username: "Caner Adıgüzel", content: "Balık çorbası mükemmeldi.", timestamp: "11.05.2023", starRating: 5),

      ],
    ),
    PlaceWidgett(
      name: 'Beyoğlu Yeşilçam Sineması',
      description: 'Yeşilçam Sineması, 1998 yılında Beyoğlu\'nda faaliyete başlamıştır. Sadece bağımsız filmlerin gösterilmesi ilkesiyle çalışan sinemadır.',
      starRating: 4.7,
      imagePath: 'https://www.turanakinci.com/wp-content/uploads/2014/11/beyo.cdo_.jpg',
      comments: [
        CommentWidget(username: "Selen Teksöz", content: "Gösterilen filmler çok kaliteli.", timestamp: "18.06.2023", starRating: 4),
        CommentWidget(username: "Ayça Saz", content: "Tam bir nostalji günü oldu.", timestamp: "12.04.2023", starRating: 5),
        CommentWidget(username: "Caner Adıgüzel", content: "Koltuklar o kadar da rahat değildi.", timestamp: "11.05.2023", starRating: 3),

      ],
    ),
  ];

  static List<PlaceWidget> routes = [
    PlaceWidget(
      comments: [
        CommentWidget(username: "Zeynep Keser", content: "Çok güzel bir rota vaktiniz varsa taksim meydanından sonra bir de gezi parkı yapın.", timestamp: "18.06.2023", starRating: 4.9),
        CommentWidget(username: "Ahmet Yeşil", content: "Sıcak bir yaz günü için fazla yorucuydu.", timestamp: "22.06.2023", starRating: 4.9),
        CommentWidget(username: "Ela Demir", content: "Buram buram İstanbul kokuyordu.", timestamp: "18.06.2023", starRating: 4.9),
        CommentWidget(username: "Berrin Kater", content: "Daha fazla restoran olmalıydı açlıktan bayıldık.", timestamp: "22.06.2023", starRating: 4.9),
      ],
      name: 'Tarih Kokan İstanbul Gezisi',
      description: 'Tarihi mekanlarıyla İstanbul\'un tarihini yaşayarak görmek isteyenlere birebir',
      starRating: 4.9,
      imagePath: "https://images.unsplash.com/photo-1647533459125-9ffc9b06ab0e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1548&q=80",
      scrollablePlacePage: ScrollablePlacePage(
        name: "Tarih Kokan İstanbul Gezisi",
        widgets: [
          places[10],
          ArrowTextWidget(text: "Öğle yemeği için harika bir yer."),
          places[1],
          ArrowTextWidget(text: "Fotoğraf çekinmeyin unutmayın, ayrıca kimle çıkarsanız o kişiyle bi şeyler olabilir dikkat"),
          places[7],
          ArrowTextWidget(text: "Biraz uzun yürümeye hazırlıklı olun."),
          places[0],
          ArrowTextWidget(text: "İstiklal Caddesinin hemen üzerinde uğramadan geçmeyin."),
          places[8],
          ArrowTextWidget(text: "Günü tamamlamak için harika bir durak."),
        ],
      ),
    ),


    PlaceWidget(
      comments: [
        CommentWidget(username: "Kamil K.", content: "Dönerci, romantik bir buluşmanın adresi!", timestamp: "18.06.2023", starRating: 4.9),
        CommentWidget(username: "Rümeysa Y.", content: "Ortalama", timestamp: "22.06.2023", starRating: 2.5),
        CommentWidget(username: "Su C.", content: "Saçma sapan bir rota olmuş, hiç dönercide romantik yemek mi olur??", timestamp: "18.06.2023", starRating: 0.0),
      ],
      name: 'Doyuran Rota',
      description: 'Sabahtan akşama kadar lezzetten lezzete koşacağınız dopdolu bir yemek rotası.',
      starRating: 4.2,
      imagePath: "https://icdn.ensonhaber.com/resize/703x0-85/resimler/diger/2018/10/31/pizza_5885.jpg",
      scrollablePlacePage: ScrollablePlacePage(
        name: "Doyuran Rota",
        widgets: [places[11],
          ArrowTextWidget(text: "Tatlı yemek için harika bir mekan."),
          places[2],
          ArrowTextWidget(text: "Etlerin lezzeti mükemmeldi!"),
          places[10],
          ArrowTextWidget(text: "2 lahmacun bile çok doyurucu oldu."),
          places[14],
        ArrowTextWidget(text: "Tıkabasa doysak bile tatlı olarak buranın waffle'ını yemeden eve gidemezdikk!"),],
      ),
    ),


    PlaceWidget(
      comments: [
        CommentWidget(username: "Zülfikar K.", content: "Sahilde yürümek çok huzur verici!", timestamp: "18.06.2023", starRating: 4.9),
        CommentWidget(username: "Seyfi Y.", content: "Çimen kokusu çok iyi geldi", timestamp: "22.06.2023", starRating: 3.9),
        CommentWidget(username: "Ramiz C.", content: "Tertemiz bir hava aldık bütün haftanın yorgunluğu bir anda gitti", timestamp: "20.04.2023", starRating: 5.0),
      ],
      name: 'Yeşil Rota',
      description: 'Pazar günü İstanbul\'u doyasıya yaşamak isteyenlere harika bir rota',
      starRating: 4.9,
      imagePath: "https://gezifatihi.com/wp-content/uploads/2023/01/Yesil-Kanyon-Green-Kanyon-Gezi-Rehberi-6.jpg",
      scrollablePlacePage: ScrollablePlacePage(
        name: "Yeşil Rota",
        widgets: [
          places[4],
          ArrowTextWidget(text: "Sabah yürüyüşü için harika bir seçim."),
          places[5],
          ArrowTextWidget(text: "Güzel fotoğraflar çekinebileceğiniz keyifli bir mekan."),
          places[3],
          ArrowTextWidget(text: "Bisiklete binmek için daha güzel bi yer yok.."),
          places[6],
          ArrowTextWidget(text: "Cheesecake'i çok lezzetliydi."),
        ],
      ),
    ),


    PlaceWidget(
      comments: [
        CommentWidget(username: "Hatice Akkaş", content: "Hava aşırı kötüydü galiba bu rota için yanlış günü seçtik :((", timestamp: "12.03.2023", starRating: 3.6),
        CommentWidget(username: "Behran Peçete", content: "Ortalama", timestamp: "22.06.2023", starRating: 2.5),
        CommentWidget(username: "Hülya Mizgin", content: "NE kadar güzel bir rota gerçekten hayran kaldım!!!", timestamp: "27.07.2023", starRating: 5.0),
      ],
      name: 'Romantik Bir Haftasonu Rotası',
      description: 'Sevdiklerinizle başbaşa güzel bir haftasonu için en ideal rotayı arayanlara...',
      starRating: 4.6,
      imagePath: "https://i1.wp.com/www.hayatkolay.com/wp-content/uploads/2014/08/sevgilinizle-haftasonu-kacamagi5.jpg?ssl=1",
      scrollablePlacePage: ScrollablePlacePage(
        name: "Romantik Bir Haftasonu Rotası",
        widgets:
          [places[1],
          ArrowTextWidget(text: "Galataya çıktığınla evlenirsin dediler biz de çıktık XD."),
          places[15],
          ArrowTextWidget(text: "İki kahve alana tatlıda indirim yaptılar çok mutlu olduk."),
          places[16],
          ArrowTextWidget(text: "Sevgilimle en sevdiğimiz filmi tekrar izledik. Çok romantikti."),
            places[13],
            ArrowTextWidget(text: "Birlikte tarihi mekanları gezmek çok keyifli."),
          ],
      ),
    ),


    PlaceWidget(
      comments: [
        CommentWidget(username: "Salih Çimen", content: "İstanbul\'a ilk gelişimdi. Galiba son olmayacak çünkü bayıldımmm <3", timestamp: "18.06.2023", starRating: 4.9),
        CommentWidget(username: "Vildan Demir", content: "Sakinlikten çok uzak bu puanı bile hak etmeyen bir rota", timestamp: "22.06.2023", starRating: 1.5),
        CommentWidget(username: "İsa Koyuncu", content: "Eski İstanbıl eskiden güzeldi artık sadece yorucu", timestamp: "30.06.2023", starRating: 1.0),
      ],
      name: 'Eski İstanbul',
      description: 'Sabahtan akşama kadar lezzetten lezzete koşacağınız dopdolu bir yemek rotası.',
      starRating: 4.2,
      imagePath: "https://www.eskiistanbul.net/thumb/buyukada-1956.jpg",
      scrollablePlacePage: ScrollablePlacePage(
        name: "Eski İstanbul",
        widgets: [places[7],
          ArrowTextWidget(text: "Çok kalabalık ve turist kaynıyor ://"),
          places[8],
          ArrowTextWidget(text: "Eski halini çok severdim şimdiki de fena değil gibi"),
          places[9],
          ArrowTextWidget(text: "Modern sanat bana her zaman çok anlamsız gelmiştir zaten"),
          places[10],
          ArrowTextWidget(text: "Bu kadar yorucu bir günü ancak böyle güzel yemekler affettirebilirdi."),],
      ),
    ),
  ];
}