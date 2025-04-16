import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final String country;

  SecondPage({required this.country});

  @override
  Widget build(BuildContext context) {
    Map<String, List<String>> events = {
      'Egypt': ['Visit the Pyramids', 'Nile River Cruise', 'Explore Luxor'],
      'Italy': ['Taste Authentic Pizza', 'Visit the Colosseum', 'Wander in Venice'],
      'Japan': ['Explore Tokyo', 'Visit Kinkaku-ji', 'Try Sushi'],
      'Brazil': ['Attend Rio Carnival', 'Visit Iguazu Falls', 'Explore the Amazon'],
    };

    return Scaffold(
      appBar: AppBar(
        title: Text('$country - Events'),
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Colors.teal[100],
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.teal[200]!, Colors.teal[100]!],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: ListView.builder(
            itemCount: events[country]?.length ?? 0,
            itemBuilder: (context, index) {
              return Card(
                margin: EdgeInsets.all(10),
                color: Colors.white,
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ListTile(
                  leading: Icon(Icons.event, color: Colors.teal, size: 50),
                  title: Text(
                    events[country]![index],
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  trailing: Icon(Icons.arrow_forward, color: Colors.teal),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}