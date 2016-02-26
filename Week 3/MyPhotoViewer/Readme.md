Instagram Profile Page clone [Works on Iphone 5 Simulator only. Built using Xcode Version 7.2.1]

#Common Errors

* <i>ERROR:</i><br />
Cocoapods install [Ruby updates]:<br />
Fetching: activesupport-5.0.0.beta3.gem (100%)<br />
ERROR:  Error installing cocoapods:<br />
	activesupport requires Ruby version >= 2.2.2.<br />
michhos-MacBook-Pro:MyPhotoViewer michho$ pod init<br />
-bash: pod: command not found<br />
michhos-MacBook-Pro:MyPhotoViewer michho$ ruby -v<br />
ruby 2.0.0p481 (2014-05-08 revision 45883) [x86_64-darwin13.1.0]<br />

  <i>SOLUTION:</i>:
https://shellzero.wordpress.com/tag/how-to-update-ruby-2-0-to-the-latest-version-on-mac-os-x-yosemite/

* <i>ERROR:</i>
Creating shallow clone of spec repo `master` from `https://github.com/CocoaPods/Specs.git`
[!] Unable to add a source with url `https://github.com/CocoaPods/Specs.git` named `master`.
You can try adding it manually in `~/.cocoapods/repos` or via `pod repo add`.

  <i>SOLUTION[From Olga]:</i>
I had to update my ruby version to 2.2.0
Then install all the cocoapods once more
Then I was able to complete ‘pod install’ successfully


# Added Cocoapods
- SwiftyJSON
- Alamofire


## How to add Cocoapods

 Open terminal

 sudo gem install cocoapods \#Installs cocoa pods in the System library. This is needed only once.

 cd “/path/to/project/directory“

 pod init \#Close and reopen terminal if errors arise

 Open the Xcode Podfile (Add “pod 'AFNetworking', '~> 2.6’”. Refer to the 'Sample Podfile' section at the end of file)

It’s finally time to add your first dependency using CocoaPods!

Now close pod file and run one of the commands below on terminal to install relevant cocoapods
 * pod install
 * pod install --verbose

 Now close your xcode project and open <project_name>.xcworkspace Xcode project file.


# Sample Podfile

\# This tells CocoaPods we want to target iOS versions 8.0 and above.
platform :ios, '8.0'
use_frameworks!    

\# Instruct CocoaPods to use dynamic frameworks instead of static libraries for Pods
target 'InstagramFeed' do

\# This pulls in the latest version of AFNetworking >= 2.6 but less than 3.0.
pod 'AFNetworking', '~> 2.6'
end

More options to add to Podfile: https://guides.cocoapods.org/syntax/podfile.html

NOTE: “No such Module” error? - Product->Clean and Product->Build


![Demo](https://raw.githubusercontent.com/yezhisaim/WWCBeginnerIOS/dc7a36f6c0d426dc15a642abb3f15565d1e7453f/Week%203/instagram-profile-view-gif.gif)
