import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CameraScreenTest extends StatefulWidget{
  const CameraScreenTest({Key? key}) : super(key: key);

  @override
  State createState() {
    return CameraWidgetState();
  }

}

class CameraWidgetState extends State{
  PickedFile? imageFile=null;
  Future<void>_showChoiceDialog(BuildContext context)
  {
    return showDialog(context: context,builder: (BuildContext context){

      return AlertDialog(
        title: const Text("Choose option",style: TextStyle(color: Colors.green),),
        content: SingleChildScrollView(
          child: ListBody(
            children: [
              const Divider(height: 1,color: Colors.blue,),
              ListTile(
                onTap: (){
                  _openGallery(context);
                },
                title: const Text("Gallery"),
                leading: const Icon(Icons.account_box,color: Colors.green,),
              ),

              const Divider(height: 1,color: Colors.green,),
              ListTile(
                onTap: (){
                  _openCamera(context);
                },
                title: const Text("Camera"),
                leading: const Icon(Icons.camera,color: Colors.green,),
              ),
            ],
          ),
        ),);
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Camera"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Card(
                child:( imageFile==null)?const Text("No Image Selected"): Image.file( File(  imageFile!.path)),
              ),
              MaterialButton(
                textColor: Colors.white,
                color: Colors.green,
                onPressed: (){
                  _showChoiceDialog(context);
                },
                child: const Text("Select Image"),

              )
            ],
          ),
        ),
      ),
    );
  }

  void _openGallery(BuildContext context) async{
    final pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery ,
    );
    setState(() {
      imageFile = pickedFile!;
    });

    Navigator.pop(context);
  }

  void _openCamera(BuildContext context)  async{
    final pickedFile = await ImagePicker().getImage(
      source: ImageSource.camera ,
    );
    setState(() {
      imageFile = pickedFile!;
    });
    Navigator.pop(context);
  }
}
