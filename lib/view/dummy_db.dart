class DummyDb {
  static List message = [
    {
      "username": "emma_jones",
      "message": "Hey there!",
      "time": "13:45",
      "count": 3,
      "profile": photo[0]
    },
    {
      "username": "sam_smith",
      "message": "Hello everyone!",
      "time": "10:15",
      "count": 2,
      "profile": photo[1]
    },
    {
      "username": "lisa_green",
      "message": "Good afternoon!",
      "time": "14:20",
      "count": 5,
      "profile": photo[2]
    },
    {
      "username": "john_doe",
      "message": "Greetings!",
      "time": "11:30",
      "count": 1,
      "profile": photo[3]
    },
    {
      "username": "michael_brown",
      "message": "Hi everyone, how are you?",
      "time": "09:50",
      "count": 4,
      "profile": photo[4]
    },
    {
      "username": "sarah_miller",
      "message": "Hola amigos!",
      "time": "16:00",
      "count": 2,
      "profile": photo[5]
    },
    {
      "username": "alex_williams",
      "message": "What's up?",
      "time": "17:30",
      "count": 3,
      "profile": photo[6]
    },
    {
      "username": "chris_taylor",
      "message": "Hey guys!",
      "time": "08:40",
      "count": 6,
      "profile": photo[7]
    },
    {
      "username": "olivia_jackson",
      "message": "Morning everyone!",
      "time": "07:20",
      "count": 2,
      "profile": photo[7]
    },
    {
      "username": "ryan_clark",
      "message": "Hi all!",
      "time": "15:10",
      "count": 4,
      "profile": photo[8]
    }
  ];
  static List photo = [
    "https://source.unsplash.com/random/150x150",
    "https://picsum.photos/150",
    "https://loremflickr.com/150/150"
        "https://source.unsplash.com/featured/?portrait",
    "https://source.unsplash.com/150x150/?nature",
    "https://placeimg.com/150/150/people",
    "https://robohash.org/123.png?size=150x150&set=set1",
    "https://www.thispersondoesnotexist.com/image",
    "https://api.adorable.io/avatars/150/1",
    "https://www.gravatar.com/avatar/00000000000000000000000000000000?d=mp&f=y&s=150"
  ];
  static List activeNow = [...DummyDb.message]..shuffle();
  static List chat = [
    {"msg": "Hey,", "isSender": false},
    {"msg": "Hey! I'm good", "isSender": true},
  ];
}
