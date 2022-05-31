# pokemontest

Flutter - Alejandro López - Pokemon test
***************************************************************************************************************

It is a simple flutter application that uses an infinite scroll to retrieve a pokemon list. 

It is simple, but it implements the Business Logic Component (BLOC) concept to control the events and status of the application. I started with an initial state and changed to other states while the user uses the app. 

I also separated the logic, the repository, models, and views concepts. That helps to have a cleaner app and will help with app maintenance. 

A custom exceptions handler has also been added to have better control of them. 

***************************************************************************************************************
Steps to run:

1. Open the folder on Visual studio code
2. Start android emulator/use real device
3. Open CMD 
4. Run flutter pub get
5. Run flutter clean
6. Run fluttear run
7. Debug the app if you prefer
8. Once it runs, scroll down/up to see the pokemon list. 

***************************************************************************************************************

Built with: 

1. Flutter 
2. Bloc (https://pub.dev/packages/flutter_bloc)
3. Pokemon API (https://pokeapi.co/docs/v2)

***************************************************************************************************************

My local configuration when run this application (Flutter doctor)

Doctor summary (to see all details, run flutter doctor -v):
[√] Flutter (Channel unknown, 3.0.0, on Microsoft Windows [Versi¢n 10.0.19044.1706], locale es-MX)
[√] Android toolchain - develop for Android devices (Android SDK version 32.1.0-rc1)
[√] Chrome - develop for the web
[!] Visual Studio - develop for Windows (Visual Studio Community 2019 16.11.9)
    X Visual Studio is missing necessary components. Please re-run the Visual Studio installer for the "Desktop development with C++" workload,   
      and include these components:
        MSVC v142 - VS 2019 C++ x64/x86 build tools
         - If there are multiple build tool versions available, install the latest
        C++ CMake tools for Windows
        Windows 10 SDK
[√] Android Studio (version 2021.2)
[√] VS Code (version 1.67.2)
[√] Connected device (4 available)
[√] HTTP Host Availability

! Doctor found issues in 1 category.

***************************************************************************************************************

THANKS FOR THE OPPORTUNITY :)
