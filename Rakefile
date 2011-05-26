# coding: utf-8
require 'rubygems'
require 'rake'
require 'rake/rdoctask'
require 'init.rb'

begin
  gem 'jeweler', '>= 1.0.0'
  require 'jeweler'

  Jeweler::Tasks.new do |s|
    s.name = 'purrfect_json'
    s.version = PurrfectJson::VERSION
    s.summary = 'Allows converting JSON into ASCII cat art'
    s.author = 'Anthony Caliendo'
    s.email = 'anthonycaliendo@emailredirect.cjb.net'
    s.homepage = 'http://github.com/AnthonyCaliendo/purrfect_json'
    s.description = 'Allows you to convert an object #to_cats, using the output of #to_json.  Automatically hooks into Rails to allow ActiveRecord objects to be serialized as cats, and defines a cats Mime type.'
    s.post_install_message = %q{
    ========================================================================
    Thanks for installing PurrfectJSON!
    ------------------------------------------------------------------------
    To include in your Rails project, edit environment.rb:
      config.gem 'purrfect_json'

    Outside of Rails, you can include the functionality in any object
    with a #to_json method by just including the module:
      include PurrfectJson

    Find out more:
      http://github.com/AnthonyCaliendo/purrfect_json/
    ========================================================================
    }

    s.require_path = 'lib'
    s.files = %w(LICENSE README.textile Rakefile init.rb) + Dir.glob("{lib,test}/**/*")
  end

  Jeweler::GemcutterTasks.new
rescue LoadError
  puts 'Jeweler is not available. Install it with: gem install jeweler -s http://gemcutter.org'
end

begin
  gem 'rspec', '>= 1.2.6'
  require 'spec'
  require 'spec/rake/spectask'
rescue LoadError
  begin
    require 'rspec/core/rake_task.rb'
    require 'rspec/core/version'
  rescue LoadError
    puts 'RSpec is not available. Install it with: gem install rspec'
  end
end

desc 'Default: run unit tests'
task :default => :spec

desc 'Generate documentation for PurrfectJSON'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'PurrfectJSON'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README.textile')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

if defined?(Spec)
  desc 'Run unit tests'
  Spec::Rake::SpecTask.new('spec') do |t|
    t.spec_files = FileList['spec/**/*_spec.rb']
    t.spec_opts = ['-c']
  end
end

if defined?(RSpec)
  desc 'Run unit tests'
  RSpec::Core::RakeTask.new('spec') do |t|
    t.pattern = FileList['spec/**/*_spec.rb']
  end
end