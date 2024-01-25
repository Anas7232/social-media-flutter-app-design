import 'package:first/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: WebsitePage(),
      )
  );
}

class WebsitePage extends StatefulWidget {
  const WebsitePage({super.key});

  @override
  State<WebsitePage> createState() => _WebsitePageState();
}

class _WebsitePageState extends State<WebsitePage> {

  String? dropdownvalue ;

  // List of items in our dropdown menu
  var items = [
    'Video type',
    'Mp4',
    '360Mp',
    '780Mp',
    '1070Mp',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)
                  ),
                  color: Color(0xFFFE7286)
              ),
              width: MediaQuery.of(context).size.width/1,
              height: MediaQuery.of(context).size.height/8,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: ListTile(
                    leading: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const MyApp()));
                          },
                          child: const Icon(Icons.arrow_back, color: Colors.white,size: 25,)),
                    ),
                    title: const Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text('Website',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                    trailing: Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Container(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.circular(20)
                            ),
                            color: Color(0xFFFE9DAB)
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(top: 5, bottom: 5, left: 15, right: 15),
                          child: Text('Balance',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ),
                      ),
                    )
                ),
              )
          ),

          Padding(
            padding: const EdgeInsets.only(left: 25,right: 25, top: 30),
            child: TextField(
              style: const TextStyle(color: Color(0xFFA6A6A6)),
              obscureText: false,
              // obscuringCharacter: "*",
              decoration: InputDecoration(
                labelText: 'Title',
                filled: true,
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black12),
                  borderRadius: BorderRadius.circular(30),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black12),
                  borderRadius: BorderRadius.circular(30),
                ),
                labelStyle: const TextStyle(color: Color(0xFFA6A6A6),fontWeight: FontWeight.w400),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                // labelText: 'Enter Video Title',
                hintStyle: const TextStyle(color: Color(0xFFA6A6A6), fontSize: 18, fontWeight: FontWeight.w400),
                hintText: 'Enter website title',

                // labelText: 'Title'
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 25,right: 25, top: 30),
            child: TextField(
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                FilteringTextInputFormatter.digitsOnly
              ],
              style: const TextStyle(color: Color(0xFFA6A6A6)),
              obscureText: false,
              // obscuringCharacter: "*",
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black12),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black12),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  labelStyle: const TextStyle(color: Color(0xFFA6A6A6),fontWeight: FontWeight.w400),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  // labelText: 'Enter Video Title',
                  hintStyle: const TextStyle(color: Color(0xFFA6A6A6), fontSize: 15, fontWeight: FontWeight.w400),
                  hintText: 'Enter minute watching time in seconds',
                  labelText: 'Min watching time (seconds)'
                // labelText: 'Title'
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 25,right: 25, top: 30),
            child: TextField(
              style: const TextStyle(color: Color(0xFFA6A6A6)),
              obscureText: false,
              // obscuringCharacter: "*",
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black12),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black12),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  labelStyle: const TextStyle(color: Color(0xFFA6A6A6),fontWeight: FontWeight.w400),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  // labelText: 'Enter Video Title',
                  hintStyle: const TextStyle(color: Color(0xFFA6A6A6), fontSize: 18, fontWeight: FontWeight.w400),
                  hintText: 'Enter website link',
                  labelText: 'Video link'
                // labelText: 'Title'
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 25,right: 25, top: 30),
            child: TextField(
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                FilteringTextInputFormatter.digitsOnly
              ],
              style: const TextStyle(color: Color(0xFFA6A6A6)),
              obscureText: false,
              // obscuringCharacter: "*",
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black12),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black12),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  labelStyle: const TextStyle(color: Color(0xFFA6A6A6),fontWeight: FontWeight.w400),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  // labelText: 'Enter Video Title',
                  hintStyle: const TextStyle(color: Color(0xFFA6A6A6), fontSize: 15, fontWeight: FontWeight.w400),
                  hintText: 'Enter reward points',
                  labelText: 'Reward Points'
                // labelText: 'Title'
              ),
            ),
          ),




          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
            child: DropdownButtonFormField(
                dropdownColor: Colors.white,
                // hint: Text('Video type'),
                style: const TextStyle(color: Color(0xFFA6A6A6)),
                decoration: InputDecoration(
                    hintText: 'Published',
                    hintStyle: const TextStyle(color: Color(0xFFA6A6A6)),
                    labelText: 'Status',
                    labelStyle: const TextStyle(color: Color(0xFFA6A6A6)),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black12),
                        borderRadius: BorderRadius.circular(30)
                    ),focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Colors.black12)
                )
                ),
                // underline: Container(),


                value: dropdownvalue,

                icon: const Padding(
                  padding: EdgeInsets.only(bottom: 15,right: 12),
                  child: Icon(Icons.arrow_drop_down, color: Color(0xFFA6A6A6),),
                ),
                isExpanded: true,


                items: items.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                onChanged: (String? newValue){
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                }
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 25,left: 25,right: 25),
            child: Container(
              width: MediaQuery.of(context).size.width/1.1,
              height: MediaQuery.of(context).size.height/13,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                      Radius.circular(40)
                  ),
                  color: Color(0xFFFE7286)
              ),
              child: const Center(child: Text('Submit',
                style: TextStyle(color: Colors.white,fontSize: 20),
              )),
            ),
          )

        ],
      ),
    );
  }
}
