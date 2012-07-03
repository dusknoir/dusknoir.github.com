require 'date'
require 'fileutils'

task :deploy do
  sh 'middleman build --clean'

  cd 'build' do
    sh %(git add . && git commit -am "updated site - see source branch for details")
    sh 'git push origin master'
  end
end
