#
# Be sure to run `pod lib lint MaterialCard.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MaterialCard'
  s.version          = '1.1.1'
  s.summary          = 'iOS Material Design Card View.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
An iOS CocoaPod that provides a MaterialCard class for creating Card Views based on the Material Design spec.
```swift
let card = MaterialCard(frame: CGRectMake(10, UIApplication.sharedApplication().statusBarFrame.size.height + 10, UIApplication.sharedApplication().statusBarFrame.size.width - 20, 100))
view.addSubview(card)
```
                       DESC

  s.homepage         = 'https://github.com/NathanWalker/MaterialCard'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Nathan Walker' => 'walkerrunpdx@gmail.com' }
  s.source           = { :git => 'https://github.com/NathanWalker/MaterialCard.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'MaterialCard/Classes/**/*'
  
  # s.resource_bundles = {
  #   'MaterialCard' => ['MaterialCard/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
