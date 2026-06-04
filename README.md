# 🛍️ Fashion App

A modern iOS E-Commerce application built using **SwiftUI** and **MVVM Architecture**. The app allows users to browse fashion products, explore categories, search for items, and view detailed product information through a clean and responsive user interface.

---

## 📱 Project Preview

### Home Screen
![Home Screen](screenshots/home.png)

### Product Details
![Product Details](screenshots/product-details.png)

### Categories
![Categories](screenshots/categories.png)

### Search
![Search](screenshots/search.png)

---

## ✨ Features

- 🛒 Browse fashion products
- 🔍 Search products instantly
- 📂 Filter products by category
- 📄 Detailed product information
- 🖼️ Product image loading
- ⚡ Fast API integration
- 🎨 Modern SwiftUI Interface
- 📱 Responsive Design
- 🏗️ MVVM Architecture
- 🔄 Real-time Data Fetching

---

## 🛠️ Tech Stack

| Technology | Usage |
|------------|--------|
| Swift | Programming Language |
| SwiftUI | User Interface |
| MVVM | Architecture Pattern |
| URLSession | API Requests |
| Async/Await | Asynchronous Programming |
| JSONDecoder | JSON Parsing |
| Xcode | Development Environment |

---

## 📂 Project Structure

```text
FashionApp
│
├── Models
│   ├── Product.swift
│   └── Category.swift
│
├── Views
│   ├── HomeView.swift
│   ├── ProductDetailView.swift
│   ├── SearchView.swift
│   └── CategoryView.swift
│
├── ViewModels
│   └── ProductViewModel.swift
│
├── Services
│   └── APIService.swift
│
└── Resources
```

## 🚀 Getting Started

### Requirements

- macOS
- Xcode 16 or later
- iOS 18 or later

### Installation

Clone the repository:

```bash
git clone https://github.com/yourusername/fashion-app-swiftui.git
```

Navigate to project folder:

```bash
cd fashion-app-swiftui
```

Open in Xcode:

```bash
open FashionApp.xcodeproj
```

Run the application on:

- iOS Simulator
- Physical iPhone Device

---

## 📡 API Integration

This project uses a public REST API to fetch:

- Product Listings
- Product Details
- Categories
- Product Images

Data is fetched dynamically using URLSession and decoded using Swift's Codable protocol.

---

## 🏗️ Architecture

This project follows the MVVM (Model-View-ViewModel) architecture.

### Model

Handles API response models and data structures.

### View

Displays the user interface and user interactions.

### ViewModel

Manages business logic and data flow between Model and View.

Benefits:

- Clean Code
- Better Scalability
- Easier Maintenance
- Improved Testability

---

## 📚 What I Learned

During the development of this project, I gained practical experience in:

- SwiftUI Development
- MVVM Architecture
- API Integration
- JSON Parsing
- State Management
- NavigationStack
- Async/Await
- Reusable Components
- Clean Code Practices
- Git & GitHub Workflow

---

## 🎥 Demo Video

Add your demo video link here:

https://your-demo-video-link.com

---

## 🔗 Links

### GitHub Repository

https://github.com/Manojkumar3636/E-Commerce_App

### Portfolio

https://your-portfolio-link.com

### LinkedIn

https://www.linkedin.com/in/manoj-kumar2003/

---

## 👨‍💻 Developer

**Manoj Kumar**

iOS Developer | SwiftUI Enthusiast

Passionate about building modern, user-friendly, and scalable iOS applications using SwiftUI and clean architecture principles.

---

## ⭐ Support

If you found this project helpful or interesting, consider giving it a ⭐ on GitHub.

It helps support the project and motivates future improvements.

---

### Future Enhancements

- ❤️ Wishlist Feature
- 🛒 Shopping Cart
- 💳 Checkout Flow
- 🔐 User Authentication
- 🌙 Dark Mode
- 🔔 Push Notifications
- 📦 Order Tracking
