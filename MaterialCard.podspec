#
# Be sure to run `pod lib lint MaterialCard.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MaterialCard'
  s.version          = '1.1.4'
  s.summary          = 'iOS Material Design Card View.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
An iOS CocoaPod that provides a MaterialCard class for creating Card Views based on the Material Design spec.
```swift
let card = MaterialCard(frame: CGRect(x: 10, y: UIApplication.shared.statusBarFrame.size.height + 10, width: UIApplication.shared.statusBarFrame.size.width - 20, height: 100))
view.addSubview(card)
```
                       DESC

  s.homepage         = 'https://github.com/NathanWalker/MaterialCard'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Nathan Walker' => 'walkerrunpdx@gmail.com' }
  s.source           = { :git => 'https://github.com/NathanWalker/MaterialCard.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/wwwalkerrun'

  s.ios.deployment_target = '8.0'
  s.requires_arc = true

  s.source_files = 'MaterialCard/Classes/**/*'

  s.pod_target_xcconfig = {
    'SWIFT_VERSION' => '3.0'
  }
  
  # s.resource_bundles = {
  #   'MaterialCard' => ['MaterialCard/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
