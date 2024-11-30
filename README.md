# **SwiftUI MVVM Clean Architecture Demo**

**SwiftUI MVVM Clean Architecture Demo** is a project designed to demonstrate how to build an app using SwiftUI while following the MVVM architecture pattern and Clean Architecture principles.  

For demonstration purposes, this project uses the free API from [Rick and Morty API](https://rickandmortyapi.com).  
A special thanks to the creators of the API!

---

## **Overview**

MVVM (Model-View-ViewModel) is a design pattern that helps separate user interface (UI) development from business logic and behavior, resulting in more maintainable and testable code.  

![MVVM Pattern](https://github.com/user-attachments/assets/bbe9c005-176f-4889-83f9-020f6000aaf6)

This project also demonstrates:
- Implementing a Coordinator using `NavigationDestination` and `NavigationPath`.
- Creating Dependency Injection (DI) with the help of a `PropertyWrapper`.

---

## **Project Structure**

- **`APIClient.swift`**  
  An API client class for fetching data from [Rick and Morty API](https://rickandmortyapi.com).

- **`ViewModel.swift`**  
  Manages and formats the data to be displayed in the views.

- **`Coordinator.swift`**  
  Handles navigation and flow logic using `NavigationDestination` and `NavigationPath`.

- **`DependencyInjectionContainer.swift`**  
  Implements Dependency Injection (DI) with the `PropertyWrapper`.

---

## **Developed By**

**Diana Nareiko**  
Email: diananareiko8@gmail.com  
GitHub: [https://github.com/diananareiko](https://github.com/diananareiko)

---
