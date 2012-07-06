task :build do
  # sh 'middleman build --clean'
  sh 'middleman build'
end

task :server do
  sh 'middleman server --disable-watcher'
end

task :deploy do
  Rake::Task[:build].invoke

  cd 'build' do
    sh 'git add .'
    sh 'git commit -am "updated site - see source branch for details"'
    sh 'git push origin master'
  end
end
