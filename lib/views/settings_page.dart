import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mzk/colors.dart';
import 'package:mzk/views/widgets/color_picker.dart';

class Parametrage extends StatefulWidget {
  const Parametrage({Key key}) : super(key: key);

  @override
  _ParametrageState createState() => _ParametrageState();
}

class _ParametrageState extends State<Parametrage> {
  Color currentColor = primaire;

  void changeColor(Color color) => setState(() => currentColor = color);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaire,
      appBar: AppBar(
        backgroundColor: currentColor,
        title: Text("Settings", style: TextStyle(color: white, fontSize: 25)),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios),
          color: white,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("Apparence",
                style: TextStyle(
                  color: white,
                  fontSize: 27,
                )),
            Divider(),
            InkWell(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Choisir une couleur"),
                        content: SingleChildScrollView(
                            child: BlockPicker(
                                pickerColor: currentColor,
                                onColorChanged: changeColor)),
                      );
                    });
              },
              child: SizedBox(
                child: Card(
                  color: secondaire,
                  margin: EdgeInsets.all(10),
                  elevation: 5,
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.redAccent,
                      child: Icon(Icons.color_lens, color: Colors.white),
                    ),
                    title: Text(
                      "Personalisez vos couleurs",
                      style: TextStyle(color: white),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              child: Card(
                margin: EdgeInsets.all(10),
                color: secondaire,
                elevation: 5,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.yellow.shade700,
                    child: Icon(Icons.insert_emoticon, color: Colors.white),
                  ),
                  title: Text(
                    "Changer le style d'icon",
                    style: TextStyle(color: white),
                  ),
                ),
              ),
            ),
            SizedBox(
              child: Card(
                color: secondaire,
                margin: EdgeInsets.all(10),
                elevation: 5,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.dark_mode,
                      color: Colors.black,
                    ),
                  ),
                  title:
                      Text("Mode Dark/Light", style: TextStyle(color: white)),
                  trailing: IconButton(
                    icon: Icon(
                      Icons.toggle_off,
                      color: white,
                      size: 50,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
            Text("Audio",
                style: TextStyle(
                  color: white,
                  fontSize: 27,
                )),
            Divider(),
            SizedBox(
              child: Card(
                color: secondaire,
                margin: EdgeInsets.all(10),
                elevation: 5,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Icon(Icons.graphic_eq, color: Colors.white),
                  ),
                  title: Text("Egaliseur", style: TextStyle(color: white)),
                ),
              ),
            ),
            SizedBox(
              child: Card(
                color: secondaire,
                margin: EdgeInsets.all(10),
                elevation: 5,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.purple,
                    child: Icon(Icons.speaker_group, color: Colors.white),
                  ),
                  title: Text("Activer mode speaker",
                      style: TextStyle(color: white)),
                ),
              ),
            ),
            Text("Stockage",
                style: TextStyle(
                  color: white,
                  fontSize: 30,
                )),
            Divider(),
            SizedBox(
              child: Card(
                color: secondaire,
                margin: EdgeInsets.all(10),
                elevation: 5,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.blueGrey,
                    child: Icon(Icons.source, color: Colors.white),
                  ),
                  title:
                      Text("Chemin de lecture", style: TextStyle(color: white)),
                ),
              ),
            ),
            SizedBox(
              child: Card(
                color: secondaire,
                margin: EdgeInsets.all(10),
                elevation: 5,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.deepOrange,
                    child: Icon(Icons.drive_folder_upload, color: Colors.white),
                  ),
                  title: Text("Rafrachir", style: TextStyle(color: white)),
                  trailing: Icon(
                    Icons.refresh,
                    color: white,
                    size: 25,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
