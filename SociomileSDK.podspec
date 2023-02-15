Pod::Spec.new do |spec|
  spec.name         = "SociomileSDK"
  spec.version      = "0.0.2"
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
  spec.vendored_frameworks = 'Sources/SociomileSDK.xcframework'

  spec.swift_versions = "5.0"

end
