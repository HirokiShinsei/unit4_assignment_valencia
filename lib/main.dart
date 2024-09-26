import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Profile',
      theme: ThemeData(
        primaryColor: Colors.white, 
        brightness: Brightness.light, 
      ),
      home: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Header Bar Section
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 24.0),
                  color: Colors.black87, 
                  child: const Center(
                    child: Text(
                      'MATTHEW ANDREI O. VALENCIA',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white, 
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 50), // Space after header

                // Profile Section
                Container(
                  width: MediaQuery.of(context).size.width * 0.6, // 60% of window width
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Container( 
                        width: 100,  
                        height: 100, 
                        decoration: BoxDecoration(
                          color: Colors.white, 
                          shape: BoxShape.circle, 
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2), 
                              blurRadius: 10, 
                              spreadRadius: 5, 
                              offset: const Offset(0, 2), 
                            ),
                          ],
                        ),
                        child: ClipOval(
                          child: Image.asset(
                            'assets/self-06.jpg',
                            fit: BoxFit.cover, 
                            alignment: Alignment.topCenter,
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      const Expanded( // Added Expanded to allow wrapping
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Matthew Andrei O. Valencia', 
                              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                              overflow: TextOverflow.visible, // Allow wrapping
                              softWrap: true, // Enable text wrapping
                            ),
                            SizedBox(height: 4), // Space between name and subtitle
                            Text(
                              'BS in Computer Science', // Subtitle 
                              style: TextStyle(fontSize: 14, color: Colors.black54),
                              overflow: TextOverflow.visible, // Allow wrapping
                              softWrap: true, // Enable text wrapping
                            ),
                            Text(
                              'Major in Artificial Intelligence', 
                              style: TextStyle(fontSize: 14, color: Colors.black54),
                              overflow: TextOverflow.visible, // Allow wrapping
                              softWrap: true, // Enable text wrapping
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 25), // Space between sections

                // Information Section
                Container(
                  width: MediaQuery.of(context).size.width * 0.6, 
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      _buildInfoRow(Icons.email, 'Email', 'matthewandrei.valencia@wvsu.edu.ph'),
                      const SizedBox(height: 20),
                      _buildInfoRow(Icons.phone, 'Phone', '+63 912 652 0936'),
                      const SizedBox(height: 20),
                      _buildInfoRow(Icons.location_on, 'Location', 'Miagao, Iloilo, 5023'),
                      const SizedBox(height: 20),
                      _buildInfoRow(Icons.work, 'Occupation', 'Photographer at RNFTC'),
                      const SizedBox(height: 20),
                      _buildInfoRow(Icons.favorite, 'Hobbies', 'Photography, Learning languages, Programming, Watvhing Anime'),
                      const SizedBox(height: 20),
                      _buildInfoRow(Icons.cake, 'Birthday', 'October 5, 2003')
                    ],
                  ),
                ),

                const SizedBox(height: 25), 

                // Biography Section
                Container(
                  width: MediaQuery.of(context).size.width * 0.6, 
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'BIOGRAPHY', // Title
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Born to a family of 7, being the youngest among the siblings of 5. Currently working part-time as a photographer to an Event Organizer "RNFTC". ',
                        style: TextStyle(fontSize: 16, height: 1.75),
                        softWrap: true,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'He has been a photographer for 2 years and has been learning programming for 3 years. He is currently studying at West Visayas State University, taking up Bachelor of Science in Computer Science major in Artificial Intelligence.'
                        'Aside from photography and programming, he also loves learning languages of different countries, currently learning German and Japanese, and watching anime.',
                        style: TextStyle(fontSize: 16, height: 1.75),
                        softWrap: true,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'He is a very passionate person, always eager to learn new things and always ready to take on new challenges. He always strive to explore beyond his limits and always ready to take on new opportunities.'
                        'Despite being the youngest, he always strive to live up to the achievements his siblings have attained.',
                        style: TextStyle(fontSize: 16, height: 1.75),
                        softWrap: true,
                      ),
                    ],
                  ),
                ),
              const SizedBox(height: 50), // Space after biography
            ],
          ),
        ),
      ),
    ),
  );
}

  // For building information rows
  Widget _buildInfoRow(IconData icon, String label, String data) {
    return Row(
      children: [
        Icon(icon, color: Colors.black),
        const SizedBox(width: 16),
        Expanded(
          child: Text(
            label,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            softWrap: true,
          ),
        ),
        const Spacer(),
        Flexible(
          child: Text(
            data,
            style: const TextStyle(fontSize: 16, color: Colors.black87),
            softWrap: true,
          ),
        ),
      ],
    );
  }
}
