Pod::Spec.new do |spec|
  spec.name         = "SociomileSDK"
  spec.version      = "0.0.3"
  spec.summary      = "SociomileSDK #{spec.version.to_s}"
  spec.description  = <<-DESC
'Sociomile SDK is a conversational experience that provide customer support such as messaging to your platforms. Sociomile SDK are made of hybrid programming language Flutter, that can be used to native Android (Java, Kotlin) and iOS (Objective C, Swift) and of course Flutter'
                   DESC

  spec.homepage     = "https://github.com/ivosights/SociomileSDK"
  spec.license      = { :type => "MIT", :file => "LICENSE" }

  spec.authors      = { 
    'Ivosights' => 'app@ivosights.com',
    'Meynisa Nur' => 'meynisa.nur@ivosights.com'
  }

  spec.platform     = :ios, "13.0"

  spec.source       = { :git => "https://github.com/ivosights/SociomileSDK.git", :tag => "#{spec.version}" }

  spec.swift_versions = "5.0"

  spec.default_subspecs = 'Chat', 'Code', 'Engine', 'Plugin', 'connectivity', 'image_picker', 'gallery', 'file_picker','secure_storage', 'FMDB', 'provider', 'Reachability','SDWebImage', 'sqflite', 'SwiftyGif', 'url_launcher'

  spec.subspec 'Chat' do |ss|
    ss.vendored_frameworks = 'Sources/SociomileSDK.xcframework'
    ss.preserve_paths = 'Sources/SociomileSDK.xcframework'
  end

  spec.subspec 'Code' do |ss|
    ss.vendored_frameworks = 'Sources/App.xcframework'
    ss.preserve_paths = 'Sources/App.xcframework'
  end

  spec.subspec 'Engine' do |ss|
    ss.vendored_frameworks = 'Sources/Flutter.xcframework'
    ss.preserve_paths = 'Sources/Flutter.xcframework'
  end

  spec.subspec 'Plugin' do |ss|
    ss.vendored_frameworks = 'Sources/FlutterPluginRegistrant.xcframework'
    ss.preserve_paths = 'Sources/FlutterPluginRegistrant.xcframework'
  end

  spec.subspec 'connectivity' do |ss|
    ss.vendored_frameworks = 'Sources/connectivity_plus.xcframework'
    ss.preserve_paths = 'Sources/connectivity_plus.xcframework'
  end

  spec.subspec 'image_picker' do |ss|
    ss.vendored_frameworks = 'Sources/DKImagePickerController.xcframework'
    ss.preserve_paths = 'Sources/DKImagePickerController.xcframework'
  end

  spec.subspec 'gallery' do |ss|
    ss.vendored_frameworks = 'Sources/DKPhotoGallery.xcframework'
    ss.preserve_paths = 'Sources/DKPhotoGallery.xcframework'
  end

  spec.subspec 'file_picker' do |ss|
    ss.vendored_frameworks = 'Sources/file_picker.xcframework'
    ss.preserve_paths = 'Sources/file_picker.xcframework'
  end
spec.subspec 'secure_storage' do |ss|
    ss.vendored_frameworks = 'Sources/flutter_secure_storage.xcframework'
    ss.preserve_paths = 'Sources/flutter_secure_storage.xcframework'
  end

  spec.subspec 'FMDB' do |ss|
    ss.vendored_frameworks = 'Sources/FMDB.xcframework'
    ss.preserve_paths = 'Sources/FMDB.xcframework'
  end

  spec.subspec 'provider' do |ss|
    ss.vendored_frameworks = 'Sources/path_provider_ios.xcframework'
    ss.preserve_paths = 'Sources/path_provider_ios.xcframework'
  end

  spec.subspec 'Reachability' do |ss|
    ss.vendored_frameworks = 'Sources/Reachability.xcframework'
    ss.preserve_paths = 'Sources/Reachability.xcframework'
  end
  spec.subspec 'SDWebImage' do |ss|
    ss.vendored_frameworks = 'Sources/SDWebImage.xcframework'
    ss.preserve_paths = 'Sources/SDWebImage.xcframework'
  end

  spec.subspec 'sqflite' do |ss|
    ss.vendored_frameworks = 'Sources/sqflite.xcframework'
    ss.preserve_paths = 'Sources/sqflite.xcframework'
  end

  spec.subspec 'SwiftyGif' do |ss|
    ss.vendored_frameworks = 'Sources/SwiftyGif.xcframework'
    ss.preserve_paths = 'Sources/SwiftyGif.xcframework'
  end

  spec.subspec 'url_launcher' do |ss|
    ss.vendored_frameworks = 'Sources/url_launcher_ios.xcframework'
    ss.preserve_paths = 'Sources/url_launcher_ios.xcframework'
  end

end
