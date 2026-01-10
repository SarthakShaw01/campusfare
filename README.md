# CampusFare
### A lightweight web MVP to reduce surplus food waste in college campuses

## Overview
CampusFare is a browser-based MVP designed to reduce food waste in college campuses by enabling quick and simple listing of surplus food.  
The application focuses on speed, clarity, and safe demo behavior, allowing users to add, view, and manage food listings within a single browser session.

This project is built as a **client-side MVP** to ensure a stable and reliable demonstration environment.

## Problem Statement
In college campuses, surplus food from canteens, hostels, and events often goes to waste due to the lack of a simple and timely communication system.  
Existing solutions are either too complex or slow to use in time-sensitive situations.

## Solution
CampusFare provides:
- A fast web interface to list surplus food
- Time-based pickup information
- Clean and intuitive UI for quick interactions
- Safe demo behavior with session-based data

The goal is to make surplus food **visible at the right time**.

## Key Features (MVP)
- Add surplus food with quantity and pickup time  
- Time picker to avoid manual input errors  
- Instant in-browser list updates  
- Delete with **UNDO** support to prevent accidental actions  
- Live clock for time awareness  
- Responsive and minimal UI  
- Session-based data (resets on refresh)

## MVP Design Decision
This MVP is intentionally **client-side only**.  
Data is stored in memory and resets on refresh.  
No authentication or backend dependency is used.

This ensures a stable public demo with no risk of shared or corrupted data.

## Tech Stack

### Google Technologies Used
- **Flutter (Web)**

### Hosting
- GitHub Pages

### Backend
- **Planned (Next Phase): Firebase Cloud Firestore**

## Future Enhancements
- Firebase Cloud Firestore for persistent storage  
- Authentication for canteen and student roles  
- Real-time food availability updates  
- AI-based food demand prediction  
- Food claiming and reservation system  

## Live MVP Demo
https://sarthakshaw01.github.io/campusfare/

## Demo Video
A 3-minute demo video explaining the solution and features is included in the submission.

## Repository Notes
- This repository contains the MVP source code  
- The deployed version corresponds to the submitted MVP  
- Backend integration is planned for future phases  

## Disclaimer
This is an MVP created for demonstration and evaluation purposes.  
Persistent storage and backend features are intentionally excluded at this stage.

## License
This project is for educational and demonstration purposes only.
