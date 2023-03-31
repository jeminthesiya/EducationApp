import 'package:all_in_one/all_in_one/provider/all_Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class All_In_One_Screen extends StatefulWidget {
  const All_In_One_Screen({Key? key}) : super(key: key);

  @override
  State<All_In_One_Screen> createState() => _All_In_One_ScreenState();
}

class _All_In_One_ScreenState extends State<All_In_One_Screen> {
  App_provider? Ptrue;
  App_provider? Pfalse;

  @override
  Widget build(BuildContext context) {
    Ptrue = Provider.of<App_provider>(context, listen: true);
    Pfalse = Provider.of<App_provider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.black54,
          leading: Icon(
            Icons.arrow_back,
          ),
          title: Text("EDUCATION APP"),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.payment,
              ),
            ),
          ],
        ),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 20,
            childAspectRatio: 0.75,
            // crossAxisCount: 2,
          ),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'new');
                Pfalse!.initcontriller(index);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    child: Image.asset(
                      "${Pfalse!.logoList[index]}",
                      // fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            );
          },
          itemCount: Ptrue?.logoList.length,
        ),
      ),
    );
  }
}
