class Message {
  late String user;
  late String message;

  late String time;
  late String avator;
  Message(
      {required this.user,
      required this.message,
      required this.time,
      required this.avator});

  static List<Message> messages = [
    Message(
        user: "Owais",
        message: "Heyy!",
        time: "10:30",
        avator: 'images/braid3.jpg'),
    Message(
        user: "Ahmed",
        message:
            "Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum",
        time: "1:30",
        avator: 'images/braid3.jpg'),
    Message(
        user: "Bilal",
        message: "Heyy Heyyyyyy!",
        time: "5:50",
        avator: 'images/braid3.jpg'),
    Message(
        user: "Ali Ahmed",
        message:
            "tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit",
        time: "10:30",
        avator: 'images/braid3.jpg'),
    Message(
        user: "Sameer",
        message:
            "tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit,",
        time: "11:30",
        avator: 'images/braid3.jpg'),
    Message(
        user: "Wahab",
        message: "Heyy!",
        time: "9:30",
        avator: 'images/braid3.jpg'),
    Message(
        user: "Tufail",
        message:
            "tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit",
        time: "7:30",
        avator: 'images/braid3.jpg')
  ];
}
