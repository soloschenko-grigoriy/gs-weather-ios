# GS Weather app (iOS)

## Install
pod install

## Open
gs-weather-ios.xcworkspace

## Device/OS version support
- iOS 11.3
- iPhone 7+

## Test
cmd + u

## Architecture thoughts
* Components: reusbale components that should have no dependenices within the app and be ready to be reused even in other apps. Each component may vary but usually it has model and view (xib and/or uiview)
* Screens: Thin as possible controllers to represent particular screens. Should avoid containing bussiness logic
* Services: Mappers, Gates (Networking, Notification, Location etc), Theming, Logging etc. 
* Helpers. Reusable extentions and additions
* No-storyboard policy. Even though storyboard is awesome prototyping and visualization tool it should be avoided in case of  a) Mid-large project b) Team of devs contains more that one person

## Todo
* Request location from user
* Complete parsing and mapping real data
* Add more customization: amount of days, colors, themes 
* Get rid of Alamofire: no need to use such a powerfull tool in this small app

## Timeline
- Preps (git repo, looking for UI design ideas etc): 45 min
- Actual coding: 4 hours
- Wrap up (cleanup, git repo update etc): 30 min
