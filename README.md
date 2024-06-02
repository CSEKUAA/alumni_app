
## alumni_app

Alumni App is a comprehensive alumni application built using Flutter. It is designed to work seamlessly across all platforms, including Android, iOS, and the web. The app is fully responsive, ensuring a consistent user experience on various devices.

## Features

- **Cross-Platform Support**: Works on Android, iOS, and web.
- **Responsive Design**: Adapts to different screen sizes and orientations.
- **Media Support**: Upload and display images, videos, and documents.
- **Localization**: Supports multiple languages using `flutter_localizations`.
- **Beautiful UI**: Utilizes Google Fonts and FontAwesome for a polished look.

## Dependencies

The project uses the following dependencies:

- `auto_size_text`
- `badges`
- `cached_network_image`
- `cloud_firestore`
- `easy_debounce`
- `file_picker`
- `firebase_auth`
- `firebase_core`
- `firebase_crashlytics`
- `firebase_performance`
- `firebase_storage`
- `fl_chart`
- `flutter_animate`
- `flutter_cache_manager`
- `flutter_localizations`
- `flutter_plugin_android_lifecycle`
- `font_awesome_flutter`
- `from_css_color`
- `go_router`
- `google_fonts`
- `google_sign_in`
- `image_picker`
- `intl`
- `json_path`
- `mime_type`
- `page_transition`
- `path_provider`
- `percent_indicator`
- `provider`
- `rxdart`
- `shared_preferences`
- `sign_in_with_apple`
- `sqflite`
- `sticky_headers`
- `stream_transform`
- `substring_highlight`
- `text_search`
- `timeago`
- `url_launcher`
- `video_player`
- `cupertino_icons`

## Development Setup

1. **Install Flutter**: Follow the instructions on the [Flutter website](https://flutter.dev/docs/get-started/install) to set up Flutter on  machine.

2. **Clone the Repository**: 
   ```sh
   git clone https://github.com/CSEKUAA/alumni_app.git
   cd alumni_app
   ```

3. **Install Dependencies**: 
   ```sh
   flutter pub get
   ```

4. **Run the App**: 
   ```sh
   flutter run
   ```

## Configuration

Ensure  have  Firebase project set up. Update the `google-services.json` (for Android) and `GoogleService-Info.plist` (for iOS) files in the appropriate directories.


## Localization

To add a new language, update the `flutter_localizations` dependency and include  localization files in the `assets/locales` directory.

## Icons

The app uses custom icons defined in the `flutter_icons` section of `pubspec.yaml`. Update `assets/images/app_launcher_icon.png` with  custom app icon.



