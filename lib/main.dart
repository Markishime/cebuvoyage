import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';



void main() => runApp(CebuVoyage());

class CebuVoyage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cebu Voyage',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
  }

  class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
  return Scaffold(
  body: Container(
  decoration: BoxDecoration(
  gradient: LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [Colors.black, Colors.blue, Colors.black26],
  ),
  ),
  child: Padding(
  padding: EdgeInsets.all(16.0),
  child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
  Text(
  'Welcome to Cebu Voyage!',
  style: TextStyle(
  fontSize: 28,
  fontWeight: FontWeight.bold,
  color: Colors.white,
  ),
  ),
  SizedBox(height: 16.0),
  Positioned(
  left: 0,
  right: 0,
  top: MediaQuery.of(context).size.height * 0.15,
  child: Container(
  alignment: Alignment.center,
  child: CircleAvatar(
  radius: MediaQuery.of(context).size.width * 0.2,
  backgroundImage: AssetImage('images/first_page/logo.png'),
  ),
  ),
  ),
  SizedBox(height: 16.0),
  Container(
  decoration: BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.circular(8.0),
  ),
  child: Row(
  children: [
  Padding(
  padding: const EdgeInsets.all(8.0),
  child: Icon(Icons.email),
  ),
  Expanded(
  child: TextField(
  controller: _emailController,
  keyboardType: TextInputType.emailAddress,
  decoration: InputDecoration(
  hintText: 'Email',
  border: InputBorder.none,
  ),
  ),
  ),
  ],
  ),
  ),
  SizedBox(height: 16.0),
  Container(
  decoration: BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.circular(8.0),
  ),
  child: Row(
  children: [
  Padding(
  padding: const EdgeInsets.all(8.0),
  child: Icon(Icons.lock),
  ),
  Expanded(
  child: TextField(
  controller: _passwordController,
  obscureText: true,
  decoration: InputDecoration(
  hintText: 'Password',
  border: InputBorder.none,
  ),
  ),
  ),
  ],
  ),
  ),
  SizedBox(height: 16.0),
  ElevatedButton(
  onPressed: () {
  String email = _emailController.text;
  String password = _passwordController.text;
  // Perform login validation here
  if (email == 'markcuizon@gmail.com' && password == 'summer') {
  // Navigate to the home page
  Navigator.pushReplacement(
  context,
  MaterialPageRoute(builder: (context) => HomePage()),
  );
  } else {
  // Show an error message
  showDialog(
  context: context,
  builder: (BuildContext context) {
  return AlertDialog(
  title: Text('Error'),
  content: Text('Invalid email or password.'),
  actions: <Widget>[
  TextButton(
  child: Text('OK'),
  onPressed: () {
  Navigator.of(context).pop();
  },
  ),
  ],
  );
  },
  );
  }
  },
  child: Text('Login'),
  ),
  SizedBox(height: 16.0),
  TextButton(
  onPressed: () {
  showDialog(
  context: context,
  builder: (BuildContext context) {
  return AlertDialog(
  title: Text('Forgot Password'),
  content: Text(
  'If you wish to reset your password, contact the admin at cmark7781@gmail.com.'),
  actions: <Widget>[
  TextButton(
  child: Text('OK'),
  onPressed: () {
  Navigator.of(context).pop();
  },
  ),
  ],
  );
  },
  );
  },
  child: Text(
  'Forgot Password?',
  style: TextStyle(
  color: Colors.white,
  ),
  ),
  ),
  SizedBox(height: 16.0),
  TextButton(
  onPressed: () {
  Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => RegistrationPage()),
  );
  },
  child: Text(
  'Sign up',
  style: TextStyle(
  color: Colors.white,
  ),
  ),
  ),
  ],
  ),
  ),
  ),
  );
  }
  }

  class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _contactNumberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String _selectedGender = 'Male'; // Initialize with a default value

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.black, Colors.blue, Colors.black26],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Create an Account',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 16.0),
                TextField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    labelText: 'Name',
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
                SizedBox(height: 16.0),
                TextField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
                SizedBox(height: 16.0),
                TextField(
                  controller: _contactNumberController,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelText: 'Contact Number',
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
                SizedBox(height: 16.0),
                TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
                SizedBox(height: 16.0),
                Text(
                  'Gender',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                RadioListTile(
                  title: Text('Male'),
                  value: 'Male',
                  groupValue: _selectedGender,
                  onChanged: (value) {
                    setState(() {
                      _selectedGender = value!;
                    });
                  },
                ),
                RadioListTile(
                  title: Text('Female'),
                  value: 'Female',
                  groupValue: _selectedGender,
                  onChanged: (value) {
                    setState(() {
                      _selectedGender = value!;
                    });
                  },
                ),
                SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () {
                    String name = _nameController.text;
                    String email = _emailController.text;
                    String contactNumber = _contactNumberController.text;
                    String password = _passwordController.text;
                    String gender = _selectedGender;

                    // Perform registration and database insertion here

                    // Display a success message
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Success'),
                          content: Text('Registration successful.'),
                          actions: <Widget>[
                            TextButton(
                              child: Text('OK'),
                              onPressed: () {
                                Navigator.of(context).pop();
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HomePage(),
                                  ),
                                );
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Text('Register'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cebu Voyage'),
      ),
      drawer: Sidebar(), // Add the sidebar to the Scaffold
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.black26,
              child: Center(
                child: Text(
                  'Welcome to Cebu Voyage!',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 16 / 9,
                enlargeCenterPage: true,
              ),
              items: [
                Image.asset('images/north/north1.jpeg'),
                Image.asset('images/north/north2.jpg'),
                Image.asset('images/south/south1.jpg'),
                Image.asset('images/south/south2.jpg'),
                Image.asset('images/city/city1.jpg'),
                Image.asset('images/city/city2.jpg'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
class Sidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/first_page/me.jpg'),
              ),
              SizedBox(height: 10),
              Text(
                'Mark Lloyd Cuizon',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'markcuizon@gmail.com',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Text(
                'Philippines',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CebuCityPackagePage(),
                    ),
                  );
                },
                child: Text(
                  'Home',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  // Handle Account button click
                },
                child: Text(
                  'Account',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  // Handle Booking Info button click
                },
                child: Text(
                  'Booking Info',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  // Handle Contact Us button click
                },
                child: Text(
                  'Contact Us',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  // Handle About Us button click
                },
                child: Text(
                  'About Us',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  // Handle Logout button click
                },
                child: Text(
                  'Logout',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NorthPackagePage extends StatelessWidget {
  double price = 0.0;
  double packagePrice = 1499.00;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('North Cebu Package'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.blue,
              child: Center(
                child: Text(
                  'North Cebu Package',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 16 / 9,
                enlargeCenterPage: true,
              ),
              items: [
                Image.asset('images/north/north.png'),
                Image.asset('images/north/gugma.jpg'),
                Image.asset('images/north/langob.jpg'),
                Image.asset('images/north/mala.jpg'),
                Image.asset('images/north/light.jpg'),
              ],
            ),
            Container(
              padding: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Package Price: ₱$packagePrice',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Transportation',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ListTile(
                    title: Text('Motorcycle - ₱100'),
                    onTap: () {
                      price = 100.0;
                    },
                  ),
                  ListTile(
                    title: Text('Sedan - ₱150'),
                    onTap: () {
                      price = 150.0;
                    },
                  ),
                  ListTile(
                    title: Text('Van - ₱200'),
                    onTap: () {
                      price = 200.0;
                    },
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Pick-up Place',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter pick-up place',
                    ),
                    onChanged: (value) {
                      // Handle pick-up place input
                    },
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Drop-off Place',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter drop-off place',
                    ),
                    onChanged: (value) {
                      // Handle drop-off place input
                    },
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Mode of Payment',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ListTile(
                    title: Text('GCash'),
                    onTap: () {
                      // Handle mode of payment selection
                    },
                  ),
                  ListTile(
                    title: Text('Credit Card (Bank Transfer)'),
                    onTap: () {
                      // Handle mode of payment selection
                    },
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(12),
              child: ElevatedButton(
                onPressed: () {
                  // Handle book now button click
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BookingPage(price: packagePrice)),
                  );
                },
                child: Text('Select'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class CebuCityPackagePage extends StatelessWidget {
  double price = 0.0;
  double packagePrice = 999.00;

  @override
  Widget build(BuildContext context) {
  return Scaffold(
  appBar: AppBar(
  title: Text('Cebu City Package'),
  ),
  body: SingleChildScrollView(
  child: Column(
  children: [
  Container(
  color: Colors.blue,
  child: Center(
  child: Text(
  'Cebu City Package',
  style: TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.bold,
  color: Colors.black,
  ),
  ),
  ),
  ),
  CarouselSlider(
  options: CarouselOptions(
  autoPlay: true,
  aspectRatio: 16 / 9,
  enlargeCenterPage: true,
  ),
  items: [
    Image.asset('images/city/city.png'),
    Image.asset('images/city/ayala.jpg'),
    Image.asset('images/city/fort.jpg'),
    Image.asset('images/city/mage.jpg'),
    Image.asset('images/city/taoist.jpg'),
  ],
  ),
  Container(
  padding: EdgeInsets.all(12),
  child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
  Text(
  'Package Price: ₱$packagePrice',
  style: TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.bold,
  ),
  ),
  ],
  ),
  ),
  Container(
  padding: EdgeInsets.all(12),
  child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
  Text(
  'Transportation',
  style: TextStyle(
  fontSize: 10,
  fontWeight: FontWeight.bold,
  ),
  ),
  ListTile(
  title: Text('Motorcycle - ₱100'),
  onTap: () {
  price = 100.0;
  },
  ),
  ListTile(
  title: Text('Sedan - ₱150'),
  onTap: () {
  price = 150.0;
  },
  ),
  ListTile(
  title: Text('Van - ₱200'),
  onTap: () {
  price = 200.0;
  },
  ),
  ],
  ),
  ),
  Container(
  padding: EdgeInsets.all(12),
  child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
  Text(
  'Pick-up Place',
  style: TextStyle(
  fontSize: 10,
  fontWeight: FontWeight.bold,
  ),
  ),
  TextField(
  decoration: InputDecoration(
  hintText: 'Enter pick-up place',
  ),
  onChanged: (value) {
  // Handle pick-up place input
  },
  ),
  ],
  ),
  ),
  Container(
  padding: EdgeInsets.all(12),
  child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
  Text(
  'Drop-off Place',
  style: TextStyle(
  fontSize: 10,
  fontWeight: FontWeight.bold,
  ),
  ),
  TextField(
  decoration: InputDecoration(
  hintText: 'Enter drop-off place',
  ),
  onChanged: (value) {
  // Handle drop-off place input
  },
  ),
  ],
  ),
  ),
  Container(
  padding: EdgeInsets.all(12),
  child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
  Text(
  'Mode of Payment',
  style: TextStyle(
  fontSize: 10,
  fontWeight: FontWeight.bold,
  ),
  ),
  ListTile(
  title: Text('GCash'),
  onTap: () {
  // Handle mode of payment selection
  },
  ),
  ListTile(
  title: Text('Credit Card (Bank Transfer)'),
  onTap: () {
  // Handle mode of payment selection
  },
  ),
  ],
  ),
  ),
  Container(
  padding: EdgeInsets.all(12),
  child: ElevatedButton(
  onPressed: () {
  // Handle book now button click
  Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => BookingPage(price: packagePrice)),
  );
  },
  child: Text('Select'),
  ),
  ),
  ],
  ),
  ),
  );
  }
  }


class SouthPackagePage extends StatelessWidget {
  double price = 0.0;
  double packagePrice = 1999.00;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('South Cebu Package'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.blue,
              child: Center(
                child: Text(
                  'South Cebu Package',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 16 / 9,
                enlargeCenterPage: true,
              ),
              items: [
                Image.asset('images/south/south.png'),
                Image.asset('images/south/1.png'),
                Image.asset('images/south/2.png'),
                Image.asset('images/south/3.png'),
                Image.asset('images/south/4.png'),
              ],
            ),
            Container(
              padding: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Package Price: ₱$packagePrice',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Transportation',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ListTile(
                    title: Text('Motorcycle - ₱100'),
                    onTap: () {
                      price = 100.0;
                    },
                  ),
                  ListTile(
                    title: Text('Sedan - ₱150'),
                    onTap: () {
                      price = 150.0;
                    },
                  ),
                  ListTile(
                    title: Text('Van - ₱200'),
                    onTap: () {
                      price = 200.0;
                    },
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Pick-up Place',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter pick-up place',
                    ),
                    onChanged: (value) {
                      // Handle pick-up place input
                    },
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Drop-off Place',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter drop-off place',
                    ),
                    onChanged: (value) {
                      // Handle drop-off place input
                    },
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Mode of Payment',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ListTile(
                    title: Text('GCash'),
                    onTap: () {
                      // Handle mode of payment selection
                    },
                  ),
                  ListTile(
                    title: Text('Credit Card (Bank Transfer)'),
                    onTap: () {
                      // Handle mode of payment selection
                    },
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(12),
              child: ElevatedButton(
                onPressed: () {
                  // Handle book now button click
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BookingPage(price: packagePrice)),
                  );
                },
                child: Text('Select'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BackgroundMainClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(0, size.height * 0.2);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

class DiagonalClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    var diag_offset = 0.2;
    var diag_height = 0.06;
    path.moveTo(0, size.height * diag_offset);
    path.lineTo(0, size.height * diag_offset + (size.height * diag_height));
    path.lineTo(size.width, (size.height * diag_height));
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

class BookingPage extends StatelessWidget {
  final double price;

  BookingPage({required this.price});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Booking'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.black, Colors.blue, Colors.black26],
          ),
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Booking Details',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 16.0),
                Text(
                  'Package Price: ₱$price',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                // Other booking details
                SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () {
                    // Perform booking confirmation and database insertion here

                    // Display a success message
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Success'),
                          content: Text('Booking confirmed.'),
                          actions: <Widget>[
                            TextButton(
                              child: Text('OK'),
                              onPressed: () {
                                Navigator.of(context).pop();
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => PackagesPage(),
                                  ),
                                );
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Text(
                    'Book Now',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PackagesPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              // Open user dropdown or perform user-related action
            },
            icon: Icon(Icons.account_circle),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Column(
                  children: [
                    Container(
                      color: Color(0xFF265591),
                      height: 60,
                      width: MediaQuery.of(context).size.width,
                    ),
                    Container(
                      color: Color(0xFFF9D392),
                      height: 7,
                      width: MediaQuery.of(context).size.width,
                    ),
                    Container(
                      color: Color(0xFF265591),
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Opacity(
                            opacity: 0.5,
                            child: Image.network(
                              'images/first_page/temple.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Column(
                            children: [
                              SizedBox(height: 50),
                              Text(
                                "CHOOSE YOUR",
                                style: GoogleFonts.fredoka(
                                  fontSize: 45,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'PACKAGE',
                                style: GoogleFonts.knewave(
                                  fontSize: 55,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(height: 20, color: Color(0xFF265591)),
                  ],
                ),
                Positioned(
                  left: 10,
                  top: 10,
                  child: InkWell(
                    onTap: () {
                      _scaffoldKey.currentState!.openDrawer();
                    },
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                      child: Text(
                        'M',
                        style: TextStyle(fontSize: 18.0, color: Colors.blue),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 15,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
                    child: CircleAvatar(
                      radius: 50,
                      backgroundColor: Color(0xFFF9D392),
                      child: CircleAvatar(
                        radius: 45,
                        backgroundImage: AssetImage(
                          'images/first_page/Cebu Voyage-logos.jpeg',
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Sidebar(),
                Expanded(
                  flex: 2,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xFF245790),
                          Color(0xFFF9D392),
                          Color(0xFF9EC6CE)
                        ],
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Choose your Package',
                              style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            DestinationCard(
                              image: AssetImage('images/first_page/1.png'),
                            ),
                            DestinationCard(
                              image: AssetImage('images/first_page/2.png'),
                            ),
                            DestinationCard(
                              image: AssetImage('images/first_page/3.png'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


class DestinationCard extends StatelessWidget {
  final ImageProvider<Object> image;

  const DestinationCard({required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 120,
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: image,
            fit: BoxFit.cover,
          ),
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            child: ElevatedButton(
              onPressed: () {
                // Handle button press
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.transparent,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                'SELECT',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}










