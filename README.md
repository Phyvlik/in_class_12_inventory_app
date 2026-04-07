# Inventory App

A Flutter inventory app using Firebase Cloud Firestore for real-time cloud data.

## Features

- Create, read, update, and delete inventory items
- Real-time updates using Firestore streams and StreamBuilder
- Form validation for name, quantity, and price fields

## Enhanced Features

### 1. Total Inventory Value
Displays the total value of all inventory items (price × quantity) in a banner at the top of the list. Updates automatically in real time as items are added, edited, or deleted.

### 2. Search / Filter
A search bar lets users filter items by name instantly. Useful for large inventories — results update as you type without any additional Firestore queries.

### 3. Low Stock Warning
Items with a quantity of 5 or fewer are highlighted with a red background and a "Low Stock" badge next to the item name. This gives users an immediate visual cue to restock before running out.

## Architecture

- `lib/models/item.dart` — Item data model with `toMap()` and `fromMap()`
- `lib/services/inventory_service.dart` — Firestore CRUD service layer
- `lib/screens/item_form.dart` — Reusable add/edit form with validation
- `lib/main.dart` — App entry point and inventory list UI

## Setup

1. Create a Firebase project and enable Firestore in test mode
2. Add `google-services.json` to `android/app/`
3. Run `flutter pub get`
4. Run `flutter run`
