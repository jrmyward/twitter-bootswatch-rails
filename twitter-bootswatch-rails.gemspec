# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "twitter/bootswatch/rails/version"

Gem::Specification.new do |s|
  s.name        = "twitter-bootswatch-rails"
  s.version     = Twitter::Bootswatch::Rails::VERSION
  s.platform    = Gem::Platform::RUBY
  s.license     = 'MIT'
  s.licenses    = ['MIT', 'GPL-2']
  s.authors     = ["Scott V. Rosenthal"]
  s.email       = ["sr7575@gmail.com"]
  s.homepage    = "https://github.com/scottvrosenthal/twitter-bootswatch-rails"
  s.summary     = %q{Twitter Bootstrap CSS & Font Awesome toolkit for Rails 3.1+ Asset Pipeline with less-rails (no fluff - core only)}
  s.description = %q{twitter-bootswatch-rails project integrates Bootstrap CSS & Font Awesome toolkit for Rails 3.1+ Asset Pipeline with less-rails and allows you to easily cherry pick and customize a theme for your app}

  s.rubyforge_project = "twitter-bootswatch-rails"
  s.files = Dir["lib/**/*"] + Dir["vendor/**/*"] + Dir["app/**/*"] + ["Rakefile", "README.md"]
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency             'railties',   '>= 3.1'
  s.add_dependency             'actionpack', '>= 3.1'
  s.add_dependency             'thor', '>= 0.16'
  
  s.add_runtime_dependency 'less-rails', '>= 2.3'
  s.add_runtime_dependency 'execjs', '>= 1.4.0'

  s.add_development_dependency 'rails', '>= 3.1'
  s.add_development_dependency 'therubyracer', '>= 0.11.1'

  s.post_install_message = "Important: You may need to add a javascript runtime to your Gemfile in order for bootstrap's LESS files to compile to CSS. \n\n" \
  "**********************************************\n\n" \
  "ExecJS supports these runtimes:\n\n" \
  "therubyracer - Google V8 embedded within Ruby\n\n" \
  "therubyrhino - Mozilla Rhino embedded within JRuby\n\n" \
  "Node.js\n\n" \
  "**********************************************"
end
