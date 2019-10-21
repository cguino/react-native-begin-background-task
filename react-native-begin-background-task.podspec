require "json"

 json = File.read(File.join(__dir__, "package.json"))
 package = JSON.parse(json).deep_symbolize_keys

 Pod::Spec.new do |s|
   s.name = package[:name]
   s.version = package[:version]
   s.license = { type: "MIT" }
   s.homepage = "https://github.com/cguino/react-native-begin-background-task"
   s.authors = package[:author]
   s.summary = package[:description]
   s.source = { git: package[:repository] }
   s.source_files = "ios/*.{h,m}"
   s.platform = :ios, "8.0"

   s.dependency "React"
 end
