import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class TrainersProfile extends StatelessWidget {
  final images = [
    'https://images.unsplash.com/photo-1585892478726-d26363dbf9e8?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OHx8Z3ltJTIwYm9keXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1554344728-77cf90d9ed26?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTF8fGd5bSUyMGJvZHl8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1532384555668-bc0c32a17ffd?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTR8fGd5bSUyMGJvZHl8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1581009146145-b5ef050c2e1e?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTd8fGd5bSUyMGJvZHl8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // IMAGE SWIPER SECTION
          Padding(
            padding: const EdgeInsets.only(top: 35),
            child: Container(
              constraints: BoxConstraints.expand(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3,
              ),
              child: imageSlider(context),
            ),
          ),

          // MIDDLE TEXT INFOMATION SECTION
          Column(
            children: [
              SizedBox(height: 280),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50))),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 15, right: 10, left: 10, bottom: 10),
                    child: Container(
                      child: ListView(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Suraj kumar".toUpperCase(),
                                    style: TextStyle(
                                        fontSize: 25,
                                        color: Color(0xff1d98cb),
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "5+ ".toUpperCase(),
                                        style: TextStyle(
                                            fontSize: 30,
                                            color: Color(0xff1d98cb),
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "years of Experience",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "₹ 150".toUpperCase(),
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Color(0xff1d98cb),
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text("Per session"),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.verified_user_rounded,
                                        color: Color(0xff1d98cb),
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        "Certified",
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Divider(endIndent: 12, indent: 12, thickness: 0.8),
                          SizedBox(height: 30),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "About me",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 30),
                              Text(
                                "I am a professional personal fitness trainer and I am here to make you workout at home. You know that everyone is busy these days and no one has time for his body and health. That is why we have come to get you workouts from your home. So please contact us.",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 40),
                            ],
                          ),
                          Divider(endIndent: 12, indent: 12, thickness: 0.8),
                          SizedBox(height: 30),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "My Expertise",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 20),
                              Wrap(
                                  spacing: 8.0, // gap between adjacent chips
                                  runSpacing: 4.0, // gap between lines
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.all(12),
                                      margin: EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.blue),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Text(
                                        "GYM",
                                        style:
                                            TextStyle(color: Color(0xff1d98cb)),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(12),
                                      margin: EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Color(0xff1d98cb)),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Text(
                                        "BOXING",
                                        style:
                                            TextStyle(color: Color(0xff1d98cb)),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(12),
                                      margin: EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Color(0xff1d98cb)),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Text(
                                        "YOGA",
                                        style:
                                            TextStyle(color: Color(0xff1d98cb)),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(12),
                                      margin: EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Color(0xff1d98cb)),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Text(
                                        "KICK BOXING",
                                        style:
                                            TextStyle(color: Color(0xff1d98cb)),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(12),
                                      margin: EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Color(0xff1d98cb)),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Text(
                                        "WEIGHT LIFTING",
                                        style:
                                            TextStyle(color: Color(0xff1d98cb)),
                                      ),
                                    ),
                                  ]),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Divider(endIndent: 12, indent: 12, thickness: 0.8),
                          SizedBox(height: 30),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Medical Condition Experience",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 30),
                              Text(
                                "Injury | Smoking Addiction | Anxiety | Drinking Addiction | Lung | Disease",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 40),
                            ],
                          ),
                          Divider(endIndent: 12, indent: 12, thickness: 0.8),
                          SizedBox(height: 40),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "My Location",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 30),
                              Row(
                                children: [
                                  Icon(Icons.location_on,
                                      color: Color(0xff1d98cb)),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Amritsar, Punjab",
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 40),
                            ],
                          ),
                          Divider(endIndent: 12, indent: 12, thickness: 0.8),
                          SizedBox(height: 40),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Mode of Training",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 30),
                              Row(
                                children: [
                                  Icon(
                                    Icons.videocam_rounded,
                                    color: Color(0xff1d98cb),
                                    size: 35,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Online (Google Meet)",
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.home,
                                    color: Color(0xff1d98cb),
                                    size: 35,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "In home",
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.takeout_dining,
                                    color: Color(0xff1d98cb),
                                    size: 35,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Outdoors",
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 40),
                            ],
                          ),
                          Divider(endIndent: 12, indent: 12, thickness: 0.8),
                          SizedBox(height: 40),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "1 - on - 1 Pricing",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(width: 30),
                                  Icon(
                                    Icons.info_outline_rounded,
                                  ),
                                ],
                              ),
                              SizedBox(height: 30),
                              PackagePlan(
                                title: "stater plan",
                                save: "0",
                                amount: "150",
                                person: "5",
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              PackagePlan(
                                title: "popular plan",
                                save: "8",
                                amount: "138",
                                person: "12",
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              PackagePlan(
                                title: "best value plan ",
                                save: "15",
                                amount: "127",
                                person: "24",
                              ),
                              SizedBox(height: 40),
                            ],
                          ),
                          Divider(endIndent: 12, indent: 12, thickness: 0.8),
                          SizedBox(height: 40),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "My Location",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Wrap(
                                spacing: 10,
                                runSpacing: 10,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Color(0xff6c4791), width: 2),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "9:30 AM TO 10:30 AM".toUpperCase(),
                                        style:
                                            TextStyle(color: Color(0xff6c4791)),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Color(0xff6c4791), width: 2),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "11:30 PM TO 12:30 PM".toUpperCase(),
                                        style:
                                            TextStyle(color: Color(0xff6c4791)),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Color(0xff6c4791), width: 2),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "2:30 PM TO 5:30 PM".toUpperCase(),
                                        style:
                                            TextStyle(color: Color(0xff6c4791)),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: 40),
                          Divider(endIndent: 12, indent: 12, thickness: 0.8),
                          SizedBox(height: 40),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Training Days",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 30),
                              Text(
                                "Monday | Tuesday | Wednesday | Thusday | Friday | Saterday | Sunday",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 40),
                            ],
                          ),
                          Divider(endIndent: 12, indent: 12, thickness: 0.8),
                          SizedBox(height: 40),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Languages",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 30),
                              Row(
                                children: [
                                  Icon(
                                    Icons.language,
                                    color: Color(0xff1d98cb),
                                    size: 35,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Hindi",
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.language,
                                    color: Color(0xff1d98cb),
                                    size: 35,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "English",
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.language,
                                    color: Color(0xff1d98cb),
                                    size: 35,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Punjabi",
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 40),
                            ],
                          ),
                          Divider(endIndent: 12, indent: 12, thickness: 0.8),
                          SizedBox(height: 40),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Education Qualification",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 30),
                              Text(
                                "B.Sc in Sport and Exercise Science",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 40),
                          Divider(endIndent: 12, indent: 12, thickness: 0.8),
                          SizedBox(height: 40),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "People i love training with",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Wrap(
                                spacing: 10.0,
                                runSpacing: 10.0,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Color(0xff6c4791), width: 2),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Men".toUpperCase(),
                                        style:
                                            TextStyle(color: Color(0xff6c4791)),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Color(0xff6c4791), width: 2),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "women".toUpperCase(),
                                        style:
                                            TextStyle(color: Color(0xff6c4791)),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Color(0xff6c4791), width: 2),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "boybuilders".toUpperCase(),
                                        style:
                                            TextStyle(color: Color(0xff6c4791)),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Color(0xff6c4791), width: 2),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "militry".toUpperCase(),
                                        style:
                                            TextStyle(color: Color(0xff6c4791)),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Color(0xff6c4791), width: 2),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Fat Lose".toUpperCase(),
                                        style:
                                            TextStyle(color: Color(0xff6c4791)),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Color(0xff6c4791), width: 2),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Model".toUpperCase(),
                                        style:
                                            TextStyle(color: Color(0xff6c4791)),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Color(0xff6c4791), width: 2),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "actor".toUpperCase(),
                                        style:
                                            TextStyle(color: Color(0xff6c4791)),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: 40),
                          Divider(endIndent: 12, indent: 12, thickness: 0.8),
                          SizedBox(height: 40),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              // TWO BOTTOM BUTTON'S
              Container(
                height: 50,
                width: double.maxFinite,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    InkWell(
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: MediaQuery.of(context).size.width / 2,
                        color: Colors.white,
                        child: Text("join bootcamp".toUpperCase(),
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                      ),
                      onTap: () => {print("BOOTCAMP JOINED")},
                    ),
                    InkWell(
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: MediaQuery.of(context).size.width / 2,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: <Color>[
                                Color(0xff6c4791),
                                Color(0xff1d98cb)
                              ],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight),
                        ),
                        child: Text(
                          "book now".toUpperCase(),
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      onTap: () => {print("BOOKED")},
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  // IMAGE SWIPING FUNCTION
  Swiper imageSlider(BuildContext context) {
    return new Swiper(
      autoplay: true,
      itemBuilder: (BuildContext context, int index) {
        return new Image.network(
          images[index],
          fit: BoxFit.cover,
        );
      },
      itemCount: images.length,
      scale: 0.9,
    );
  }
}

class PackagePlan extends StatelessWidget {
  final title;
  final person;
  final amount;
  final save;

  PackagePlan({Key key, this.title, this.person, this.amount, this.save})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: <Color>[
                  Color(0x331d98cb),
                  Color(0x336c4791),
                ], begin: Alignment.centerLeft, end: Alignment.centerRight),
                border: Border.all(color: Colors.black, width: 2)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    title.toUpperCase(),
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  height: 30,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: <Color>[
                      Color(0x801d98cb),
                      Color(0x806c4791),
                    ], begin: Alignment.centerLeft, end: Alignment.centerRight),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  children: [
                    Text(
                      "Buy ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      person,
                      style: TextStyle(
                          fontSize: 25,
                          color: Color(0xff6c4791),
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Sessions ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  children: [
                    Text(
                      "Buy ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      amount,
                      style: TextStyle(
                          fontSize: 25,
                          color: Color(0xff1d98cb),
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "/Sessions ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  children: [
                    Text(
                      "Save ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      save,
                      style: TextStyle(
                          fontSize: 25,
                          color: Color(0xff1d98cb),
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "/Sessions ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
