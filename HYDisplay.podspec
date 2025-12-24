#
# Be sure to run `pod lib lint HYDisplay.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HYDisplay'
  s.version          = '0.1.7'
  s.summary          = 'A short description of HYDisplay.'

  s.description      = <<-DESC
Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/huboceanLi/HYDisplay'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'li437277219@gmail.com' => 'li437277219@gmail.com' }
  s.source           = { :git => 'https://github.com/huboceanLi/HYDisplay.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '14.0'

  s.source_files = 'HYDisplay/Classes/**/*'
  
  s.swift_versions = ['5.0', '5.1', '5.2', '5.3', '5.4', '5.5']
    
  # 启用模块支持
  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES',           # 必须启用模块
    'CLANG_ENABLE_MODULES' => 'YES',     # 启用模块
    'CLANG_MODULES_AUTOLINK' => 'YES',   # 自动链接模块
    'SWIFT_VERSION' => '5.0',            # Swift 版本
    
    # 桥接相关配置
    'SWIFT_INSTALL_OBJC_HEADER' => 'YES',
    'SWIFT_OBJC_INTERFACE_HEADER_NAME' => 'HYDisplay-Swift.h',
  }
  
  s.dependency 'HYAsyncDisplayKit', '0.3.7'
  s.dependency 'HYAppBundle', '0.1.3'
  s.dependency 'HYSwiftSignalKit', '0.1.2'

    s.requires_arc = true
  
end
