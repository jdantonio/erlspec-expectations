require 'rubygems'
require 'rake'
require 'rake/clean'

ERL = 'erl'
APP = 'erlspec'
REBAR = './rebar'

CLEAN << FileList['./ebin/*.*', './test/*.beam', './.eunit/*.beam']
CLOBBER << FileList['./ebin/*.*', './test/*.beam', './.eunit/*.beam']

desc 'Clean, update dependencies, compile, and run tests'
task :build => [:clean, :update_deps, :compile, :eunit]

desc 'Get dependencies, compile, and run tests'
task :init => [:get_deps, :compile, :eunit]

desc 'Clean, get dependencies, compile, and run tests'
task :all => [:clean, :get_deps, :compile, :eunit, :ct]

desc 'Compile sources'
task :compile => [:update_deps] do
  sh "#{REBAR} compile"
end

desc 'Run eunit [test/foo_tests.erl] tests'
task :eunit do
  sh "#{REBAR} eunit skip_deps=true"
end

desc 'Run common_test suites in ./test'
task :ct do
  sh "#{REBAR} ct skip_deps=true"
end

desc 'Update fetched dependencies'
task :update_deps => [:get_deps] do
  sh "#{REBAR} update-deps"
end

desc 'Fetch dependencies'
task :get_deps do
  sh "#{REBAR} get-deps"
end

desc 'Delete fetched dependencies'
task :distclean do
  sh "#{REBAR} delete-deps"
end

desc 'Generate documentation'
task :docs do
	sh "#{ERL} -noshell -run edoc_run application '#{APP}' '\".\"' '[]'"
end

task :default => [:all]
