import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class Trainers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            constraints: BoxConstraints.expand(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/3,
            ),
            child: imageSlider(context),
          ),
          Column(
            children: [
              SizedBox(height: 250),
              Expanded(
                  child:Container(
                    decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50))
                    ),
                    child: ListView(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.center,
                          child: Text("Hello"),
                        ),Container(
                          alignment: Alignment.center,
                          child: Text("Hello"),
                        ),Container(
                          alignment: Alignment.center,
                          child: Text("Hello"),
                        ),Container(
                          alignment: Alignment.center,
                          child: Text("Hello"),
                        ),Container(
                          alignment: Alignment.center,
                          child: Text("Hello"),
                        ),Container(
                          alignment: Alignment.center,
                          child: Text("Hello"),
                        ),Container(
                          alignment: Alignment.center,
                          child: Text("Hello"),
                        ),Container(
                          alignment: Alignment.center,
                          child: Text("Hello"),
                        ),Container(
                          alignment: Alignment.center,
                          child: Text("Hello"),
                        ),
                      ],
                    ),
                  ),),

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
                        width: MediaQuery.of(context).size.width/2,
                        color: Colors.white,
                        child: Text("join bootcamp".toUpperCase(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                      ),
                      onTap: ()=>{
                        print("object")
                      },
                    ),
                    InkWell(
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: MediaQuery.of(context).size.width/2,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: <Color>[Color(0xff6c4791),Color(0xff1d98cb)]
                          ),
                        ),
                        child: Text("book now".toUpperCase(),style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                      ),
                      onTap: ()=>{
                        print("object")
                      },
                    )
                  ],
                ),
              )
            ],
          )

        ],
      ),
    );
  }

  Swiper imageSlider(BuildContext context) {
    return new Swiper(
      autoplay: true,
      itemBuilder: (BuildContext context, int index) {
        return new Image.network(
          "https://images.unsplash.com/photo-1595445364671-15205e6c380c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=764&q=80",
          fit: BoxFit.cover,
        );
      },
      itemCount: 10,
      scale: 0.9,
    );
  }
}
