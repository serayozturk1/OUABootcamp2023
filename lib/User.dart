class User{
  static String userInfo = "";

  static Map<String, String> emailpasswords = {
    'berk@gmail.com': "berk12345",
    'seray@gmail.com': "seray12345",
  };

  static Map<String, String> emailandusernames = {
    'berk@gmail.com' : 'berk',
    'seray@gmail.com' : 'seray',
  };

  //PROFILE PICTURE

  static Map<String, List<int>> likedRoutes = {
    'berk' : [],
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