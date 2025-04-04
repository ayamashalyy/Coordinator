# Coordinator

This project demonstrates the implementation of the **Coordinator Pattern** in iOS applications using Swift. The pattern helps separate navigation logic from view controllers, resulting in a more maintainable and testable codebase.

## 📱 Screens

1. **FirstViewController** - Home screen (Red)
2. **SecondViewController** - Secondary screen (Cyan)
3. **ThirdViewController** - Tertiary screen (Blue)

## 🏗️ Architecture Overview

### Core Components:

1. **ViewControllers**:
   - Conform to `Coordinating` protocol
   - Hold a reference to their coordinator (`coordinator`)
   - Send `Events` to coordinator on user interactions

2. **Coordinators**:
   - `MainCoordinator`: Root coordinator that starts the flow
   - `SecondCoordinator`: Manages navigation from second to third screen
   - Implement `Coordinator` protocol

3. **Protocols**:
   - `Coordinator`: Defines base requirements for all coordinators
   - `Coordinating`: Connects ViewControllers with their coordinators

## 🚀 Getting Started

1. Clone the repository
2. Open `CoordinatorDemo.xcodeproj`
3. Run the project on simulator or physical device

## 💡 How It Works

1. The app launches with `MainCoordinator` displaying `FirstViewController`
2. When tapping the button in the first screen:
   - Sends `buttonTapped` event to coordinator
   - `MainCoordinator` creates and starts `SecondCoordinator`
   - `SecondCoordinator` pushes `SecondViewController`

3. When tapping the button in the second screen:
   - Sends `goToThirdScreen` event to coordinator
   - `SecondCoordinator` pushes `ThirdViewController`

## 🎯 Key Benefits

- **Separation of Concerns**: Navigation logic is decoupled from view controllers
- **Reusability**: ViewControllers can be used in different flows
- **Testability**: Navigation flow can be tested independently
- **Maintainability**: Easier to modify navigation patterns
