# CampusFare 🍽️
Surplus Food Sharing for Campus Communities

## Problem
Large amounts of edible food go to waste daily in college campuses due to lack of real-time visibility of surplus food from canteens, events, or hostels. Students who could use this food have no simple way to know what’s available and when.

## Solution
CampusFare is a lightweight Flutter application that displays real-time surplus food listings from campus sources. Food availability is synced live using Firebase Cloud Firestore, ensuring users always see the latest data without manual refresh.

## Current MVP Features
- Live list of surplus food items
- Real-time updates using Firebase Cloud Firestore
- Simple and functional UI
- Web-based MVP (runs in browser)

## Google Technologies Used
- Flutter
- Firebase Cloud Firestore
- Firebase Core

## How It Works
1. Surplus food data is stored in a Firestore collection.
2. The Flutter app listens to Firestore in real time.
3. Any update in Firestore instantly reflects in the app UI.

## Running the Project Locally

### Prerequisites
- Flutter SDK
- Chrome browser

### Steps
```bash
git clone https://github.com/SarthakShaw01/campusfare.git
cd campusfare_app
flutter pub get
flutter run -d chrome
````

## Firestore Data Structure

Collection name: `foods`

Example document:

```json
{
  "name": "Veg Rice",
  "quantity": "10 plates",
  "pickupTime": "8:30 PM"
}
```

## Planned Enhancements

* Authentication for canteen staff and students
* Location-based filtering
* NGO pickup coordination
* Notifications for new food listings

## Project Status

MVP completed with core real-time functionality using Google technologies.

```

---

### 🔒 IMPORTANT (READ ONCE)
- The README **ends here**
- No extra text after this
- No mentor notes
- No instructions
- No screenshots
- No explanations

---

### ✅ NOW DO THIS
1. Click **Preview** → confirm it looks normal  
2. Click **Commit changes**  
3. Push to GitHub  

Then reply with **ONE WORD ONLY**:
- **Committed**

You’re done with README.  
Next we finish submission.
```
