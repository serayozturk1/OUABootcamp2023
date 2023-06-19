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
    'hasan usta dönercisi' : 2,
    'bostancı sahili' : 3,
    'sarıyer sahili' : 4,
  };

  static List<Widget> places = [PlaceWidgett(
    name: 'Topkapı Sarayı',
    description: 'Topkapı Sarayı, Osmanlı İmparatorluğu\'nun eski başkenti İstanbul\'da yer alan etkileyici bir saray kompleksidir. Saray, muhteşem bahçeleri, sarayın tarihine tanıklık eden yapıları ve Osmanlı dönemine ait sanat eserleri ile ünlüdür.',
    starRating: 5.0,
    imagePath: 'https://images.unsplash.com/photo-1629649407121-9f3630437785?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=627&q=80',
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
  ),
    PlaceWidgett(
      name: 'Galata Kulesi',
      description: 'Galata Kulesi, İstanbul Boğazı\'nın karşı kıyısında, Galata semtinde yer alan tarihi bir kuledir. 14. yüzyılda inşa edilen kule, muhteşem panoramik manzarasıyla ünlüdür ve şehrin tarihini ve güzelliğini keşfetmek isteyen ziyaretçiler için harika bir noktadır.',
      starRating: 4.3,
      imagePath: 'https://images.unsplash.com/photo-1582631608254-f75fdf938e19?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80',
      comments: [
        CommentWidget(username: "Selin D.", content: "İstanbul manzarasının tadını çıkarmak için en iyi noktalardan biri.", timestamp: "18.06.2023", starRating: 4.9),
        CommentWidget(username: "Murat B.", content: "Galata Kulesi'nden gün batımını izlemek büyüleyici bir deneyim.", timestamp: "22.06.2023", starRating: 4.9),
      ],
    ),
    PlaceWidgett(
      name: 'Hasan Usta Dönercisi',
      description: 'İstanbul\'un en saygın dönercilerinden Hasan Usta Dönercisi\'nde, romantik bir akşam yemeği yiyebilirsiniz',
      starRating: 5.0,
      imagePath: 'https://images.unsplash.com/photo-1596995804697-27d11d43652e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1337&q=80',
      comments: [
        CommentWidget(username: "Arif H.", content: "Hiç beğenmedim, dönerci rezaletti.", timestamp: "18.06.2023", starRating: 4.9),
        CommentWidget(username: "Kezban I.", content: "Bayıldım!", timestamp: "22.06.2023", starRating: 4.9),
      ],
    ),
    PlaceWidgett(
      name: 'Bostancı Sahili',
      description: 'En güzel sahillerden birisi',
      starRating: 4.0,
      imagePath: 'https://images.unsplash.com/photo-1596046701153-20054713e5d9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1740&q=80',
      comments: [
        CommentWidget(username: "Arif H.", content: "Hiç beğenmedim, sahil rezaletti.", timestamp: "18.06.2023", starRating: 1.9),
        CommentWidget(username: "Kezban I.", content: "Tertemiz!", timestamp: "22.06.2023", starRating: 4.9),
        CommentWidget(username: "Arif H.", content: "Hiç beğenmedim, sahil rezaletti.", timestamp: "18.06.2023", starRating: 1.9),
        CommentWidget(username: "Kezban I.", content: "Tertemiz!", timestamp: "22.06.2023", starRating: 4.9),
        CommentWidget(username: "Arif H.", content: "Hiç beğenmedim, sahil rezaletti.", timestamp: "18.06.2023", starRating: 1.9),
        CommentWidget(username: "Kezban I.", content: "Tertemiz!", timestamp: "22.06.2023", starRating: 4.9),
      ],
    ),
    PlaceWidgett(
      name: 'Sarıyer Sahili',
      description: 'Şehre uzak sakin bir sahil, bolca yaşlı var.',
      starRating: 4.7,
      imagePath: 'https://images.unsplash.com/photo-1673779281153-88f8fd5b51fc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80',
      comments: [
        CommentWidget(username: "Arif H.", content: "Hiç beğenmedim, sahil rezaletti.", timestamp: "18.06.2023", starRating: 1.9),
        CommentWidget(username: "Kezban I.", content: "Tertemiz!", timestamp: "22.06.2023", starRating: 4.9),
        CommentWidget(username: "Arif H.", content: "Hiç beğenmedim, sahil rezaletti.", timestamp: "18.06.2023", starRating: 1.9),
        CommentWidget(username: "Kezban I.", content: "Tertemiz!", timestamp: "22.06.2023", starRating: 4.9),
        CommentWidget(username: "Arif H.", content: "Hiç beğenmedim, sahil rezaletti.", timestamp: "18.06.2023", starRating: 1.9),
        CommentWidget(username: "Kezban I.", content: "Tertemiz!", timestamp: "22.06.2023", starRating: 4.9),
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
      imagePath: "https://images.unsplash.com/photo-1446038202205-1c96430dbdab?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1738&q=80",
      scrollablePlacePage: ScrollablePlacePage(
        name: "Sahil Gezintisi",
        widgets: [places[3], places[4], places[3], places[4]],
      ),
    ),
  ];
}