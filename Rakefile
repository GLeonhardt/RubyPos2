task default: ["test:all"]

namespace :test do
    desc "Run the units test"
    task :units do
        dir.glob('./test/units/*_test.rb').each{ |t| require t}
    end

    desc "Run the functionals test"
    task :functionals do
        dir.glob('./test/functionals/*_test.rb').each{ |t| require t}
    end

    desc "Do all tasks"
    task :all do
        dir.glob('./test/**/*_test.rb').each{ |t| require t}
    end

end