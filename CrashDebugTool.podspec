Pod::Spec.new do |s|
s.name         = 'CrashDebugTool'
s.version      = '0.0.1'
s.summary      = 'Catch Crash Exception And Collect Api Info'
s.homepage     = 'https://github.com/lisundy/CrashDebugTool'
s.license      = 'MIT'
s.authors      = {'XBingo' => 'xiaobingli92@163.com'}
s.platform     = :ios, '8.0'
s.source       = {:git => 'https://github.com/lisundy/CrashDebugTool.git', :tag => s.version}
s.requires_arc = true
s.source_files     = 'Resources/**/*.{h,m}'
end
