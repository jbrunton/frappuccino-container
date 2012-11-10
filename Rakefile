require 'rubygems'
require 'bundler'
require 'pathname'
require 'logger'
require 'fileutils'
require 'tmpdir'

Bundler.require

# With thanks to Simone Carletti:
# http://www.simonecarletti.com/blog/2011/09/using-sprockets-without-a-railsrack-project/

task :build do
    root    = Pathname(File.dirname(__FILE__))
    Dir.mktmpdir do |tmp_path|
        source_dir = Pathname(tmp_path)
        
        puts `git clone git@github.com:jbrunton/frappuccino-core.git #{source_dir}`
        puts `rake -f #{source_dir}/Rakefile build_container`
        puts `cp build/frappuccino-container.js #{root}/build`
    end
end
