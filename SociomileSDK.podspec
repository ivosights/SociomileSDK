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

  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # spec.framework  = "SomeFramework"
  # spec.frameworks = "SomeFramework", "AnotherFramework"

  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  # spec.requires_arc = true

  # spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # spec.dependency "JSONKit", "~> 1.4"

end
