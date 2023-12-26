import 'package:flutter/material.dart';

class MyMeasure extends StatefulWidget {
  const MyMeasure({super.key});

  @override
  State<MyMeasure> createState() => _MyMeasureState();
}

class _MyMeasureState extends State<MyMeasure> {
  double result = 0;
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        width: 2.5,
        color: Colors.black,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.circular(5.0),
    );

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text(
          "CURRENCY CONVERTER",
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'GHC ${result == 0? result.toStringAsFixed(0):result.toStringAsFixed(2)}',
                style: const TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              TextField(
                controller: textEditingController,
                decoration: InputDecoration(
                  hintText: "Please Enter Amount in Dollar",
                  hintStyle: const TextStyle(color: Colors.black),
                  prefixIcon: const Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
              const SizedBox(
                height: 10
              ),

              ElevatedButton(
                onPressed: () {
                  result = double.parse(textEditingController.text) * 12;
                  setState(() {});
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0))),
                child: const Text("Convert"),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomAppBar(color: Colors.black,),
    );
  }
}
