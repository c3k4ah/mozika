import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mzk/views/widgets/color_picker.dart';

class Parametrage extends StatefulWidget {
  const Parametrage({Key? key}) : super(key: key);

  @override
  _ParametrageState createState() => _ParametrageState();
}

class _ParametrageState extends State<Parametrage> {
  Color currentColor = Colors.white;

  void changeColor(Color color) => setState(() => currentColor = color);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: currentColor,
        title: Text("Settings",
            style: TextStyle(color: Colors.black, fontSize: 25)),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("Apparence",
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontWeight: FontWeight.bold,
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
                  margin: EdgeInsets.all(10),
                  elevation: 20,
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.redAccent,
                      child: Icon(Icons.color_lens, color: Colors.white),
                    ),
                    title: Text("Personalisez vos couleurs"),
                  ),
                ),
              ),
            ),
            SizedBox(
              child: Card(
                margin: EdgeInsets.all(10),
                elevation: 20,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.yellow.shade700,
                    child: Icon(Icons.insert_emoticon, color: Colors.white),
                  ),
                  title: Text("Changer le style d'icon"),
                ),
              ),
            ),
            SizedBox(
              child: Card(
                margin: EdgeInsets.all(10),
                elevation: 20,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.black,
                    child: Icon(
                      Icons.dark_mode,
                      color: Colors.white,
                    ),
                  ),
                  title: Text("Mode Dark/Light"),
                  trailing: IconButton(
                    icon: Icon(
                      Icons.toggle_off,
                      color: Colors.black,
                      size: 50,
                    ),
                    onPressed: () {
                      Get.isDarkMode
                          ? Get.changeTheme(ThemeData.light())
                          : Get.changeTheme(ThemeData.dark());
                    },
                  ),
                ),
              ),
            ),
            Text("Audio",
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontWeight: FontWeight.bold,
                  fontSize: 27,
                )),
            Divider(),
            SizedBox(
              child: Card(
                margin: EdgeInsets.all(10),
                elevation: 20,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Icon(Icons.graphic_eq, color: Colors.white),
                  ),
                  title: Text("Egaliseur"),
                ),
              ),
            ),
            SizedBox(
              child: Card(
                margin: EdgeInsets.all(10),
                elevation: 20,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.purple,
                    child: Icon(Icons.speaker_group, color: Colors.white),
                  ),
                  title: Text("Activer mode speaker"),
                  trailing: Icon(
                    Icons.toggle_on,
                    color: Colors.purple,
                    size: 50,
                  ),
                ),
              ),
            ),
            Text("Stockage",
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                )),
            Divider(),
            SizedBox(
              child: Card(
                margin: EdgeInsets.all(10),
                elevation: 27,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.blueGrey,
                    child: Icon(Icons.source, color: Colors.white),
                  ),
                  title: Text("Chemin de lecture"),
                ),
              ),
            ),
            SizedBox(
              child: Card(
                margin: EdgeInsets.all(10),
                elevation: 20,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.deepOrange,
                    child: Icon(Icons.drive_folder_upload, color: Colors.white),
                  ),
                  title: Text("Rafrachir"),
                  trailing: Icon(
                    Icons.refresh,
                    color: Colors.black,
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
