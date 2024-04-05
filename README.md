# Easy Localization

`easy_localization` is a powerful and convenient package in the Flutter ecosystem designed to simplify and enhance the internationalization (i18n) and localization (l10n) process within
Flutter applications.

## Getting Started

To get started with easy_localization in your Flutter project, you typically need to:

- Add `easy_localization` to your pubspec.yaml file.

- Create translation files in JSON or YAML format and organize them in the appropriate folder.
   assets
  └── translations
  ├── {languageCode}.{ext}                  //only language code
  └── {languageCode}-{countryCode}.{ext}    //or full locale code

- Declare your assets localization directory in pubspec.yaml:
  flutter:
  assets:'
  - assets/translations/
  
- Wrap your main app widget with `EasyLocalization` and configure it with the path to your translations and your supported locales.

- Use the provided methods and extensions to translate text within your app.

### Note on iOS

For translation to work on iOS you need to add supported locales to ios/Runner/Info.plist
`
<key>CFBundleLocalizations</key>
<array>
<string>en</string>
<string>hi</string>
</array>`

### Key Differences between Internationalization and Localization

Imagine you're developing a weather app:
- Internationalization (i18n): You design the app so that all text displayed to the user is stored in a separate file, rather than hard-coded. You make sure the app can handle different date formats, currencies, and even changes in layout direction for languages that read right-to-left. The app's code is made to support these without needing to be rewritten. Essentially, you're preparing your app to be easily adapted for different markets.

- Localization (l10n): You decide to release the app in Japan. To do this, you translate all the text into Japanese, including error messages, weather descriptions, and the app's title. You change the date format to the Japanese standard, convert temperature from Fahrenheit to Celsius, and adjust the currency from dollars to yen. You might even change some images or color schemes to better suit Japanese tastes. This process of adapting your internationalized app for the Japanese market is localization.
  In summary, internationalization is the preparatory work that enables localization. You internationalize once (making your app or content ready for adaptation) and then localize as many times as needed for different languages or regions.
