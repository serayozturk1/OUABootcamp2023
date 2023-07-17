class User{
  static String userInfo = "";

  static Map<String, String> userTiers = {
    '' : "userTier",
    'Berk Emre Mert': "Uzman",
    'Berk Emre Mert': "Çaylak",
  };

  static Map<String, String> emailpasswords = {
    'berk@gmail.com': "berk12345",
    'seray@gmail.com': "seray12345",
  };

  static Map<String, String> emailandusernames = {
    'berk@gmail.com' : 'Berk Emre Mert',
    'seray@gmail.com' : 'seray',
  };

  static Map<String, String> userProfilePictures = {
    'Berk Emre Mert' : 'https://mykaleidoscope.ru/x/uploads/posts/2022-10/1666247448_53-mykaleidoscope-ru-p-radostnii-muzhchina-vkontakte-65.jpg',
    'seray' : 'https://images.unsplash.com/photo-1527842891421-42eec6e703ea?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80',
  };

  static Map<String, List<int>> userLikes = {
    'Berk Emre Mert' : [0,2,4],
    'seray' : [1,3,5],
  };

  //PROFILE PICTURE

  static Map<String, List<int>> likedRoutes = {
    'Berk Emre Mert' : [],
    'seray' : [],
  };

  static void likeRoute(String username, int i){
    List<int> likes = (likedRoutes[username] ?? []).toList();

    if(likes.contains(i) == false){
      likes.add(i);
    }

    likedRoutes[username] = likes;
  }
}