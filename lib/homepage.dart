import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sms/flutter_sms.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var phoneCtr = TextEditingController();
  var messageCtr = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('My Business card'),),
        body: Padding(
        padding: const EdgeInsets.all(16.0),
    child: SingleChildScrollView(
    child: Column(
    children: [
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    SizedBox(
    height: 120,
    width: 120,
    child: ClipRRect(
    borderRadius: BorderRadius.circular(300),
    child: Image.asset('assets/images/photoIlmhub.jpg', fit: BoxFit.cover,),
    ),
    )
    ],
    ),
    SizedBox(height: 10,),
    Text('Ilmhub IT School',
    style: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold
    ),),
    SizedBox(height: 40,),
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    InkWell(
    onTap: ()async {
    launchUrl(Uri.parse("tel://+998934591708"));
    },
    child: SizedBox(
    height: 60,
    width: 60,
    child: ClipRRect(
    borderRadius: BorderRadius.circular(300),
    child: Image.asset('assets/images/call_icon.webp', fit: BoxFit.cover,),
    ),
    ),
    ),
    InkWell(
    onTap: ()async {
    launchUrl(Uri.parse("https://t.me/ilmhubuz",),
    mode: LaunchMode.externalApplication // application dan ochish uchun agar buni yozmasa webdan ochadi
    );
    },
    child: SizedBox(
    height: 60,
    width: 60,
    child: ClipRRect(
    borderRadius: BorderRadius.circular(300),
    child: Image.asset('assets/images/plus_icon.jpg', fit: BoxFit.cover,),
    ),
    ),
    ),
    InkWell(
    onTap: () async {
    launchUrl(Uri.parse("https://instagram.com/ilmhub.uz?igshid=YmMyMTA2M2Y=",),
    mode: LaunchMode.externalApplication // application dan ochish uchun agar buni yozmasa webdan ochadi
    );
    },
    child: SizedBox(
    height: 60,
    width: 60,
    child: ClipRRect(
    borderRadius: BorderRadius.circular(300),
    child: Image.asset('assets/images/instagram_icon_edited.jpg', fit: BoxFit.cover,),
    ),
    ),
    ),
    InkWell(
    onTap: _composeSms,
    //     () async {
    //   launchUrl(Uri.parse("https://instagram.com/ilmhub.uz?igshid=YmMyMTA2M2Y=",),
    //       mode: LaunchMode.externalApplication // application dan ochish uchun agar buni yozmasa webdan ochadi
    //   );
    // },
    child: SizedBox(
    height: 60,
    width: 60,

