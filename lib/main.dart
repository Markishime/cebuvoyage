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
                      builder: (context) => HomePage(),
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
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Account(),
                    ),
                  );
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
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PackagesPage(),
                    ),
                  );
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

class Account extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  return Scaffold(
  appBar: AppBar(
  title: Text('ANG AKONG GUSTO I SOLTI KAY'),
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
  'MAPASAR TANG TANAN LEZGOOO',
  style: TextStyle(
  fontSize: 30,
  fontWeight: FontWeight.bold,
  color: Colors.black,
  ),
  ),
  // Add your booking details widgets here
  ],
  ),
  ),
  ),
  ),
  );
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
        title: Text(
          'Packages',
          style: TextStyle(fontSize: 20),
        ),
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
                  ],
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
            Padding(
              padding: const EdgeInsets.all(0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'PACKAGES:',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Container(
              color: Color(0xFFF9D392),
              padding: EdgeInsets.all(30),
              child: Row(
                children: [
                  DestinationCard(
                    image: AssetImage('images/first_page/2.png'),
                    description: '',
                  ),
                  SizedBox(width: 20),
                  Container(
                    width: 250,
                    padding: EdgeInsets.all(22),
                    decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        Text(
                          'OSLOB WHALE SHARK + SUMILON SANDBAR + KAWASAN FALLS TOUR PACKAGE.',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Color(0xFFF9D392),
              padding: EdgeInsets.all(30),
              child: Row(
                children: [
                  DestinationCard(
                    image: AssetImage('images/first_page/2.png'),
                    description: '',
                  ),
                  SizedBox(width: 20),
                  Container(
                    width: 250,
                    padding: EdgeInsets.all(22),
                    decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        Text(
                          'OSLOB WHALE SHARK + SUMILON SANDBAR + TUMALOG FALLS TOUR PACKAGE.',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Color(0xFFF9D392),
              padding: EdgeInsets.all(30),
              child: Row(
                children: [
                  DestinationCard(
                    image: AssetImage('images/first_page/2.png'),
                    description: '',
                  ),
                  SizedBox(width: 20),
                  Container(
                    width: 250,
                    padding: EdgeInsets.all(22),
                    decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        Text(
                          'OSLOB WHALE SHARK + TUMALOG FALLS + BADIAN CANYONEERING IN KAWASAN FALLS TOUR PACKAGE.',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class DestinationCard extends StatelessWidget {
  final ImageProvider<Object> image;
  final String description;

  const DestinationCard({
    required this.image,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 160, // Increase the width value to enlarge the container
        height: 160, // Increase the height value to enlarge the container
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
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10), // Adjust the padding values for more space
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Package1(),
                  ),
                );
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

class Package1 extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(
          'Packages',
          style: TextStyle(fontSize: 20),
        ),
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
                              SizedBox(height: 60),
                              Text(
                                "OSLOB WHALE SHARK + SUMILON SANDBAR + KAWASAN FALLS TOUR PACKAGE",
                                style: GoogleFonts.fredoka(
                                  fontSize: 35,
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
            SizedBox(height: 20),
            Container(
              height: 250, // Set the desired height for the images
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
            SizedBox(height: 10),
            Container(
              color: Color(0xFFF9D392),
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'INCLUSIVE:\nPrivate Tour (10 hours duration, excess hours are chargeable)\nPrivate Transportation - Pick up and drop off in any hotel, resort and residences (Cebu City and Mactan Island) '
                    '\nDOT trained local guard\nLight breakfast\nLunch with soft drinks or water\nSnorkeling or Swimming Free with the whale sharks\nBoat ride and life vest\nKawasan Falls, entrace fee included '
                    '\nGovernment Taxes and Fees'
                    '\n\n EXCLUSIVE/ADD-ONS:\nCamera Rental (P1000 for GoPro, Hero5 and up - SD card not included) - (bring micro SD class 10) \nSimala Side trip: 1-3 Persons (P600), 4-6 Persons (P700) '
                  ', 7-12 Persons (P800)'
                    '\n\n SAMPLE ITINERARY: \n04:00 AM – Pick up from the hotel\n06:30 AM – Light Breakfast in Oslob\n07:30 AM – Swimming or Snorkeling with the Whale Sharks\n08:30 AM – Cool Down at Tumalog Falls (You can ride a motorbike for additional P50 per person) '
                    '\n10:00 AM – Lunch with One Round of soft drinks\n11:00 AM – Prepare to go back to the City\n02:00 PM – Arrival in the Hotel',
                style: GoogleFonts.fredoka(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class Package2 extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(
          'Packages',
          style: TextStyle(fontSize: 20),
        ),
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
                              SizedBox(height: 60),
                              Text(
                                "OSLOB WHALE SHARK + SUMILON SANDBAR + KAWASAN FALLS TOUR PACKAGE",
                                style: GoogleFonts.fredoka(
                                  fontSize: 35,
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
            SizedBox(height: 20),
            Container(
              height: 250, // Set the desired height for the images
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
            SizedBox(height: 10),
            Container(
              color: Color(0xFFF9D392),
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'INCLUSIVE:\nPrivate Tour (10 hours duration, excess hours are chargeable)\nPrivate Transportation - Pick up and drop off in any hotel, resort and residences (Cebu City and Mactan Island) '
                    '\nDOT trained local guard\nLight breakfast\nLunch with soft drinks or water\nSnorkeling or Swimming Free with the whale sharks\nBoat ride and life vest\nKawasan Falls, entrace fee included '
                    '\nGovernment Taxes and Fees'
                    '\n\n EXCLUSIVE/ADD-ONS:\nCamera Rental (P1000 for GoPro, Hero5 and up - SD card not included) - (bring micro SD class 10) \nSimala Side trip: 1-3 Persons (P600), 4-6 Persons (P700) '
                    ', 7-12 Persons (P800)'
                    '\n\n SAMPLE ITINERARY: \n04:00 AM – Pick up from the hotel\n06:30 AM – Light Breakfast in Oslob\n07:30 AM – Swimming or Snorkeling with the Whale Sharks\n08:30 AM – Cool Down at Tumalog Falls (You can ride a motorbike for additional P50 per person) '
                    '\n10:00 AM – Lunch with One Round of soft drinks\n11:00 AM – Prepare to go back to the City\n02:00 PM – Arrival in the Hotel',
                style: GoogleFonts.fredoka(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}













