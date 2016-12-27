# Uncomment the next line to define a global platform for your project
platform :ios, '9.0'
use_frameworks!

target 'IronMan' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  # Pods for IronMan
	pod 'SDWebImage', '~>3.8'
	pod "WeiboSDK", :git => "https://github.com/sinaweibosdk/weibo_ios_sdk.git"
	pod 'RealmSwift'
	pod 'SwiftyJSON'
  pod 'Alamofire', '~> 4.0'
  
  target 'IronManTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'IronManUITests' do
    inherit! :search_paths
    # Pods for testing
  end

end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['SWIFT_VERSION'] = '2.3' # or '3.0'
    end
  end
end