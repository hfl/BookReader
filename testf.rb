Dir.glob(["BookReader/BookReader/**/*.css","BookReader/BookReader/**/*.js"]).each do |name|
	unless File.directory? name
		puts name
	end
end
