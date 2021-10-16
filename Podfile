# Uncomment the next line to define a global platform for your project
platform :ios, '12.0'

target 'torus-direct-swift-sdk-mock-example' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for torus-direct-swift-sdk-mock-example
  pod 'atlantis-proxyman'
  pod 'Torus-directSDK', :git => 'https://github.com/torusresearch/torus-direct-swift-sdk.git', :tag => '1.1.1'
  pod 'Torus-utils', :git => 'https://github.com/torusresearch/torus-utils-swift.git', :tag => '1.1.3'
  pod 'Torus-fetchNodeDetails', :git => 'https://github.com/torusresearch/fetch-node-details-swift.git', :branch => 'fix/http-stubs'
  pod 'OHHTTPStubs/Swift' # includes the Default subspec, with support for NSURLSession & JSON, and the Swiftier API wrappers

  post_install do |installer|
    installer.pods_project.build_configurations.each do |config|
      config.build_settings["EXCLUDED_ARCHS[sdk=iphonesimulator*]"] = "arm64"
    end
  end



  target 'torus-direct-swift-sdk-mock-exampleTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'torus-direct-swift-sdk-mock-exampleUITests' do
    # Pods for testing
  end

end
