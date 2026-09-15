# Designer Cookie

![Swift](https://img.shields.io/badge/Swift-iOS-F05138?style=for-the-badge&logo=swift&logoColor=white)
![UIKit](https://img.shields.io/badge/UIKit-storyboard_navigation-147EFB?style=flat-square&logo=apple)
![Xcode](https://img.shields.io/badge/Built_with-Xcode-147EFB?style=flat-square&logo=xcode&logoColor=white)

An iOS cookie-decorating game that turns a familiar baking sequence into a tactile, image-rich mobile experience. Players choose a cookie shape, bake it, add frosting and toppings, and revisit their finished creations.

![Compact Designer Cookie interaction recording](<images/Screen Recording 2026-09-12 at 4.21.24 PMSmallandDon'tUse.gif>)

## Product experience

Designer Cookie is built around a short, understandable creative loop:

```text
Home
  ↓
Choose a raw shape
  ↓
Bake the cookie
  ↓
Choose frosting and toppings
  ↓
View finished cookies
```

The interface uses original food photography, custom cookie artwork, and large direct-manipulation controls to make each step understandable without a tutorial.

![The opening screen invites the player to create or revisit cookies](<images/Screenshot 2026-09-12 at 4.10.34 PM.png>)





## Choosing and baking

Players begin with a collection of recognizable silhouettes, including circle, heart, stocking, star, snowflake, and tree. Each shape has its own view controller and visual states, giving the project a clear example of coordinating a shared interaction pattern across multiple screens.

![Raw cookie shape chooser](<images/Screenshot 2026-09-12 at 4.10.44 PM.png>)

The bake step communicates progression directly in the scene and moves the selected shape from raw artwork toward its finished state.

![Cookie baking interface](<images/Screenshot 2026-09-12 at 4.10.56 PM.png>)

## Decorating and feedback

Frosting and topping choices are represented visually so the player can understand the result before committing. The interface combines color, shape, layered image assets, and status messages to make customization feel immediate.

![Frosting selection during cookie customization](<images/Screenshot 2026-09-12 at 4.12.12 PM.png>)

![Decorated cookie and topping choices](<images/Screenshot 2026-09-12 at 4.12.52 PM.png>)

## Implementation

The application uses UIKit and storyboard-based navigation. Each cookie type has a dedicated view controller, while shared destinations handle the title screen, settings, raw-cookie selection, and finished-cookie collection.

The project is also asset-heavy by design. Xcode asset catalogs hold raw, baked, frosted, pressed, and decorated states at multiple screen scales, allowing the UI to present custom artwork without generating it at runtime.

![Storyboard overview showing the screen flow](<images/Screenshot 2026-09-12 at 4.07.19 PM.png>)

The Swift controllers connect storyboard actions to navigation and per-shape interaction logic.

![Swift implementation in Xcode](<images/Screenshot 2026-09-12 at 4.08.16 PM.png>)

## Run locally

1. Open `DesignerCookie.xcodeproj` in Xcode.
2. Select an iPhone simulator or connected iOS device.
3. Build and run with `⌘R`.

No third-party package manager is required by the checked-in project.

## Repository map

```text
.
├── DesignerCookie.xcodeproj/          # Xcode project and build settings
├── DesignerCookie/
│   ├── Base.lproj/Main.storyboard     # Navigation and screen layout
│   ├── Assets.xcassets/               # Original UI and cookie-state artwork
│   ├── ViewController.swift           # Home screen
│   ├── RawCookieChooserVC.swift        # Shape selection
│   ├── Raw*VC.swift                    # Shape-specific customization flows
│   ├── FinishedCookiesVC.swift         # Saved/finished-cookie destination
│   └── SettingsVC.swift               # Settings screen
├── DesignerCookieTests/               # Unit-test target
├── DesignerCookieUITests/             # UI-test target
└── images/                             # Product and development captures
```

## Skills demonstrated

Swift, UIKit, Interface Builder, storyboard navigation, view-controller composition, asset-catalog management, responsive iPhone UI, interaction-state artwork, and translating a physical creative process into a mobile flow.
