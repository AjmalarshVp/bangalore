import 'package:flutter/material.dart';



class HomePage extends StatelessWidget {
   HomePage({Key? key}) : super(key: key);

List<String> images = [
  "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bWFsZSUyMHByb2ZpbGV8ZW58MHx8MHx8&w=1000&q=80",
  "https://www.whatsappimages.in/wp-content/uploads/2021/12/girl-New-Superb-Whatsapp-Dp-Profile-Images-photo.jpg",
  "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bWFsZSUyMHByb2ZpbGV8ZW58MHx8MHx8&w=1000&q=80",
  "https://images.unsplash.com/photo-1566753323558-f4e0952af115?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bWFsZXxlbnwwfHwwfHw%3D&w=1000&q=80",
  "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80",
  "https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg.jpg",
   "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bWFsZSUyMHByb2ZpbGV8ZW58MHx8MHx8&w=1000&q=80",
  "https://www.whatsappimages.in/wp-content/uploads/2021/12/girl-New-Superb-Whatsapp-Dp-Profile-Images-photo.jpg",
  "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bWFsZSUyMHByb2ZpbGV8ZW58MHx8MHx8&w=1000&q=80",
  "https://images.unsplash.com/photo-1566753323558-f4e0952af115?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bWFsZXxlbnwwfHwwfHw%3D&w=1000&q=80",
  "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80",
  "https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg.jpg",
   "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bWFsZSUyMHByb2ZpbGV8ZW58MHx8MHx8&w=1000&q=80",
  "https://www.whatsappimages.in/wp-content/uploads/2021/12/girl-New-Superb-Whatsapp-Dp-Profile-Images-photo.jpg",
  "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bWFsZSUyMHByb2ZpbGV8ZW58MHx8MHx8&w=1000&q=80",
  "https://images.unsplash.com/photo-1566753323558-f4e0952af115?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bWFsZXxlbnwwfHwwfHw%3D&w=1000&q=80",
  "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80",
  "https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg.jpg",
   "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bWFsZSUyMHByb2ZpbGV8ZW58MHx8MHx8&w=1000&q=80",
  "https://www.whatsappimages.in/wp-content/uploads/2021/12/girl-New-Superb-Whatsapp-Dp-Profile-Images-photo.jpg",
  "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bWFsZSUyMHByb2ZpbGV8ZW58MHx8MHx8&w=1000&q=80",
  "https://images.unsplash.com/photo-1566753323558-f4e0952af115?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bWFsZXxlbnwwfHwwfHw%3D&w=1000&q=80",
  "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80",
  "https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg.jpg"
];
List<String> Name = [
"Patty O’Furniture",
"Paddy O’Furniture",
"Olive Yew",
"Aida Bugg",
"Maureen Biologist",
"Teri Dactyl",
"Peg Legge",
"Allie Grater",
"Liz Erd",
"A. Mused",
"Constance Noring",
"Lois Di Nominator",
"Minnie Van Ryder",
"Lynn O’Leeum",
"P. Ann O’Recital",
"Ray O’Sun",
"Lee A. Sun",
"Ray Sin",
"Isabelle Ringing",
"Eileen Sideways",
"Rita Book",
"Paige Turner",
"Rhoda Report",
"Maureen Biologist",
"Teri Dactyl",
"Peg Legge",
"Allie Grater",
"Liz Erd",
"A. Mused",
"Constance Noring",
"Lois Di Nominator",
"Minnie Van Ryder",
"Lynn O’Leeum",
"P. Ann O’Recital",
"Ray O’Sun",
"Lee A. Sun",
"Ray Sin",
"Isabelle Ringing",
"Eileen Sideways",
"Rita Book",
"Paige Turner",
"Rhoda Report",
];
List <String> Gmail =[
" Dewvrak12@gmail.com",
"Lakhsr33@gmail.com",
"Fatik02@gmail.com",
"Qmab555@gmail.com",
"Tatypd85@gmail.com",
"Aaman999@gmail.com",
"souad007@gmail.com",
"Membwrd78@gmail.com",
"Lollolo87@gmail.com",
"Qmpd445@gmail.com",
"Don980547@gmail.com",
"Don784161@gmail.com",
"Swatgv548748@gmail.com",
"Sdkmg99@gmail.com",
"Iswj88@gmail.com",
"Lodo2020@gmail.com",
"sdeam00@gmail.com",
"Saddammen@gmail.com",
"Soeye46@gmail.com",
"lude4563@gmail.com",
"Hiuyou@gmail.com",
"Hellooo00@gmail.com",
"Hi00200@gmail.com",
"Babyyyyyyyyyyyy@gmail.com",
"somvevd44@gmail.com",
];
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
        body: ListView.builder(itemCount: images.length, itemBuilder: (BuildContext context, index) {
          
      return ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(
            images[index],
          ),
        ),
        title: Text(Name[index]),
        subtitle: Text(Gmail[index]),
      );
    }));
  }
}
