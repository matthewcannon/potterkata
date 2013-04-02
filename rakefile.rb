task :default => [:guard]

task :guard do
	system 'bundle exec guard'	
end
