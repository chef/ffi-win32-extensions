require "rake"
require "rake/clean"
require "rake/testtask"

CLEAN.include("**/*.gem", "**/*.rbc")

namespace :gem do
  desc "Create the ffi-win32-extensions gem"
  task create: [:clean] do
    require "rubygems/package" unless defined?(Gem::Package)
    spec = eval(IO.read("ffi-win32-extensions.gemspec")) # rubocop: disable Security/Eval
    spec.signing_key = File.join(Dir.home, ".ssh", "gem-private_key.pem")
    Gem::Package.build(spec, true)
  end

  desc "Install the win32-clipboard library"
  task install: [:create] do
    file = Dir["*.gem"].first
    sh "gem install -l #{file}"
  end
end

namespace :test do
  Rake::TestTask.new(:all) do |t|
    t.warning = true
    t.verbose = true
  end

  Rake::TestTask.new(:ffi) do |t|
    t.warning = true
    t.verbose = true
    t.test_files = FileList["test/test_ffi_extensions.rb"]
  end

  Rake::TestTask.new(:string) do |t|
    t.warning = true
    t.verbose = true
    t.test_files = FileList["test/test_string_extensions.rb"]
  end
end

begin
  require "chefstyle"
  require "rubocop/rake_task"
  desc "Run Chefstyle tests"
  RuboCop::RakeTask.new(:style) do |task|
    task.options += ["--display-cop-names", "--no-color"]
  end
rescue LoadError
  puts "chefstyle gem is not installed. bundle install first to make sure all dependencies are installed."
end

task default: "test:all"
