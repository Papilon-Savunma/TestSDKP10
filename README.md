# TacirlerSDK

[![pod - 0.1.7](https://img.shields.io/badge/pod-0.1.7-blue)](https://cocoapods.org/)

## Requirements

- +iOS 13.0

## Installation

TacirlerSDK is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following lines to your Podfile:

```ruby
# Uncomment the next line to define a global platform for your project
platform :ios, '13.0'

target 'tacirler-demo-project' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for tacirler-demo-project
  pod 'TacirlerSDK'

end

post_install do |installer|
  installer.generated_projects.each do |project|
        project.targets.each do |target|
            target.build_configurations.each do |config|
                config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '13.0'
             end
        end
 end
end
```

## Configuration

- In target app select `Signing & Capabilities` tab and click `+Capability` button and add `Near Field Communication Tag Reading` capability.
- Add your Info.plist file necessary permissions;

```
<!--
FOR NFC
-->
<key>com.apple.developer.nfc.readersession.iso7816.select-identifiers</key>
<array>
    <string>A0000002471001</string>
</array>
<key>NFCReaderUsageDescription</key>
<string>Permission string</string>

<!--
FOR Camera
-->
<key>NSCameraUsageDescription</key>
<string>Permission string</string>
<key>NSMicrophoneUsageDescription</key>
<string>Permission string</string>

```

- Make sure you have these lines in your `.entitlements` file;

```
<dict>
    <key>com.apple.developer.nfc.readersession.formats</key>
    <array>
        <string>TAG</string>
    </array>
</dict>
```

## Usage

First import the SDK;

```swift
import TacirlerSDK
```

Then, create a view controller object to start cycle;

```swift
let vc = TacirlerSDKViewController()
```

Then, handover this view controller to a button. For example;

```swift
@objc func nextClicked() {
    vc.modalTransitionStyle = .coverVertical
    vc.modalPresentationStyle = .fullScreen
    present(vc, animated: true)
}
```

- `x` buttons on the screen is to `dismiss` the SDK. Also, when cycle ends, `home` button is to `dismiss` SDK.

## SDK Flow

#### KVKK Approval Screen

<img src="./images/IMG_0023.PNG" width="390" height="844">
User needs to check both checkmark to proceed.

#### KVKK Policy and Commercial and Electronic Message Screens

<img src="./images/IMG_0024.PNG" width="390" height="844">
<img src="./images/IMG_0025.PNG" width="390" height="844">

#### MASAK Statement Screen

<img src="./images/IMG_0026.PNG" width="390" height="844">

#### Daily and Monthly Notifications Screen

<img src="./images/IMG_0027.PNG" width="390" height="844">
User needs to check checkmark to proceed.

#### NFC Availability Check Screen

<img src="./images/IMG_0028.PNG" width="390" height="844">
In this screen NFC Availability control should be done, otherwise, user cannot proceed.

#### Form Screen

<img src="./images/IMG_0029.PNG" width="390" height="844">
User needs to fill the form to proceed

#### Questionnaire Screen

<img src="./images/IMG_0030.PNG" width="390" height="844">
User needs to choose one option to proceed. If they choose other or "Tacirler Investment Personal", user needs to fill text field.

#### Phone Number Screen

<img src="./images/IMG_0031.PNG" width="390" height="844">

#### SMS OTP Code Screen

<img src="./images/IMG_0032.PNG" width="390" height="844">

#### MRZ Scanner Screen

<img src="./images/IMG_0033.PNG" width="390" height="844">
TR Identity card should be shown to the camera to proceed.

#### NFC Reader Screen

<img src="./images/IMG_0036.PNG" width="390" height="844">
<img src="./images/IMG_0037.PNG" width="390" height="844">
TR Identity card should be shown to backside of the phone to proceed.

#### Information Check Screen

<img src="./images/IMG_0038.PNG" width="390" height="844">

#### Selfie Screen

<img src="./images/IMG_0039.PNG" width="390" height="844">

#### Selfie Check Screens

<img src="./images/IMG_0041.PNG" width="390" height="844">
<img src="./images/IMG_0042.PNG" width="390" height="844">

#### Address Verification Screens

<img src="./images/IMG_0053.PNG" width="390" height="844">

1. Verification with Place of Residence
   <img src="./images/IMG_0043.PNG" width="390" height="844">

<img src="./images/IMG_0044.PNG" width="390" height="844">
QR Code that is on the place of residence form can be scanned.

2. Verification with Address No from E-devlet
   <img src="./images/IMG_0045.PNG" width="390" height="844">

#### Client Information Screen

<img src="./images/IMG_0046.PNG" width="390" height="844">

#### Video Call Screens

<img src="./images/IMG_0047.PNG" width="390" height="844">

<img src="./images/IMG_0048.PNG" width="390" height="844">

<img src="./images/IMG_0049.PNG" width="390" height="844">

#### Result Screens

<img src="./images/IMG_0051.PNG" width="390" height="844">
Application failed

<img src="./images/IMG_0052.PNG" width="390" height="844">
Application succeded

## Author

Papilon Savunma
