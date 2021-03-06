Pod::Spec.new do |s|
  s.name         = "OrientationDelegatingUINavigationController"
  s.version      = "0.0.1"
  s.summary      = "Allows delegating the orientation delegate calls to the topmost UIViewController in a UINavigationController"
  s.homepage     = "https://github.com/drallgood/OrientationDelegatingUINavigationController.git"
  s.license      = 'MIT'
  s.author       = { "Patrice Brend'amour" => "patrice@brendamour.net" }
  s.source       = { :git => "https://github.com/drallgood/OrientationDelegatingUINavigationController.git", :tag => s.version.to_s }
  s.platform     = :ios
  s.source_files = 'Classes', 'OrientationDelegatingUINavigationController/**/*.{h,m}'
  s.public_header_files = 'OrientationDelegatingUINavigationController/**/*.h'
  s.requires_arc = false
end

