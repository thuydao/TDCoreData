#
# Be sure to run `pod lib lint TDCoreData.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TDCoreData'
  s.version          = '1.0'
  s.summary          = 'A short description of TDCoreData.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TDCoreData is a util, its allow user can quikly integration with coredata. Its help you "doesnt care" with MagicalRecord. To be continue...
                       DESC

  s.homepage         = 'https://www.facebook.com/daoduythuy'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Anonymous' => 'daoduythuy@gmail.com' }
  s.source           = { :git => 'https://github.com/thuydao/TDCoreData.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'TDCoreData/Classes/**/*'
  
  # s.resource_bundles = {
  #   'TDCoreData' => ['TDCoreData/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
   s.dependency 'MagicalRecord'
end
