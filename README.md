# food-tracker-swift
My practice repo for working through Apple's "FoodTracker" tutorial on the Apple Developer site. This repo includes both the code that results from the tutorial AND a bunch of practice UI tests I wrote for it.

As of May 2019 I was hired for a new position which required me to be able to test in an iOS app environment. I had no prior experience with this; all my prior testing work had been in the context of websites, not apps. So I decided it'd be appropriate to get familiar with XCode and the Swift language, to see how an iOS app is built--and to therefore be able to test it.

I'm archiving the work here since none of it is working with proprietary data or anything specifically related to my job's actual work. Also, I wanted to be able to have this for later reference to be able to demonstrate work I've done with XCode and Swift.

## Prerequisites
I created this code on a MacBook Pro running Mojave 10.14.5, with XCode 10.2.1 and Swift 5. Since I own an iPhone 8 myself, I used XCode's iPhone 8 simulator to run and test the app.

The tutorial I followed to create this project is the Apple tutorial [here](https://developer.apple.com/library/archive/referencelibrary/GettingStarted/DevelopiOSAppsSwift/).

If you want to run development code on an actual iOS device, you need a developer account with Apple. If you don't have one of those, or if you're not interested in making one, you can get by with running the app in the simulators XCode provides.

Most of the project is just a straightforward implementation of the tutorial. I'll describe the parts that aren't part of the tutorial below.

## Skills and tech I'm demonstrating here
* Implementing a simple app in XCode
* Adding CocoaPods to a project
* Adding UI Tests to an XCode project

## CocoaPods
I'm not actually using anything immediately interesting in the Podfile for this project; it's there just because I wanted to practice setting one up. I learned enough about how CocoaPods works to see that a Podfile is sort of the Mac equivalent of a pom.xml for a Maven project.

## Unit tests
The unit tests that appear in this code are part of what's covered in the tutorial, in the "Define Your Data Model" section.

## UI tests
The UI tests, on the other hand, are things I wrote myself from scratch. This was done primarily through running the test app several times, recording various actions, and tweaking the resulting code. 

Most of the tests are basically checking that the sample data the tutorial has you set up is in fact in the state you expect it to be in. For the rest, I added the ability to edit previously existing data and make sure the edits are appropriately shown in the main view.

## Running the code yourself
Since this is an XCode project, you will need a Mac running XCode to run it yourself. You can install XCode via the Mac App Store.

## Reference links
* [Apple tutorial for writing the FoodTracker app](https://developer.apple.com/library/archive/referencelibrary/GettingStarted/DevelopiOSAppsSwift/)
* [Swift language docs](https://docs.swift.org/swift-book/)
