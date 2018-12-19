require "bundler/gem_tasks"
require "rake/testtask"
require "fileutils"

Rake::TestTask.new(:test) do |t|
  t.libs << "test"
  t.libs << "lib"
  t.test_files = FileList["test/**/*_test.rb"]
end


namespace :assets do
	desc "Copy Assets to Vendor"
	task :copy do
		Dir.glob(["BookReader/BookReader/**/*.css","BookReader/BookReader/**/*.js"]).each do |name|
			unless File.directory? name
				v_name = name[21..-1]
				assets_name = "vendor/assets/"
				if File.extname(name) == ".css"
					assets_name = assets_name + "stylesheets/bookreader" + v_name
				else
					assets_name = assets_name + "javascripts/bookreader" + v_name
				end
				FileUtils.mkdir_p(File.dirname(assets_name)) unless File.directory? File.dirname(assets_name)
				FileUtils.cp name, assets_name
			end
		end
		puts "Javascript and CSS copied."
		FileUtils.cp_r "BookReader/BookReader/images", "vendor/assets/"
		puts "Images copied."
	end
	
	desc "Clean Assets"
	task :clean do
		FileUtils.rm_r(["vendor/assets/images", "vendor/assets/javascripts", "vendor/assets/stylesheets"])
		puts "Assets cleaned."
	end
end

task :default => :test
