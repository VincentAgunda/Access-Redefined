# Access-Redefined

**Access-Redefined** is a cross-platform application designed to assist users with mobility impairments by providing accessible route suggestions in urban environments. The app utilizes Google Maps and Azure services for real-time path analysis, making navigation easier and safer for all users.

## Table of Contents
- [Features](#features)
- [Tech Stack](#tech-stack)
- [Getting Started](#getting-started)
- [Environment Variables](#environment-variables)
- [Usage](#usage)
- [API Endpoints](#api-endpoints)
- [Accessibility Considerations](#accessibility-considerations)
- [Contributing](#contributing)
- [License](#license)

## Features
- **Route Suggestions**: Accessible routes avoiding stairs and obstacles.
- **Real-Time Updates**: Notifications about temporary blockages like construction.
- **AI Path Analysis**: Detects ramps, stairs, and barriers using Azure AI services.
- **Voice Commands**: Hands-free navigation through voice input.
- **Screen Reader Support**: Optimized for visually impaired users.

## Tech Stack

### Frontend
- **Flutter**: For building responsive UI across mobile and web.
- **Dart**: Programming language for Flutter development.
- **Google Maps API**: Provides map and route data.

### Backend
- **Node.js**: Server runtime.
- **Express.js**: Backend framework.
- **MongoDB**: Database for storing user and route data.

### AI & Machine Learning
- **Azure Cognitive Services**: For obstacle detection and predictive analysis.

## Getting Started

### Prerequisites
- **Flutter**: [Install Flutter](https://docs.flutter.dev/get-started/install)
- **Node.js**: [Install Node.js](https://nodejs.org/)
- **MongoDB**: Install MongoDB or use MongoDB Atlas for a cloud solution.

### Installation
1. **Clone the repository**:
   ```bash
   git clone https://github.com/yourusername/access_redefined.git
   cd access_redefined
Backend Setup:

bash
Copy code
cd backend
npm install
npm run dev
Frontend Setup:

bash
Copy code
cd ../frontend
flutter pub get
flutter run
Environment Variables
Create a .env file in the backend folder:

makefile
Copy code
MONGODB_URI=<your_mongodb_uri>
GOOGLE_MAPS_API_KEY=<your_google_maps_api_key>
AZURE_COGNITIVE_KEY=<your_azure_key>
PORT=3000
In lib/utils/constants.dart for the frontend, update the API URL:

dart
Copy code
const String apiBaseUrl = 'http://localhost:3000/api';
Usage
Start the backend server:
bash
Copy code
cd backend
npm run dev
Run the Flutter app:
bash
Copy code
cd frontend
flutter run
API Endpoints
Endpoint	Method	Description
/api/routes/suggestions	GET	Fetch accessible route suggestions
/api/routes/search	POST	Search for a specific route
/api/routes/alerts	GET	Get real-time alerts for obstructions
/api/users/register	POST	User registration
/api/users/login	POST	User login
Accessibility Considerations
High Contrast: Improved visibility with color contrast options.
Voice Navigation: Input destinations using voice commands.
Large Clickable Elements: Easy-to-press buttons for users with limited mobility.
Contributing
We welcome contributions to make this project better:

Fork the repo.
Create a new branch (git checkout -b feature-branch).
Commit your changes (git commit -m "Add feature").
Push to the branch (git push origin feature-branch).
Open a pull request.