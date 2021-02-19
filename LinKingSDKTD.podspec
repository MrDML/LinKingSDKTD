#
# Be sure to run `pod lib lint LinKingSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LinKingSDKTD'
  s.version          = '0.0.17'
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

  s.vendored_frameworks = "LinKingSDKTD/Products/LinKingSDKTD.framework"
  s.resources = "LinKingSDKTD/Assets/*.*"
  s.dependency 'AnyThinkiOS','5.7.11'
  s.dependency 'AnyThinkiOS/AnyThinkKSAdapter','5.7.11'
  s.dependency 'AnyThinkiOS/AnyThinkGDTAdapter','5.7.11'
  s.dependency 'AnyThinkiOS/AnyThinkMintegralAdapter','5.7.11'
  s.dependency 'AnyThinkiOS/AnyThinkTouTiaoAdapter','5.7.11'
  # Mintegral
  s.dependency 'MintegralAdSDK' ,'6.7.4'
  s.dependency 'MintegralAdSDK/RewardVideoAd','6.7.4'
  s.dependency 'MintegralAdSDK/BidRewardVideoAd','6.7.4'
  s.dependency 'MintegralAdSDK/BidInterstitialVideoAd','6.7.4'
  s.dependency 'MintegralAdSDK/InterstitialVideoAd','6.7.4'
  s.dependency 'MintegralAdSDK/InterstitialAd','6.7.4'
  s.dependency 'MintegralAdSDK/BannerAd' ,'6.7.4'
  s.dependency 'MintegralAdSDK/BidBannerAd','6.7.4'
  s.dependency 'MintegralAdSDK/SplashAd','6.7.4'
  s.dependency 'MintegralAdSDK/NativeAdvancedAd','6.7.4'
  # 穿山甲
  s.dependency 'Ads-CN' , '3.4.2.3'
  # 优良汇
  s.dependency 'GDTMobSDK', '4.12.3'
  # 快手
  s.dependency 'KSAdSDK', '3.3.6'
  s.subspec 'libTalkingDataAppCpa' do |libTalkingDataAppCpa|
          libTalkingDataAppCpa.source_files = 'LinKingSDKTD/TalkingData/AdTracking/*.h'
          libTalkingDataAppCpa.public_header_files = 'LinKingSDKTD/TalkingData/AdTracking/*.h'
          libTalkingDataAppCpa.frameworks = 'Security','CoreTelephony','AdSupport','SystemConfiguration'
          libTalkingDataAppCpa.library = 'z'
  end
  s.subspec 'libTalkingDataGA' do |libTalkingDataGA|
          libTalkingDataGA.source_files = 'LinKingSDKTD/TalkingData/GameAnalytics/*.h'
          libTalkingDataGA.public_header_files = 'LinKingSDKTD/TalkingData/GameAnalytics/*.h'
          libTalkingDataGA.frameworks = 'Security','CoreTelephony','AdSupport','SystemConfiguration'
          libTalkingDataGA.library = 'z'
  end
  s.vendored_libraries = 'LinKingSDKTD/TalkingData/AdTracking/libTalkingDataAppCpa.a','LinKingSDKTD/TalkingData/GameAnalytics/libTalkingDataGA.a'
  s.xcconfig = {
      'VALID_ARCHS' =>  'arm64 x86_64 armv7',
  }
  # s.resource_bundles = {
  #   'LinKingSDKTD' => ['LinKingSDKTD/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
