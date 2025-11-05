# BMI Calculator

A Flutter application to calculate Body Mass Index (BMI) with a beautiful and user-friendly interface. This project provides a simple way to determine your BMI based on your weight and height, offering insights into your weight category.

## 🚀 Features

- **Accurate BMI Calculation**: Calculates BMI based on user-provided height and weight.
- **Weight Category Indication**: Displays the weight category (Underweight, Normal, Overweight, Obese) based on the calculated BMI.
- **User-Friendly Interface**: Clean and intuitive design for easy user interaction.
- **Cross-Platform Compatibility**: Built with Flutter, ensuring compatibility across iOS, Android, Web, macOS, Linux, and Windows.
- **Customizable UI**: Easily customizable UI elements to fit your branding.

## 🛠️ Tech Stack

- **Frontend**:
    - Flutter: UI framework for building cross-platform applications.
    - Dart: Programming language for Flutter.
    - `cupertino_icons`: Provides iOS-style icons.
    - `font_awesome_flutter`: Provides a wide range of vector icons.
- **Platforms**:
    - iOS: Native iOS application using Swift (`AppDelegate.swift`).
    - macOS: Native macOS application using Swift (`AppDelegate.swift`).
    - Linux: Native Linux application using C++ (`main.cc`, `my_application.cc`).
    - Windows: Native Windows application using C++ (`main.cpp`, `flutter_window.cpp`).
    - Web: Web application using HTML, CSS, and JavaScript (`index.html`, `flutter_bootstrap.js`).
- **Build Tool**:
    - Flutter CLI: Command-line tool for building, testing, and deploying Flutter applications.
- **Development Dependencies**:
    - `flutter_test`: Used for writing and running unit tests.
    - `flutter_lints`: A set of recommended lints for Dart code.

## 📦 Getting Started

Follow these instructions to get the project up and running on your local machine.

### Prerequisites

- Flutter SDK: Make sure you have the Flutter SDK installed. You can download it from the [official Flutter website](https://flutter.dev/docs/get-started/install).
- Dart SDK: Dart comes bundled with Flutter, so installing Flutter is sufficient.
- Android Studio or Xcode: For running on emulators or real devices (optional).
- For Linux: GTK development libraries.
- For Windows: Visual Studio with C++ support.

### Installation

1.  **Clone the repository:**

    ```bash
    git clone <repository_url>
    cd bmi_calculator
    ```

2.  **Get dependencies:**

    ```bash
    flutter pub get
    ```

### Running Locally

1.  **Run on Android/iOS:**

    - Connect a device or start an emulator.
    - Run:

    ```bash
    flutter run
    ```

2.  **Run on Web:**

    ```bash
    flutter run -d chrome
    ```

3.  **Run on macOS:**

    ```bash
    flutter run -d macos
    ```

4.  **Run on Linux:**

    ```bash
    flutter run -d linux
    ```

5.  **Run on Windows:**

    ```bash
    flutter run -d windows
    ```

## 📂 Project Structure

```
bmi_calculator/
├── android/             # Android-specific files
├── ios/                 # iOS-specific files
│   └── Runner/
│       └── AppDelegate.swift
├── lib/                 # Dart source code
├── linux/               # Linux-specific files
│   └── runner/
│       ├── main.cc
│       └── my_application.cc
├── macos/               # macOS-specific files
│   └── Runner/
│       └── AppDelegate.swift
├── web/                 # Web-specific files
│   └── index.html
├── windows/             # Windows-specific files
│   └── runner/
│       ├── main.cpp
│       └── flutter_window.cpp
├── .gitignore           # Specifies intentionally untracked files that Git should ignore
├── pubspec.yaml         # Flutter project configuration file
└── README.md            # Project documentation
```

### 📸 Screenshots
<p align="center">
  <img src="https://raw.githubusercontent.com/Muhammad-Ali-5331/BMI_Calculator/master/bmi_calculator%20(1).jpg" alt="BMI Calculator Input Screen" width="45%"/>
  &nbsp; &nbsp; &nbsp;
  <img src="https://raw.githubusercontent.com/Muhammad-Ali-5331/BMI_Calculator/master/bmi_calculator%20(2).jpg" alt="BMI Calculator Result Screen" width="45%"/>
</p>

## 🤝 Contributing

Contributions are welcome! Please follow these steps:

1.  Fork the repository.
2.  Create a new branch for your feature or bug fix.
3.  Make your changes and commit them with descriptive messages.
4.  Push your changes to your fork.
5.  Submit a pull request.

## 📝 License

This project is licensed under the [MIT License](LICENSE).

## 📬 Contact

For questions or feedback, please contact: Muhammad Ali - malitariq5324@gmail.com

## 💖 Thanks

Thank you for checking out the BMI Calculator project! We hope you find it useful and welcome any contributions.
