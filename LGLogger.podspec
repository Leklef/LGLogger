#
#  Be sure to run `pod spec lint LGLogger.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  spec.name         = "LGLogger"
  spec.version      = "1.0.0"
  spec.summary      = "Logging library."

  spec.description  = <<-DESC
  Easy-to-use & simple logging library.
                   DESC

  spec.homepage     = "https://github.com/Leklef/LGLogger"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  spec.license      = { :type => "MIT", :file => "LICENSE" }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  spec.author             = { "Lenar Gilyazov" => "lgilyazovg@gmail.com" }
  spec.social_media_url   = "https://twitter.com/lenar_gilyazov"

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  spec.ios.deployment_target = "11.0"
  spec.swift_version = ['5.0', '5.1', '5.2']


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  spec.source       = { :git => "https://github.com/Leklef/LGLogger.git", :tag => "#{spec.version}" }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  spec.source_files  = "LGLogger", "LGLogger/**/*.{swift}"

  spec.public_header_files = "LGLogger/**/*.h"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  spec.framework   = "OSLog"

end
