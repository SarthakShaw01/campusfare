import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyCM0e5JP_wZmX1JiMxIvw4_SGdd6QPHZVQ",
      authDomain: "campusfare-e2c99.firebaseapp.com",
      projectId: "campusfare-e2c99",
      storageBucket: "campusfare-e2c99.firebasestorage.app",
      messagingSenderId: "987893838890",
      appId: "1:987893838890:web:3e7dd730eb0c4363eabf53",
    ),
  );
  runApp(const CampusFareApp());
}

class CampusFareApp extends StatelessWidget {
  const CampusFareApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FoodListPage(),
    );
  }
}

class FoodListPage extends StatelessWidget {
  const FoodListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CampusFare – Surplus Food')),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('foods').snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            return const Center(child: Text('No food available'));
          }

          return ListView(
            children: snapshot.data!.docs.map((doc) {
              return ListTile(
                title: Text(doc['name']),
                subtitle: Text(
                  'Quantity: ${doc['quantity']} | Pickup: ${doc['pickupTime']}',
                ),
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
