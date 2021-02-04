#
# Be sure to run `pod lib lint LinKingSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LinKingSDKTD'
  s.version          = '0.0.2'
  s.summary          = 'LinKingSDKTD Quick Integration Solution'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: LinKingSDKTD is Overseas SDK Quick Integration Solution.
                       DESC

  s.homepage         = 'https://github.com/MrDML/LinKingSDKTD'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'leaon' => 'leaon' }
  s.source           = { :git => 'https://github.com/MrDML/LinKingSDKTD.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  
  s.static_framework = true

  s.vendored_frameworks = "LinKingSDK/Products/LinKingSDK.framework"
  s.resources = "LinKingSDK/Assets/*.*"
  s.dependency 'SDWebImage'
  s.dependency 'IQKeyboardManager', '~> 6.5.5'
  s.dependency 'TPKeyboardAvoiding', '~> 1.3.4'
  s.dependency 'TZImagePickerController', '~> 3.5.1'
  s.dependency 'Toast', '~> 4.0.0'
  s.dependency 'WechatOpenSDK'
  s.dependency 'AnyThinkiOS'
  s.dependency 'AnyThinkiOS/AnyThinkTouTiaoAdapter'
  s.dependency 'AnyThinkiOS/AnyThinkGDTAdapter'
  s.dependency 'AnyThinkiOS/AnyThinkMintegralAdapter'
  s.dependency 'AnyThinkiOS/AnyThinkKSAdapter'
  # Mintegral
  s.dependency 'MintegralAdSDK/NativeAd'
  s.dependency 'MintegralAdSDK/BidNativeAd'
  s.dependency 'MintegralAdSDK/RewardVideoAd'
  s.dependency 'MintegralAdSDK/InterstitialVideoAd'
  s.dependency 'MintegralAdSDK/InterstitialAd'
  s.dependency 'MintegralAdSDK/InterActiveAd'
  s.dependency 'MintegralAdSDK/BannerAd'
  s.dependency 'MintegralAdSDK/SplashAd'
  s.dependency 'MintegralAdSDK/NativeAdvancedAd'
  # 穿山甲
  s.dependency 'Bytedance-UnionAD', '~> 2.9.5.8'
  s.dependency 'Bugly', '~> 2.5.2'
  # 优良汇
  s.dependency 'GDTMobSDK', '~> 4.12.1'
  # 快手
  s.dependency 'KSAdSDK', '~> 3.3.3'
  s.subspec 'libTalkingDataAppCpa' do |libTalkingDataAppCpa|
      libTalkingDataAppCpa.source_files = 'LinKingSDK/TalkingData/*.h'
      libTalkingDataAppCpa.public_header_files = 'LinKingSDK/TalkingData/*.h'
      libTalkingDataAppCpa.frameworks = 'Security','CoreTelephony','AdSupport','SystemConfiguration'
      libTalkingDataAppCpa.library = 'z'
  end
  s.vendored_libraries = 'LinKingSDK/TalkingData/libTalkingDataAppCpa.a'
  s.xcconfig = {
      'VALID_ARCHS' =>  'arm64 x86_64 armv7',
  }
  # s.resource_bundles = {
  #   'LinKingSDK' => ['LinKingSDK/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
