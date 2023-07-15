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

  //DATABASE--------------------------------------------------------------------
  static Map<String, int> placeNames = {
    'topkapı sarayı' : 0,
    'galata kulesi' : 1,
    'nusret steakhouse' : 2,
    'bostancı sahili' : 3,
    'fenerbahce parki' : 4,
  };

  static List<Widget> places = [PlaceWidgett(
    name: 'Topkapı Sarayı',
    description: 'Topkapı Sarayı, Osmanlı İmparatorluğu\'nun eski başkenti İstanbul\'da yer alan etkileyici bir saray kompleksidir. Saray, muhteşem bahçeleri, sarayın tarihine tanıklık eden yapıları ve Osmanlı dönemine ait sanat eserleri ile ünlüdür.',
    starRating: 4.5,
    imagePath: 'https://unsplash.com/photos/BQteKNSbwcc',
    comments: [
      CommentWidget(username: "Zeynep Kaya", content: "Tarihi ve kültürel değeri yüksek bir mekan, mutlaka görülmeli!", timestamp: "14.07.2023", starRating: 4.9),
      CommentWidget(username: "Ahmet Yörük", content: "Topkapı Sarayı'nın bahçesinde yürümek çok huzur verici.", timestamp: "12.07.2023", starRating: 4.5),
      CommentWidget(username: "Elif Yılmaz", content: "Haftasonu gidecek olanlara tavsiyem erken saatte gidin.", timestamp: "10.05.2023", starRating: 3.9),
      CommentWidget(username: "Mehmet Esen", content: "Her yurtsever vatandaşımızın gezmesi görmesi gerekir.", timestamp: "10.04.2023", starRating: 5),
      CommentWidget(username: "Melisa Sarıbacak", content: "Müzekart ile beklemeden içeri girebiliyorsunuz. Atmosferi harika insanın içi huzur doluyor 💕", timestamp: "26.12.2022", starRating: 4),


    ],
  ),
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
      name: 'NUSRET STEAKHOUSE',
      description: 'Nusr-Et Steakhouse, ayrıca kaliteli et seçenekleri, lezzetli yanlıkları ve şık atmosferiyle de öne çıkar. Bu kombinasyon, ziyaretçilere keyifli bir yemek deneyimi sunar ve restoranı popüler hale getirir.',
      starRating: 5.0,
      imagePath: 'https://images.unsplash.com/photo-1596995804697-27d11d43652e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1337&q=80',
      comments: [
        CommentWidget(username: "Ece Aydeniz.", content: "İlk kez somonlu sushisini ve avokadolu hamburgerini yedim . Daha önce tüm burgerlerini denemiştim. Hepsi çok güzeldi .", timestamp: "18.06.2023", starRating: 4.9),
        CommentWidget(username: "Özlem Şahin", content: "Bayıldım!", timestamp: "22.06.2023", starRating: 4.9),
      ],
    ),
    PlaceWidgett(
      name: 'Bostancı Sahili',
      description: 'Bostancı Sahil, geniş bir kumsalı, yürüyüş ve bisiklet yolları, yeşil alanları ve çeşitli rekreasyon olanakları sunan popüler bir turistik ve eğlence bölgesidir. Sahil boyunca birçok restoran, kafe, park ve spor tesisleri bulunur.',
      starRating: 4.0,
      imagePath: 'https://images.unsplash.com/photo-1596046701153-20054713e5d9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1740&q=80',
      comments: [
        CommentWidget(username: "Arif Haktan", content: "Hiç beğenmedim, sahil rezaletti.", timestamp: "18.06.2023", starRating: 1.9),
        CommentWidget(username: "Kübra İnce", content: "Tertemiz!", timestamp: "22.06.2023", starRating: 4.9),

      ],
    ),
    PlaceWidgett(
      name: 'FENERBAHÇE PARKI',
      description: 'Fenerbahçe Parkı, İstanbul\'un Kadıköy ilçesinde yer alan ve deniz kıyısında bulunan geniş bir parktır.',
      starRating: 4.7,
      imagePath: 'https://images.unsplash.com/photo-1673779281153-88f8fd5b51fc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80',
      comments: [
        CommentWidget(username: "Selin Yağcı", content: "Kadıköy’ün nispeten daha sakin ve burun kısmında hem de adalar manzarası çok güzel.", timestamp: "18.06.2023", starRating: 4.9),
        CommentWidget(username: "İnci Sarp", content: "Tertemiz!", timestamp: "12.04.2023", starRating: 4.9),
        CommentWidget(username: "Buket Erol", content: "Fenerbahçe Parkı bol ağaçlıklı bir yer. Bu nedenle de gölgelik alanlar sıcak havalarda serinlemeye olanak sağlıyor.", timestamp: "11.05.2023", starRating: 3.8),

      ],
    ),
  ];

  static List<PlaceWidget> routes = [
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
      imagePath: "https://images.unsplash.com/photo-1647533459125-9ffc9b06ab0e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1548&q=80",
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
      imagePath: "https://images.unsplash.com/photo-1526047932273-341f2a7631f9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1160&q=80",
      scrollablePlacePage: ScrollablePlacePage(
        name: "Bir Bahar Akşamı",
        widgets: [places[2], places[1]],
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