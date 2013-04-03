guard :bundler do
	watch('Gemfile')
end

guard 'rake', :task => 'test' do
  watch(%r{^test/.+$})
end
