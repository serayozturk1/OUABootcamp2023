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
    0
  ];

  static List<int> kulturelRoutes= [
    0
  ];

  static List<int> romantikRoutes= [
    1
  ];

  static List<int> dogaRoutes= [
    2
  ];

  static List<Widget> places = [PlaceWidgett(

    //TOPKAPI

    name: 'St. Antuan Katolik Kilisesi',
    description: 'St. Antuan Katolik Kilisesi, İstanbul\'un en büyük ve cemaati en geniş Katolik Kilisesi\'dir. Beyoğlu\'ndaki İstiklal Caddesi üzerinde Galatasaray\'dan (Galatasaray Lisesi tarafında) Tünel\'e doğru giderken sol tarafta bulunur.',
    starRating: 4.5,
    imagePath: 'https://unsplash.com/photos/BQteKNSbwcc',
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
      imagePath: 'https://images.unsplash.com/photo-1582631608254-f75fdf938e19?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80',
      comments: [
        CommentWidget(username: "Selin Dertlioğlu", content: "İstanbul manzarasının tadını çıkarmak için en iyi noktalardan biri.", timestamp: "18.06.2023", starRating: 4.7),
        CommentWidget(username: "Murat Boz", content: "Galata Kulesi'nden gün batımını izlemek büyüleyici bir deneyim.", timestamp: "22.06.2023", starRating: 4.5),
      ],
    ),
    PlaceWidgett(
      name: 'Nusret Steakhouse',
      description: 'Nusr-Et Steakhouse, ayrıca kaliteli et seçenekleri, lezzetli yanlıkları ve şık atmosferiyle de öne çıkar. Bu kombinasyon, ziyaretçilere keyifli bir yemek deneyimi sunar ve restoranı popüler hale getirir.',
      starRating: 5.0,
      imagePath: 'https://images.unsplash.com/photo-1596995804697-27d11d43652e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1337&q=80',
      comments: [
        CommentWidget(username: "Ece Aydeniz.", content: "İlk kez somonlu sushisini ve avokadolu hamburgerini yedim . Daha önce tüm burgerlerini denemiştim. Hepsi çok güzeldi .", timestamp: "18.06.2023", starRating: 4.9),
        CommentWidget(username: "Özlem Şahin", content: "Bayıldım!", timestamp: "22.06.2023", starRating: 4.9),
      ],
    ),
    PlaceWidgett(
      name: 'Ortaköy Sahili',
      description: 'Ortaköy sahil, geniş yürüyüş ve tarihi alanları sunan popüler bir turistik ve eğlence bölgesidir. Sahil boyunca birçok restoran, kafe, park bulunur.',
      starRating: 4.0,
      imagePath: 'https://images.unsplash.com/photo-1596046701153-20054713e5d9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1740&q=80',
      comments: [
        CommentWidget(username: "Arif Haktan", content: "Hiç beğenmedim, sahil rezaletti.", timestamp: "18.06.2023", starRating: 1.9),
        CommentWidget(username: "Kübra İnce", content: "Tertemiz!", timestamp: "22.06.2023", starRating: 4.9),

      ],
    ),
    PlaceWidgett(
      name: 'Maçka Parkı',
      description: 'Maçka Parkı, İstanbul\'un Şişli ilçesinde yer alan geniş bir parktır.',
      starRating: 4.7,
      imagePath: 'https://images.unsplash.com/photo-1673779281153-88f8fd5b51fc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80',
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
      imagePath: 'https://images.unsplash.com/photo-1673779281153-88f8fd5b51fc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80',
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
      imagePath: 'https://images.unsplash.com/photo-1673779281153-88f8fd5b51fc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80',
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
      imagePath: 'https://images.unsplash.com/photo-1673779281153-88f8fd5b51fc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80',
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
      imagePath: 'https://images.unsplash.com/photo-1673779281153-88f8fd5b51fc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80',
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
      imagePath: 'https://images.unsplash.com/photo-1673779281153-88f8fd5b51fc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80',
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
      imagePath: 'https://images.unsplash.com/photo-1673779281153-88f8fd5b51fc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80',
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
      imagePath: 'https://images.unsplash.com/photo-1673779281153-88f8fd5b51fc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80',
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
      imagePath: 'https://images.unsplash.com/photo-1673779281153-88f8fd5b51fc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80',
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
      imagePath: 'https://images.unsplash.com/photo-1673779281153-88f8fd5b51fc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80',
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
      imagePath: 'https://images.unsplash.com/photo-1673779281153-88f8fd5b51fc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80',
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
      imagePath: 'https://images.unsplash.com/photo-1673779281153-88f8fd5b51fc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80',
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
      imagePath: 'https://images.unsplash.com/photo-1673779281153-88f8fd5b51fc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80',
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
      starRating: 3.7,
      imagePath: "https://images.unsplash.com/photo-1526047932273-341f2a7631f9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1160&q=80",
      scrollablePlacePage: ScrollablePlacePage(
        name: "Doyuran Rota",
        widgets: [places[11], places[1]],
      ),
    ),


    PlaceWidget(
      comments: [
        CommentWidget(username: "Zülfikar K.", content: "Sahilde yürümek çok huzur verici!", timestamp: "18.06.2023", starRating: 4.9),
        CommentWidget(username: "Seyfi Y.", content: "Deniz kokusu çok iyi geldi", timestamp: "22.06.2023", starRating: 2.5),
        CommentWidget(username: "Ramiz C.", content: "Az kalsın denize düşüyordum aksdkadhaasd", timestamp: "18.06.2023", starRating: 0.0),
        CommentWidget(username: "Zülfikar K.", content: "Sahilde yürümek çok huzur verici!", timestamp: "18.06.2023", starRating: 4.9),
        CommentWidget(username: "Seyfi Y.", content: "Deniz kokusu çok iyi geldi", timestamp: "22.06.2023", starRating: 2.5),
        CommentWidget(username: "Ramiz C.", content: "Az kalsın denize düşüyordum aksdkadhaasd", timestamp: "18.06.2023", starRating: 0.0),
      ],
      name: 'Sahil Gezintisi',
      description: 'İstanbul telaşından sıkılanlar için bir kaçış rotaı',
      starRating: 4.3,
      imagePath: "https://images.unsplash.com/photo-1612102741109-9a266c43c668?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80",
      scrollablePlacePage: ScrollablePlacePage(
        name: "Sahil Gezintisi",
        widgets: [places[3], places[4], places[3], places[4]],
      ),
    ),


    PlaceWidget(
      comments: [
        CommentWidget(username: "Zeynep K.", content: "Tarihi ve kültürel değeri yüksek bir mekan, mutlaka görülmeli!", timestamp: "18.06.2023", starRating: 4.9),
        CommentWidget(username: "Ahmet Y.", content: "Topkapı Sarayı'nın bahçesinde yürümek çok huzur verici.", timestamp: "22.06.2023", starRating: 4.9),
        CommentWidget(username: "Zeynep K.", content: "Tarihi ve kültürel değeri yüksek bir mekan, mutlaka görülmeli!", timestamp: "18.06.2023", starRating: 4.9),
        CommentWidget(username: "Ahmet Y.", content: "Topkapı Sarayı'nın bahçesinde yürümek çok huzur verici.", timestamp: "22.06.2023", starRating: 4.9),
        CommentWidget(username: "Zeynep K.", content: "Tarihi ve kültürel değeri yüksek bir mekan, mutlaka görülmeli!", timestamp: "18.06.2023", starRating: 4.9),
        CommentWidget(username: "Ahmet Y.", content: "Topkapı Sarayı'nın bahçesinde yürümek çok huzur verici.", timestamp: "22.06.2023", starRating: 4.9),
        CommentWidget(username: "Zeynep K.", content: "Tarihi ve kültürel değeri yüksek bir mekan, mutlaka görülmeli!", timestamp: "18.06.2023", starRating: 4.9),
        CommentWidget(username: "Ahmet Y.", content: "Topkapı Sarayı'nın bahçesinde yürümek çok huzur verici.", timestamp: "22.06.2023", starRating: 4.9),
      ],
      name: 'Tarih Kokan İstanbul Gezisi',
      description: 'Tarihi mekanlarıyla İstanbul\'un tarihini yaşayarak görmek isteyenlere birebir',
      starRating: 4.9,
      imagePath: "https://images.unsplash.com/photo-1527838832700-5059252407fa?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=796&q=80",
      scrollablePlacePage: ScrollablePlacePage(
        name: "Tarih Kokan İstanbul Gezisi",
        widgets: [places[0],
          ArrowTextWidget(text: "Bu sarayı gezerken adeta Osmanlı hala yıkılmamış gibi hissedeceksiniz"),
          places[1],
          ArrowTextWidget(text: "Fotoğraf çekinmeyin unutmayın, ayrıca kimle çıkarsanız o kişiyle bi şeyler olabilir dikkat"),
          places[1],
          ArrowTextWidget(text: "Tekrar ilk sarayı gezin yetmezzz"),
        ],
      ),
    ),


    PlaceWidget(
      comments: [
        CommentWidget(username: "Kamil K.", content: "Dönerci, romantik bir buluşmanın adresi!", timestamp: "18.06.2023", starRating: 4.9),
        CommentWidget(username: "Rümeysa Y.", content: "Ortalama", timestamp: "22.06.2023", starRating: 2.5),
        CommentWidget(username: "Su C.", content: "Saçma sapan bir rota olmuş, hiç dönercide romantik yemek mi olur??", timestamp: "18.06.2023", starRating: 0.0),
      ],
      name: 'Bir Bahar Akşamı',
      description: 'Sevgilinizle romantik bir bahar akşamı geçirmek istiyorsanız, bu rota tam size göre!',
      starRating: 3.7,
      imagePath: "https://images.unsplash.com/reserve/Af0sF2OS5S5gatqrKzVP_Silhoutte.jpg?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1740&q=80",
      scrollablePlacePage: ScrollablePlacePage(
        name: "Bir Bahar Akşamı",
        widgets: [places[2], places[1]],
      ),
    ),


    PlaceWidget(
      comments: [
        CommentWidget(username: "Salih A.", content: "Sahilde yürümek çok huzur verici!", timestamp: "18.06.2023", starRating: 4.9),
        CommentWidget(username: "Merve Y.", content: "Deniz kokusu çok iyi geldi", timestamp: "22.06.2023", starRating: 2.5),
        CommentWidget(username: "Hanife G.", content: "Güzel bi yürüyüş ve yemek için doğru rota bu!", timestamp: "18.06.2023", starRating: 0.0),
      ],
      name: 'Sabah Gezintisi',
      description: 'Güne harika bir başlangıç...',
      starRating: 4.7,
      imagePath: "https://media.istockphoto.com/id/1215023069/tr/vekt%C3%B6r/k%C3%B6pek-d%C3%BCz-vekt%C3%B6r-ill%C3%BCstrasyon-ile-adam-sabah-gezintisi-yaz-%C5%9Fehir-e%C4%9Flencesi-parkta-e%C4%9Flence.jpg?s=170667a&w=0&k=20&c=uz4DVe5xJ9l_NRhnKetmSzZid3J79NXOcFi-HuZce0I=",
      scrollablePlacePage: ScrollablePlacePage(
        name: "Sabah Gezintisi",
        widgets: [places[3], places[1]],
      ),
    ),
  ];
}