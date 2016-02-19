# Added Cocoapods
- SwiftyJSON
- Alamofire


## How to add Cocoapods

 Open terminal 
 
 sudo gem install cocoapods \#Installs cocoa pods in the System library. This is needed only once.
 
 cd “/path/to/project/directory“
 
 pod init \#Close and reopen terminal if errors arise
 
 Open the Xcode Podfile (Add “pod 'AFNetworking', '~> 2.6’”. Refer to the 'How to add Cocoapods' session at the end of file)
 
It’s finally time to add your first dependency using CocoaPods!

Now close pod file and execute below command on terminal to install relevant cocoapods
 > pod install 

 Now close your xcode project and open <project_name>.xcworkspace Xcode project file.


# How to add Cocoapods

\# Podfile

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
