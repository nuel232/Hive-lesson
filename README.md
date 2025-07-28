# hive lesson

A Flutter project demonstrating basic usage of the Hive database for local storage.

## Features

- Uses [Hive](https://docs.hivedb.dev/) for fast, lightweight key-value storage.
- Simple UI with three buttons to:
  - **Write**: Store a value in Hive (`_myBox.put(1, 'Mitch')`).
  - **Read**: Retrieve and print the value (`_myBox.get(1)`).
  - **Delete**: Remove the value (`_myBox.delete(1)`).
- All logic is in `lib/pages/home_page.dart`.

## How it works

The app opens a Hive box called `myBox` and provides three methods:
- `writeData()`: Saves the string 'Mitch' under key `1`.
- `readData()`: Reads and prints the value for key `1`.
- `deleteData()`: Deletes the value for key `1`.

## Getting Started

To run this project:
1. Ensure you have Flutter installed.
2. Run `flutter pub get` to install dependencies.
3. Start the app with `flutter run`.

## Resources

- [Hive Documentation](https://docs.hivedb.dev/)
- [Flutter Documentation](https://docs.flutter.dev/)
