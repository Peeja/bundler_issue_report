require "bundler_issue_report/version"

module BundlerIssueReport
  def self.write_report
    Report.new.write_on($stdout)
  end

  class Report
    def write_on(output)
      output.write <<EOF
The command you ran:
$ [fill in]

Exception backtrace(s), if any:
[fill in]

Your Gemfile:
#{read_file("Gemfile")}

Your Gemfile.lock:
#{read_file("Gemfile.lock")}

Your Bundler configuration settings:
#{command('bundle', 'config')}

What version of bundler you are using
#{command('bundle', '-v')}

What version of Ruby you are using
#{command('ruby', '-v')}

What version of Rubygems you are using
#{command('gem', '-v')}

Whether you are using RVM, and if so what version
#{command('rvm', '-v')}

Whether you have the rubygems-bundler gem, which can break gem executables
#{gem_version('rubygems-bundler')}

Whether you have the open_gem gem, which can cause rake activation conflicts
#{gem_version('open_gem')}
EOF
    end

    def read_file(filename)
      File.read(filename).strip
    rescue Errno::ENOENT
      "<No #{filename} found>"
    end

    def command(cmd, args)
      `#{cmd} #{args}`.strip
    rescue Errno::ENOENT
      "<No #{cmd} found>"
    end

    def gem_version(gem_name)
      output = `gem list #{gem_name}`.strip
      output.empty? ? "<#{gem_name} not found>" : output
    end
  end
end
