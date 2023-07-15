class User{
  static String userInfo = "";

  static Map<String, String> userTiers = {
    '' : "userTier",
    'berk': "Uzman",
    'seray': "Çaylak",
  };

  static Map<String, String> emailpasswords = {
    'berk@gmail.com': "berk12345",
    'seray@gmail.com': "seray12345",
  };

  static Map<String, String> emailandusernames = {
    'berk@gmail.com' : 'berk',
    'seray@gmail.com' : 'seray',
  };

  static Map<String, String> userProfilePictures = {
    'berk' : 'https://images.unsplash.com/photo-1615497001839-b0a0eac3274c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80',
    'seray' : 'https://images.unsplash.com/photo-1527842891421-42eec6e703ea?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80',
  };

  static Map<String, List<int>> userLikes = {
    'berk' : [0,2,4],
    'seray' : [1,3,5],
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