Access-Redefined
Access-Redefined is a mobile and web application designed to help users with mobility impairments find accessible routes in urban environments. It leverages Google Maps and Azure services to provide real-time, AI-powered path analysis, making it easier for users to navigate stairs-free paths, ramps, and accessible routes.

Table of Contents
Features
Tech Stack
Getting Started
Environment Variables
Usage
API Endpoints
Accessibility Considerations
Contributing
License
Features
Route Suggestions: Get recommended accessible routes to your destination, avoiding stairs and other barriers.
Real-Time Path Updates: Live updates about temporary blockages (e.g., construction).
AI-Powered Path Analysis: Uses Azure Cognitive Services to detect obstacles, ramps, and stairs.
Voice Commands: Hands-free navigation through voice input.
Screen Reader Compatibility: Optimized for screen readers for visually impaired users.
Custom Alerts: Notifications for construction and path closures that may affect the journey.
Search Functionality: Integrated search to find routes using Google Maps.
Tech Stack
Frontend
Flutter: Cross-platform mobile and web app framework.
Dart: Programming language for Flutter.
Google Maps API: For map integration and route data.
Responsive Design: Adapts to various screen sizes for web and mobile.
Backend
Node.js: Runtime environment for the backend server.
Express.js: Framework for handling API requests.
MongoDB: Database for storing user data and route information.
Azure Cognitive Services: For analyzing image and video data to detect accessibility features.
AI & Machine Learning
Azure Machine Learning: For predictive analysis and obstacle detection using AI models.
Getting Started
Prerequisites
Install Flutter (v3.0+): Flutter Installation Guide
Install Node.js (v14+)
MongoDB: Install and set up MongoDB locally or use MongoDB Atlas.
Google Cloud and Azure accounts for API access.
Installation
Clone the repository:

bash
Copy code
git clone https://github.com/yourusername/access_redefined.git
cd access_redefined
Set up the backend:

bash
Copy code
cd backend
npm install
npm run dev
Set up the frontend:

bash
Copy code
cd ../frontend
flutter pub get
flutter run
Environment Variables
Create a .env file in the backend directory and add the following:

makefile
Copy code
MONGODB_URI=<your_mongodb_uri>
GOOGLE_MAPS_API_KEY=<your_google_maps_api_key>
AZURE_COGNITIVE_KEY=<your_azure_key>
PORT=3000
Frontend Configuration
In lib/utils/constants.dart, update the API URL:

dart
Copy code
const String apiBaseUrl = 'http://localhost:3000/api';
Usage
Launch the backend server:
bash
Copy code
cd backend
npm run dev
Launch the Flutter app (Choose Chrome or Mobile Device):
bash
Copy code
flutter run
API Endpoints
Endpoint	Method	Description
/api/routes/suggestions	GET	Get accessible route suggestions
/api/routes/search	POST	Search for a specific route
/api/routes/alerts	GET	Fetch real-time alerts for path issues
/api/users/register	POST	User registration
/api/users/login	POST	User login
Accessibility Considerations
High Contrast Mode: High-contrast colors for better visibility.
Large Buttons: Easy-to-press buttons for users with limited mobility.
Screen Reader Support: Fully compatible with screen readers.
Voice Commands: Users can input destinations via voice.
Contributing
We welcome contributions to enhance this project! Follow these steps:

Fork the repository.
Create a new branch:
bash
Copy code
git checkout -b feature-branch
Make your changes and commit:
bash
Copy code
git commit -m "Add new feature"
Push to the branch:
bash
Copy code
git push origin feature-branch
Open a pull request.
License
This project is licensed under the MIT License - see the LICENSE file for details.

