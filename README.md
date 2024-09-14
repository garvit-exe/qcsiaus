# QR Code Scanner App

This is a simple QR code scanner application for iOS built using Swift. The app utilizes the `VisionKit` framework to scan both barcodes and text. When a barcode or text is detected, the app will either copy the text to the clipboard or attempt to open a URL from the scanned barcode.

## Features

- Scans QR codes and barcodes.
- Detects text and allows it to be copied to the clipboard.
- Opens URLs detected from QR codes or barcodes.
- Simple and easy-to-use interface.

## Requirements

- iOS 16.0 or later.
- Xcode 14.0 or later.
- VisionKit framework is required for scanning functionalities.

## Installation

1. Clone this repository or download the project as a ZIP file.
2. Open the project in Xcode.
3. Build and run the project on a compatible iOS device or simulator.

## How to Use

1. Launch the app on an iOS device.
2. Press the Start Scanner button to open the camera scanner.
3. When a text or barcode is detected:
    - If it’s text, the app will copy it to the clipboard.
    - If it’s a barcode containing a URL, the app will open the URL in the default browser.
4. If the scanner is not available on the device, an error message will be printed in the console.

## Contributing

If you'd like to contribute to the project, feel free to fork the repository, create a separate branch, make your changes, and submit a pull request.
