import 'package:flutter/material.dart';

class Zoo extends StatefulWidget {
  const Zoo({Key? key}) : super(key: key);

  @override
  _ZooState createState() {
    return _ZooState();
  }
}

class _ZooState extends State<Zoo> {

  final TextEditingController _controllerName = TextEditingController();
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerAge = TextEditingController();

  bool food = false;
  bool guide = false;
  bool transport = false;
  final _formkey = GlobalKey<FormState>();


  String? _groupValue;

  ValueChanged<String?> _valueChangedHandler() {
    return (value) => setState(() => _groupValue = value!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF606c38),

      appBar: AppBar(
        backgroundColor: Color(0xFF283618),
        title: Text('Registering - ZOO'),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              children: <Widget>[
                Padding(padding: EdgeInsets.all(15),
                  child: Text(
                    'Type your data:',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFFfefae0),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ///Name
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: TextFormField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    controller: _controllerName,
                    decoration: InputDecoration(
                      labelText: 'Type your Name:',
                      labelStyle: TextStyle(
                          color: Colors.white
                      ),
                    ),
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if(value == null || value.isEmpty) {
                        return 'Please enter your NAME';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 16.0)
                ),
                ///Email
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 40.0),
                  child: TextFormField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    controller: _controllerEmail,
                    decoration: InputDecoration(
                      labelText: 'Type your Email',
                      labelStyle: TextStyle(
                          color: Colors.white
                      ),
                    ),
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if(value == null || value.isEmpty) {
                        return 'Please enter your EMAIL';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 16.0)
                ),
                ///Age
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 40.0),
                  child: TextFormField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    controller: _controllerAge,
                    decoration: InputDecoration(
                      labelText: 'Type your Age',
                      labelStyle: TextStyle(
                          color: Colors.white
                      ),
                    ),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if(value == null || value.isEmpty) {
                        return 'Please enter your AGE';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(padding: EdgeInsets.all(15.0),
                  child: Text(
                    'Select what you want to include in the package:',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFFfefae0),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ///CheckBox
                CheckboxListTile(
                  title: const Text(
                    'FOOD',
                    style: TextStyle(
                      color: Color(0xFFfed9b7),
                    ),
                  ),
                  subtitle: const Text(
                    'any food at will',
                    style: TextStyle(
                      color: Color(0xFFfefae0),
                    ),
                  ),
                  secondary: const Icon(
                    Icons.dining_outlined,
                    color: Colors.white,
                  ),
                  activeColor: Colors.orange,
                  value: food,
                  onChanged: (bool? valor) {
                    setState(() {
                      food = valor!;
                    });
                  },
                ),
                CheckboxListTile(
                  title: const Text(
                    'GUIDE',
                    style: TextStyle(
                      color: Color(0xFFfed9b7),
                    ),
                  ),
                  subtitle: const Text(
                    'someone will accompany you for a better experience and knowledge',
                    style: TextStyle(
                      color: Color(0xFFfefae0),
                    ),
                  ),
                  secondary: const Icon(
                    Icons.attribution_rounded,
                    color: Colors.white,
                  ),
                  activeColor: Colors.orange,
                  value: guide,
                  onChanged: (bool? valor) {
                    setState(() {
                      guide = valor!;
                    });
                  },
                ),
                CheckboxListTile(
                  title: const Text(
                    'TRANSPORT',
                    style: TextStyle(
                      color: Color(0xFFfed9b7),
                    ),
                  ),
                  subtitle: const Text(
                    'get to know the entire zoo without getting tired',
                    style: TextStyle(
                      color: Color(0xFFfefae0),
                    ),
                  ),
                  secondary: const Icon(
                    Icons.directions_car_rounded,
                    color: Colors.white,
                  ),
                  activeColor: Colors.orange,
                  value: transport,
                  onChanged: (bool? valor) {
                    setState(() {
                      transport = valor!;
                    });
                  },
                ),
                Padding(padding: EdgeInsets.only(top: 5.0)),
                ///Radio Option
                Container(
                  child: Row(
                    children: [
                      MyRadionOption<String>(
                        value: 'A',
                        groupValue: _groupValue,
                        onChanged: _valueChangedHandler(),
                        label: 'A',
                        text: '1 person',
                      ),
                      MyRadionOption<String>(
                        value: 'B',
                        groupValue: _groupValue,
                        onChanged: _valueChangedHandler(),
                        label: 'B',
                        text: '2 people',
                      ),
                      MyRadionOption<String>(
                        value: 'C',
                        groupValue: _groupValue,
                        onChanged: _valueChangedHandler(),
                        label: 'C',
                        text: '3 or + people',
                      ),
                    ],
                  ),
                ),
                ///Button Submit
                Padding(padding: EdgeInsets.only(bottom: 15.0)),
                RaisedButton(
                  color: Color(0xFF967e39),
                  onPressed: () {
                    if(_formkey.currentState!.validate()){
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text(
                          'Registered successfully!',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )),
                      );
                    };
                  },
                  child: const Text(
                      'Submit'
                  ),
                ),
                Padding(padding: EdgeInsets.only(bottom: 15.0)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

///começa aqui
class MyRadionOption<T> extends StatelessWidget {
  final T value;
  final T? groupValue;
  final String label;
  final String text;
  final ValueChanged<T?> onChanged;


  const MyRadionOption({
    required this.value,
    required this.groupValue,
    required this.label,
    required this.text,
    required this.onChanged,

  });

  Widget _buildLabel() {
    final bool isSelected = value == groupValue;

    return Container(
      width: 30.0,
      height: 30.0,
      decoration: ShapeDecoration(
        shape: CircleBorder(
        ),
        color: isSelected ? Colors.orange : Colors.black,
      ),
      child: Center(
        child: Text(
          value.toString(),
          style: TextStyle(
              color: isSelected ? Colors.black : Colors.white,
              fontSize: 12
          ),
        ),
      ),
    );
  }

  //build text
  Widget _buildText() {
    return Text(
      text,
      style: const TextStyle(
          color: Color(0xFFfefae0),
          fontSize: 16
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.0),
      child: InkWell(
        onTap: () => onChanged(value),
        splashColor: Colors.deepOrange.withOpacity(0.6),
        child: Row(
          children: [
            _buildLabel(),
            const SizedBox(width: 10.0),
            _buildText(),
          ],
        ),
      ),
    );
  }
}


