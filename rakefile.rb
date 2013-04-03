task :default => [:guard]

task :guard do
	system 'bundle exec guard'	
end

task :test do
	system 'echo test task invoked'
end
