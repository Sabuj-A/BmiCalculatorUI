import 'package:bmicalc/provider/calcProvider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CalcProvider>(context);
    return Scaffold(
      backgroundColor: Color(0xFF375748),
      body: SafeArea(
          child: ListView(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 30.0),
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                Text(
                  'Calculate Your',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 35.0,
                      color: Colors.white,
                      fontFamily: 'OpenSansR'),
                ),
                Text(
                  'Body Mass Index',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 35.0,
                      color: Colors.white,
                      fontFamily: 'OpenSansR'),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              GestureDetector(
                child: Container(
                  width: 180.0,
                  height: 55.0,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color(0xFF5F786C),
                  ),
                  child: Text(
                    'Standard',
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                        fontFamily: 'OpenSansR'),
                  ),
                ),
              ),
              GestureDetector(
                child: Container(
                  width: 180.0,
                  height: 55.0,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                  ),
                  child: Text(
                    'Metric',
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                        fontFamily: 'OpenSansR'),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 25.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              GestureDetector(
                child: Container(
                  width: 180.0,
                  height: 140.0,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color(0xFF5F786C),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.male,
                        size: 70.0,
                        color: Color(0xFF375748),
                      ),
                      Text(
                        'Male',
                        style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.white,
                            fontFamily: 'OpenSansR'),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                child: Container(
                  width: 180.0,
                  height: 140.0,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.female,
                        size: 70.0,
                        color: Color(0xFF375748),
                      ),
                      Text(
                        'Female',
                        style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.black,
                            fontFamily: 'OpenSansR'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 25.0,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    'Weight in kg',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                        fontFamily: 'OpenSansR'),
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () => provider.decrement(),
                        child: CircleAvatar(
                          backgroundColor: Color(0xFFFFFFFF),
                          radius: 12.0,
                          child: Icon(Icons.remove),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 50.0,
                        width: 100.0,
                        decoration: BoxDecoration(
                          color: Color(0xFF4CA58E),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Text(
                          provider.kg.toString(),
                          style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.white,
                              fontFamily: 'OpenSansR',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => provider.increment(),
                        child: CircleAvatar(
                          backgroundColor: Color(0xFFFFFFFF),
                          radius: 12.0,
                          child: Icon(Icons.add),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
           SizedBox(
            height: 25.0,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    'Height in cm',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                        fontFamily: 'OpenSansR'),
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () => provider.decrement(),
                        child: CircleAvatar(
                          backgroundColor: Color(0xFFFFFFFF),
                          radius: 12.0,
                          child: Icon(Icons.remove),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 50.0,
                        width: 100.0,
                        decoration: BoxDecoration(
                          color: Color(0xFF4CA58E),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Text(
                          provider.kg.toString(),
                          style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.white,
                              fontFamily: 'OpenSansR',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => provider.increment(),
                        child: CircleAvatar(
                          backgroundColor: Color(0xFFFFFFFF),
                          radius: 12.0,
                          child: Icon(Icons.add),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
           SizedBox(
            height: 25.0,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    'Age',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                        fontFamily: 'OpenSansR'),
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () => provider.decrement(),
                        child: CircleAvatar(
                          backgroundColor: Color(0xFFFFFFFF),
                          radius: 12.0,
                          child: Icon(Icons.remove),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 50.0,
                        width: 100.0,
                        decoration: BoxDecoration(
                          color: Color(0xFF4CA58E),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Text(
                          provider.kg.toString(),
                          style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.white,
                              fontFamily: 'OpenSansR',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => provider.increment(),
                        child: CircleAvatar(
                          backgroundColor: Color(0xFFFFFFFF),
                          radius: 12.0,
                          child: Icon(Icons.add),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 25.0,),

          Center(child: GestureDetector(
            child:Container(
                width: 200.0,
                height: 65.0,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                ),
                child: Text(
                  'Calculate',
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Color(0xFF375748),
                      fontFamily: 'OpenSansR'),
                ),
              ), 
          ),),
          
        ],
      )),
    );
  }
}

//button 1 active color:Color(0xFF5F786C)
