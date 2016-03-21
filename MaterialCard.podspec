#
# Be sure to run `pod lib lint MaterialCard.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "MaterialCard"
  s.version          = "1.0.3"
  s.summary          = "iOS Material Design Card View."

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

  s.homepage         = "https://github.com/NathanWalker/MaterialCard"
  s.license          = 'MIT'
  s.author           = { "Nathan Walker" => "walkerrunpdx@gmail.com" }
  s.source           = { :git => "https://github.com/NathanWalker/MaterialCard.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/wwwalkerrun'

  s.platform     = :ios, '9.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'MaterialCard' => ['Pod/Assets/*.png']
  }

  #s.frameworks = 'UIKit'
end
