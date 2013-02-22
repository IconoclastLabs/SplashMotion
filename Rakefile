# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project'
require 'bundler'
Bundler.require

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'SplashMotion'
  # essential to hide status bar ASAP
  app.info_plist['UIStatusBarHidden'] = true

  #include styles
  app.files += Dir.glob(File.join(app.project_dir, 'styles/**/*.rb'))
end
