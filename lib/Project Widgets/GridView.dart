import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:lottie/lottie.dart';
import 'package:mobigic/Project%20Widgets/Color.dart';
import 'package:mobigic/Project%20Widgets/Word.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
class GridHome extends StatefulWidget {
  const GridHome({ Key? key }) : super(key: key);

  @override
  State<GridHome> createState() => _GridHomeState();
}

class _GridHomeState extends State<GridHome> {
String randomWord = '';
  int selectedRow = 1;
 

  WordFunction _wordFunction = WordFunction();
  @override
  void initState(){
    super.initState();
    getRradomWord();
  }
 List<Color> colorsRow1 = [];
  List<Color> colorsRow2 = [];
  List<Color> colorsRow3 = [];
  List<Color> colorsRow4 = [];
  List<Color> colorsRow5 = [];
 

  bool isEnabled1 = true;
  bool isEnabled2 = true;
  bool isEnabled3 = true;
  bool isEnabled4 = true;
  bool isEnabled5 = true;

  // ignore: prefer_final_fields
  List<FocusNode> _focusNodes1 = List<FocusNode>.generate(5, (int index) => FocusNode());
  // ignore: prefer_final_fields
  List<FocusNode> _focusNodes2 = List<FocusNode>.generate(5, (int index) => FocusNode());
  List<FocusNode> _focusNodes3 = List<FocusNode>.generate(5, (int index) => FocusNode());
  List<FocusNode> _focusNodes4 = List<FocusNode>.generate(5, (int index) => FocusNode());
  List<FocusNode> _focusNodes5 = List<FocusNode>.generate(5, (int index) => FocusNode());


  List<TextEditingController> _textEditingControllers1 = List<
      TextEditingController>.generate(5, (int index) => TextEditingController(text: '\u200b'));
  List<TextEditingController> _textEditingControllers2 = List<
      TextEditingController>.generate(5, (int index) => TextEditingController(text: '\u200b'));
  List<TextEditingController> _textEditingControllers3 = List<
      TextEditingController>.generate(5, (int index) => TextEditingController(text: '\u200b'));
  List<TextEditingController> _textEditingControllers4 = List<
      TextEditingController>.generate(5, (int index) => TextEditingController(text: '\u200b'));
  List<TextEditingController> _textEditingControllers5 = List<
      TextEditingController>.generate(5, (int index) => TextEditingController(text: '\u200b'));
  

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    double containerWidth = (width / 5) - 20;
    List<Widget> textFields1 = List<Widget>.generate(5, (int index) =>
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: colorsRow1.isEmpty ? Colors.black : colorsRow1[index],
            width: containerWidth,
            child: TextField(
              enabled:isEnabled1,
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 28,
                  color: colorsRow1.isEmpty ? Colors.white : Colors.white
              ),
              decoration: InputDecoration(
                  counterText: '',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: _textEditingControllers1[index].text.length > 1
                            ? Colors.white
                            : Colors.grey, width: _textEditingControllers1[index].text.length > 1 ? 2: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: _textEditingControllers1[index].text.length > 1
                            ? Colors.white
                            : Colors.grey, width: _textEditingControllers1[index].text.length > 1 ? 2: 1),

                  )
              ),
              autofocus: true,
              textAlign: TextAlign.center,
              maxLength: 2,
              textCapitalization: TextCapitalization.characters,
              controller: _textEditingControllers1[index],
              focusNode: _focusNodes1[index],
              onChanged: (String value) {
                setState(() {

                });
                print(_textEditingControllers1[index].text.length);
                if (_textEditingControllers1[index].text.length <= 1) {
                  if (index > 0) {
                    _textEditingControllers1[index].text = '\u200b';
                    _focusNodes1[index - 1].requestFocus();
                  }
                }
                if (index < 4 &&
                    _textEditingControllers1[index].text.length > 1) {
                  print(_textEditingControllers1[index].text.length);
                  _focusNodes1[index + 1].requestFocus();
                }
              },


            ),
          ),
        ));
    List<Widget> textFields2 = List<Widget>.generate(5, (int index) =>
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: colorsRow2.isEmpty ? Colors.black : colorsRow2[index],
            width: containerWidth,
            child: TextField(
              enabled:isEnabled2,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 28,
                  color: colorsRow2.isEmpty ? Colors.white : Colors.white
              ),
              decoration: InputDecoration(
                  counterText: '',

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                        color: _textEditingControllers2[index].text.length > 1
                            ? Colors.white
                            : Colors.grey, width: _textEditingControllers2[index].text.length > 1 ? 2: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: _textEditingControllers2[index].text.length > 1
                            ? Colors.white
                            : Colors.grey, width: _textEditingControllers2[index].text.length > 1 ? 2: 1),

                  )
              ),
              autofocus: true,
              textAlign: TextAlign.center,
              maxLength: 2,
              textCapitalization: TextCapitalization.characters,

              controller: _textEditingControllers2[index],
              focusNode: _focusNodes2[index],
              onChanged: (String value) {
                setState(() {

                });
                print(_textEditingControllers2[index].text.length);
                if (_textEditingControllers2[index].text.length <= 1) {
                  if (index > 0) {
                    _textEditingControllers2[index].text = '\u200b';
                    _focusNodes2[index - 1].requestFocus();
                  }
                }
                if (index < 4 &&
                    _textEditingControllers2[index].text.length > 1) {
                  print(_textEditingControllers2[index].text.length);
                  _focusNodes2[index + 1].requestFocus();
                }
              },


            ),
          ),
        ));
    List<Widget> textFields3 = List<Widget>.generate(5, (int index) =>
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: colorsRow3.isEmpty ? Colors.black : colorsRow3[index],
            width: containerWidth,
            child: TextField(

              enabled:isEnabled3,
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 28,
                  color: colorsRow3.isEmpty ?  Colors.white : Colors.white
              ),
              decoration: InputDecoration(
                  counterText: '',

                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: _textEditingControllers3[index].text.length > 1
                            ? Colors.white
                            : Colors.grey, width: _textEditingControllers3[index].text.length > 1 ? 2: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: _textEditingControllers3[index].text.length > 1
                            ? Colors.white
                            : Colors.grey, width: _textEditingControllers3[index].text.length > 1 ? 2: 1),

                  )
              ),
              autofocus: true,
              textAlign: TextAlign.center,
              maxLength: 2,
              textCapitalization: TextCapitalization.characters,

              controller: _textEditingControllers3[index],
              focusNode: _focusNodes3[index],
              onChanged: (String value) {
                setState(() {

                });
                print(_textEditingControllers3[index].text.length);
                if (_textEditingControllers3[index].text.length <= 1) {
                  if (index > 0) {
                    _textEditingControllers3[index].text = '\u200b';
                    _focusNodes3[index - 1].requestFocus();
                  }
                }
                if (index < 4 &&
                    _textEditingControllers3[index].text.length > 1) {
                  print(_textEditingControllers3[index].text.length);
                  _focusNodes3[index + 1].requestFocus();
                }
              },


            ),
          ),
        ));
    List<Widget> textFields4 = List<Widget>.generate(5, (int index) =>
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: colorsRow4.isEmpty ? Colors.black : colorsRow4[index],
            width: containerWidth,
            child: TextField(
              enabled:isEnabled4,
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 28,
                color: colorsRow4.isEmpty ?  Colors.white : Colors.white
              ),
              decoration: InputDecoration(

                  counterText: '',
                  enabled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                        color: _textEditingControllers4[index].text.length > 1
                            ? Colors.white
                            : Colors.grey, width: _textEditingControllers4[index].text.length > 1 ? 2: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: _textEditingControllers4[index].text.length > 1
                            ? Colors.white
                            : Colors.grey, width: _textEditingControllers4[index].text.length > 1 ? 2: 1),

                  )
              ),
              autofocus: true,
              textAlign: TextAlign.center,
              maxLength: 2,
              textCapitalization: TextCapitalization.characters,

              controller: _textEditingControllers4[index],
              focusNode: _focusNodes4[index],
              onChanged: (String value) {
                setState(() {

                });
                print(_textEditingControllers4[index].text.length);
                if (_textEditingControllers4[index].text.length <= 1) {
                  if (index > 0) {
                    _textEditingControllers4[index].text = '\u200b';
                    _focusNodes4[index - 1].requestFocus();
                  }
                }
                if (index < 4 &&
                    _textEditingControllers4[index].text.length > 1) {
                  print(_textEditingControllers4[index].text.length);
                  _focusNodes4[index + 1].requestFocus();
                }
              },


            ),
          ),
        ));
    List<Widget> textFields5 = List<Widget>.generate(5, (int index) =>
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: colorsRow5.isEmpty ? Colors.black : colorsRow5[index],
            width: containerWidth,
            child: TextField(
              enabled:isEnabled4,
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 28,
                  color: colorsRow5.isEmpty ? Colors.white : Colors.white
              ),
              decoration: InputDecoration(
                  counterText: '',

                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: _textEditingControllers5[index].text.length > 1
                            ? Colors.white
                            : Colors.grey, width: _textEditingControllers5[index].text.length > 1 ? 2: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: _textEditingControllers5[index].text.length > 1
                            ? Colors.white
                            : Colors.grey, width: _textEditingControllers5[index].text.length > 1 ? 2: 1),

                  )
              ),
              autofocus: true,
              textAlign: TextAlign.center,
              maxLength: 2,
              textCapitalization: TextCapitalization.characters,

              controller: _textEditingControllers5[index],
              focusNode: _focusNodes5[index],
              onChanged: (String value) {
                setState(() {

                });
                print(_textEditingControllers5[index].text.length);
                if (_textEditingControllers5[index].text.length <= 1) {
                  if (index > 0) {
                    _textEditingControllers5[index].text = '\u200b';
                    _focusNodes5[index - 1].requestFocus();
                  }
                }
                if (index < 4 &&
                    _textEditingControllers5[index].text.length > 1) {
                  print(_textEditingControllers5[index].text.length);
                  _focusNodes5[index + 1].requestFocus();
                }
              },


            ),
          ),
        ));
   


    return WillPopScope(
        onWillPop: () async {
          return false;
          },
      child: Scaffold(
           backgroundColor: blackColor,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('MoBiGc', style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30
                      ),)

                    ],
                  ),
                  SizedBox(height: 30,),
                  Container(
                    width: width,
                    height: 70,
                    child: ListView(
                      scrollDirection: Axis.horizontal,

                      children: textFields1,
                    ),
                  ),
                  Container(
                    width: width,
                    height: 70,
                    child: ListView(
                      scrollDirection: Axis.horizontal,

                      children: textFields2,
                    ),
                  ),
                  Container(
                    width: width,
                    height: 70,
                    child: ListView(
                      scrollDirection: Axis.horizontal,

                      children: textFields3,
                    ),
                  ),
                  Container(
                    width: width,
                    height: 70,
                    child: ListView(
                      scrollDirection: Axis.horizontal,

                      children: textFields4,
                    ),
                  ),
                  Container(
                    width: width,
                    height: 70,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: textFields5,
                    ),
                  ),
                SizedBox(height: 50,),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 150,
                        height: 35,
                        child: Center(
                          child: Text('Enter', style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w500
                          ),),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color.fromARGB(255, 134, 126, 204)
                        ),
                      ),
                    ),
                    onTap: (){
                      print('================================================$randomWord================');
                      if(selectedRow == 1){
                        checkIfCorrectWordFound(_textEditingControllers1);
                        checkTextFiledWithRandomText1();
                      }else if(selectedRow == 2){
                        checkIfCorrectWordFound(_textEditingControllers2);

                        checkTextFiledWithRandomText2();
                      }else if(selectedRow == 3){
                        checkIfCorrectWordFound(_textEditingControllers3);

                        checkTextFiledWithRandomText3();

                      }else if(selectedRow == 4){
                        checkIfCorrectWordFound(_textEditingControllers4);

                        checkTextFiledWithRandomText4();
                      }else if(selectedRow == 5){
                        checkIfCorrectWordFound(_textEditingControllers5);

                        checkTextFiledWithRandomText5();

                      }
                    },
                  ),InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 150,
                        height: 35,
                        child: Center(
                          child: Text('Reset', style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w500
                          ),),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color:Color.fromARGB(255, 134, 126, 204)
                        ),
                      ),
                    ),
                    onTap: (){
                     setState(() {
                    _reset();

                     });
                    },
                  ),

                ],
              ),
            ),
          ),
      ),
    );
  }
  //Reset the app
void _reset() {
    Navigator.pushReplacement(
      context,
      PageRouteBuilder(
        transitionDuration: Duration.zero,
        pageBuilder: (_, __, ___) => GridHome(),
      ),
    );
  }
  //generate randomword
  void getRradomWord() async {
    randomWord = await _wordFunction.generateRandomWord();
    setState(() {});
  }

  void checkTextFiledWithRandomText1() {
    colorsRow1 = [];
    print(randomWord.contains(_textEditingControllers1[0].text.replaceAll('\u200b', '').trim()));

    for(var i=0;i<_textEditingControllers1.length;i++){
      print(_textEditingControllers1[i].text.replaceAll('\u200b', '').trim());

      if(randomWord.contains(_textEditingControllers1[i].text.replaceAll('\u200b', '').trim())){
        print("Contains" + _textEditingControllers1[i].text);

        if(_textEditingControllers1[i].text.replaceAll('\u200b', '').trim() == randomWord[i]){
          //CORRECT
          colorsRow1.insert(i, greenColour);
        }else{
          //PRESENT
          colorsRow1.insert(i, yellowColor);

        }
      }else{
        colorsRow1.insert(i, greyColour);
      }
      if(_textEditingControllers1[i].text.replaceAll('\u200b', '').length == 0 || _textEditingControllers1[i].text == "" ){
        colorsRow1.insert(i, Colors.white);
      }
    }

    setState(() {
      selectedRow = 2;
    });
  }
  void checkTextFiledWithRandomText2() {
    colorsRow2 = [];
    print(randomWord.contains(_textEditingControllers2[0].text.replaceAll('\u200b', '').trim()));

    for(var i=0;i<_textEditingControllers2.length;i++){
      print(_textEditingControllers2[i].text.replaceAll('\u200b', '').trim());

      if(randomWord.contains(_textEditingControllers2[i].text.replaceAll('\u200b', '').trim())){
        print("Contains" + _textEditingControllers2[i].text);

        if(_textEditingControllers2[i].text.replaceAll('\u200b', '').trim() == randomWord[i]){
          //CORRECT
          colorsRow2.insert(i, greenColour);
        }else{
          //PRESENT
          colorsRow2.insert(i, yellowColor);

        }
      }else{
        colorsRow2.insert(i, greyColour);
      }
      if(_textEditingControllers2[i].text.replaceAll('\u200b', '').length == 0 || _textEditingControllers2[i].text == "" ){
        colorsRow2.insert(i, Colors.white);
      }
    }
    setState(() {
      selectedRow = 3;
    });
  }
  void checkTextFiledWithRandomText3() {
    colorsRow3 = [];
    print(randomWord.contains(_textEditingControllers3[0].text.replaceAll('\u200b', '').trim()));

    for(var i=0;i<_textEditingControllers3.length;i++){
      print(_textEditingControllers3[i].text.replaceAll('\u200b', '').trim());

      if(randomWord.contains(_textEditingControllers3[i].text.replaceAll('\u200b', '').trim())){
        print("Contains" + _textEditingControllers3[i].text);

        if(_textEditingControllers3[i].text.replaceAll('\u200b', '').trim() == randomWord[i]){
          //CORRECT
          colorsRow3.insert(i, greenColour);
        }else{
          //PRESENT
          colorsRow3.insert(i, yellowColor);

        }
      }else{
        colorsRow3.insert(i, greyColour);
      }
      if(_textEditingControllers3[i].text.replaceAll('\u200b', '').length == 0 || _textEditingControllers3[i].text == "" ){
        colorsRow3.insert(i, Colors.white);
      }
    }
    setState(() {
      selectedRow = 4;

    });
  }
  void checkTextFiledWithRandomText4() {
    colorsRow4 = [];
    print(randomWord.contains(_textEditingControllers4[0].text.replaceAll('\u200b', '').trim()));

    for(var i=0;i<_textEditingControllers4.length;i++){
      print(_textEditingControllers4[i].text.replaceAll('\u200b', '').trim());

      if(randomWord.contains(_textEditingControllers4[i].text.replaceAll('\u200b', '').trim())){
        print("Contains" + _textEditingControllers4[i].text);

        if(_textEditingControllers4[i].text.replaceAll('\u200b', '').trim() == randomWord[i]){
          //CORRECT
          colorsRow4.insert(i, greenColour);
        }else{
          //PRESENT
          colorsRow4.insert(i, yellowColor);

        }
      }else{
        colorsRow4.insert(i, greyColour);
      }
      if(_textEditingControllers4[i].text.replaceAll('\u200b', '').length == 0 || _textEditingControllers4[i].text == "" ){
        colorsRow4.insert(i, Colors.white);
      }
    }
    setState(() {
      selectedRow = 5;

    });
  }
  void checkTextFiledWithRandomText5() {
    colorsRow5 = [];
    print(randomWord.contains(_textEditingControllers5[0].text.replaceAll('\u200b', '').trim()));

    for(var i=0;i<_textEditingControllers5.length;i++){
      print(_textEditingControllers5[i].text.replaceAll('\u200b', '').trim());

      if(randomWord.contains(_textEditingControllers5[i].text.replaceAll('\u200b', '').trim())){
        print("Contains" + _textEditingControllers5[i].text);

        if(_textEditingControllers5[i].text.replaceAll('\u200b', '').trim() == randomWord[i]){
          //CORRECT
          colorsRow5.insert(i, greenColour);
        }else{
          //PRESENT
          colorsRow5.insert(i, yellowColor);

        }
      }else{
        colorsRow5.insert(i, greyColour);
      }
      if(_textEditingControllers5[i].text.replaceAll('\u200b', '').length == 0 || _textEditingControllers5[i].text == "" ){
        colorsRow5.insert(i, Colors.white);
      }
    }
    setState(() {
    });
  }
  void checkIfCorrectWordFound(List<TextEditingController> textEditingController){
    String words = "";
    List wordSearched = [];
    textEditingController.forEach((element) {
      wordSearched.add(element.text.replaceAll('\u200b', '').trim().toUpperCase());
      words = wordSearched.join();
      if(words == randomWord){
        print("WORD MATCHED");
      showDialogue(true);
      }
    });

    if(selectedRow == 5 && words != randomWord){
   showDialogue(false);
      selectedRow = 1;
      setState(() {

      });
    }

  }

  void showDialogue(bool win){
    if(win){
      Alert(
        style: AlertStyle(backgroundColor: Colors.black, descStyle:TextStyle(color: Colors.white),titleStyle: TextStyle(
        color: Colors.white,
        
        )),
        context: context, 
      image:Lottie.network('https://assets1.lottiefiles.com/packages/lf20_7z1gt2bj/Coin2/Coin.json'),
      title: 'You Win', desc: "WORD IS ${randomWord.toUpperCase()}",
       buttons: [
          DialogButton(
            color: Colors.green,
            onPressed: () => _reset(),
            child: Text(
              "Reset",
              style: TextStyle(fontSize: 20),
            ),
          )
        ]).show();
    }else{
     Alert(
         style: AlertStyle(backgroundColor: Colors.black, descStyle:TextStyle(color: Colors.white),titleStyle: TextStyle(
        color: Colors.white,
        
        )),
       image: Lottie.network("https://assets10.lottiefiles.com/packages/lf20_kw7o4s5y.json"),
       context: context, title: 'You Loose', desc: "WORD IS ${randomWord.toUpperCase()}", buttons: [
          DialogButton(
            color: Colors.green,
            onPressed: () => _reset(),
            child: Text(
              "Reset",
              style: TextStyle(fontSize: 20),
            ),
          )
        ]).show();
    }
}

}