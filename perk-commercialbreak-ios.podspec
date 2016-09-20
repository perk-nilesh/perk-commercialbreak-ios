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
  s.homepage         = 'https://github.com/perk-nilesh/perk-commercialbreak-ios'
  s.license          = 'Code is MIT, then custom font licenses.'
  s.author           = { 'Nilesh Thummar' => 'nilesh@perk.com' }
  s.source           = { :git => 'https://github.com/perk-nilesh/perk-commercialbreak-ios.git', :tag => s.version }
  s.ios.deployment_target = '8.0'
  s.source_files  = "CommercialBreakSDK/"
  s.preserve_paths = "CommercialBreakSDK/libCommercialBreakSDK.a"
#s.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '$(SRCROOT)/Pods/CommercialBreakSDK/Lib' }

  s.ios.vendored_library = "CommercialBreakSDK/libCommercialBreakSDK.a"
#s.public_header_files = "CommercialBreakSDK/Header/*.h"
  s.xcconfig = { 'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks'} 
  s.resources = "CommercialBreakSDK/*.bundle"

  s.frameworks = 'CoreData', 'StoreKit', 'Social', 'JavaScriptCore', 'Twitter', 'QuartzCore', 'MessageUI', 'MediaPlayer', 'MapKit', 'AudioToolbox', 'Accounts', 'WebKit', 'AssetsLibrary', 'CoreLocation', 'CoreMotion', 'CoreTelephony', 'CoreMedia', 'AVFoundation', 'AdSupport', 'CoreGraphics', 'Foundation', 'MobileCoreServices', 'SystemConfiguration', 'UIKit', 'EventKit', 'EventKitUI'
    s.library   = 'c++','xml2.2','System','z'
    #s.module_name = 'perk-commercialbreak-ios'
    s.compiler_flags = '-all_load', '-ObjC'

end
