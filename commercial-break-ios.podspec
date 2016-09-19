#
# Be sure to run `pod lib lint CommercialBreakSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'perk-commercialbreak-ios'
  s.version          = '1.4.0'
  s.summary          = 'CommercialBreakSDK for iOS'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
						TODO: Add long description of the pod here.
						* Think: Why did you write this? What is the focus? What does it do?
                   * CocoaPods will be using this to generate tags, and improve search results.
                   * Try to keep it short, snappy and to the point.
                   * Finally, don't worry about the indent, CocoaPods strips it!
                       DESC

  s.homepage         = 'https://perk.com'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Nilesh Thummar' => 'nilesh@perk.com' }
  s.source           = { :git => 'https://github.com/perk-nilesh/perk-commercialbreak-ios.git', :tag => s.version }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'


  s.source_files  = "CommercialBreakSDK/*.h","*.m"
  s.preserve_paths = "CommercialBreakSDK/libCommercialBreakSDK.a"
  s.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '$(SRCROOT)/Pods/CommercialBreakSDK/Lib' }

  s.ios.vendored_library = "CommercialBreakSDK/libCommercialBreakSDK.a"
  s.public_header_files = "CommercialBreakSDK/Header/*.h"
  s.xcconfig = { 'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks'} 
  s.resources = "*.bundle"
   s.resource_bundles = {
     'CommercialBreakSDK' => ['CommercialBreakSDK/*.bundle']
   }

  # s.public_header_files = 'Pod/Classes/**/*.h'

  s.frameworks = 'CoreData', 'StoreKit', 'Social', 'JavaScriptCore', 'Twitter', 'QuartzCore', 'MessageUI', 'MediaPlayer', 'MapKit', 'AudioToolbox', 'Accounts', 'WebKit', 'AssetsLibrary', 'CoreLocation', 'CoreMotion', 'CoreTelephony', 'CoreMedia', 'AVFoundation', 'AdSupport', 'CoreGraphics', 'Foundation', 'MobileCoreServices', 'SystemConfiguration', 'UIKit', 'EventKit', 'EventKitUI'
s.library   = 'c++','xml2.2','System','z'
#s.module_name = 'perk-commercialbreak-ios'
s.compiler_flags = '-all_load', '-ObjC'

end
