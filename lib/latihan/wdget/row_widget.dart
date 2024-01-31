import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget> [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 150,
                  width: 150,
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(20),
                  color: Color.fromARGB(255, 149, 74, 199),
                  child: Container(
                    height: 100,
                    width: 100,
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(20),
                    padding: EdgeInsets.all(20),
                    color: Colors.grey,
                    child: Row(
                      children: [
                        Image.network("https://www.evos.gg/images/pages/Oon92liTCVWOj7IUe5LFjSUiiD2UpDaHAma8bPUa.png", 
                        fit: BoxFit.cover,
                        )
                      ]),
                  ),
              ),
              Container(
                 height: 150,
                  width: 150,
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(20),
                  color: Color.fromARGB(255, 149, 74, 199),
                  child: Container(
                    height: 100,
                    width: 100,
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(20),
                    padding: EdgeInsets.all(20),
                    color: Colors.grey,
                    child: Row(
                      children: [
                        Image.network("https://www.evos.gg/images/pages/Oon92liTCVWOj7IUe5LFjSUiiD2UpDaHAma8bPUa.png", 
                        fit: BoxFit.cover,
                        )
                      ]),
                  ),
              )
            ],
          ),
        ),
        Container(
          width: 340,
          height: 120,
          color: Colors.purple,
          margin: EdgeInsets.only(bottom: 10),
          child: Container(
            height: 100,
            width: 340,
            color: Colors.purple,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            child: Container(
            alignment: Alignment.centerLeft,
             child: Row(
                      children: [
                        Image.network("https://www.evos.gg/images/pages/Oon92liTCVWOj7IUe5LFjSUiiD2UpDaHAma8bPUa.png", 
                        fit: BoxFit.cover,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Text("EVOS LEGENDS", style: TextStyle(color: Colors.white),),
                        )
                      ]),
              ),
          ),
        ),
         Container(
          width: 340,
          height: 120,
          color: Colors.purple,
          margin: EdgeInsets.only(bottom: 20),
          child: Container(
            height: 100,
            width: 340,
            color: Colors.purple,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            child: Container(
              alignment: Alignment.centerLeft,
              child: Row(
                      children: [
                        Image.network("https://www.evos.gg/images/pages/Oon92liTCVWOj7IUe5LFjSUiiD2UpDaHAma8bPUa.png", 
                        fit: BoxFit.cover,
                        ),
                         Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Text("EVOS LEGENDS", style: TextStyle(color: Colors.white),),
                        )
                      ]),
              ),
          ),
        )
      ],
      ),
    );
    
  }
}