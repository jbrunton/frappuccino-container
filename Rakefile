require 'rubygems'
require 'bundler'
require 'pathname'
require 'logger'
require 'fileutils'
require 'tmpdir'

Bundler.require

# With thanks to Simone Carletti:
# http://www.simonecarletti.com/blog/2011/09/using-sprockets-without-a-railsrack-project/

task :compile do
    puts "Compiling container..."

    root    = Pathname(File.dirname(__FILE__))
    logger  = Logger.new(STDOUT)

    Dir.mktmpdir do |tmp_path|
        source_dir = Pathname(tmp_path)
        
        puts `git clone git@github.com:jbrunton/frappuccino-core.git #{source_dir}`
    
        sprockets = Sprockets::Environment.new(root) do |env|
            env.logger = logger
        end

        assets_path = source_dir.join('lib', 'assets', 'javascripts', 'core').to_s
        sprockets.append_path(assets_path)

        puts `cp #{root}/index.js #{assets_path}`

        assets = sprockets.find_asset('index.js')
        assets.write_to(root.join('frappuccino-container.js'))
    end
end
