#
# Be sure to run `pod lib lint DSLogs.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "DSLogs"
  s.version          = "0.1.0"
  s.summary          = "A simple set of debug/warning/error macros for iOS"
  s.description      = <<-DESC
                       Provides a simple set of logging functions:
                        DLog, WLog, ELog for iOS that behaves like NSLog,
                        providing DEBUG, WARNING, and ERROR level outputs.

                       DESC
  s.homepage         = "https://github.com/dannys42/DSLogs"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Danny Sung" => "danny@dannysung.com" }
  s.source           = { :git => "https://github.com/dannys42/DSLogs.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'DSLogs' => ['Pod/Assets/*.png']
  }

  s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
