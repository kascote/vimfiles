#!/bin/env ruby
#
# FastGrep:     External grep search customized for Ruby on Rails search 
# Maintainer:   Nelson Fernandez <crasftsman [at] netflux.com.ar>
# Date:         Aug 13, 2008
# Version:      0.1
# Licence:      MIT Licence
# Language:     ruby
# Remark:       Simple solution to search for an string in a project.
# Remark:       Please, if you update this code send it to me to upgrade
# Remark:       the master repository ;)
# Remark:       Some code borrow from Specky!
# Remark:       http://vim.sourceforge.net/scripts/script.php?script_id=2286
# Remark:       and from this TM bundle
# Remark:       http://gist.github.com/4291/

query = ARGV[0]
directory = './'
#command = %{cd "#{directory}"; find . \\( -path '*/.git' -or -path '*/.svn' -or -path '*/vendor' -or -path '*/tmp' -or -path '*/test/coverage' -or -path '*/log' -or -path '*.log' -or -path '*.gz' \\) -prune -or -type f -print0 | xargs -0 grep -nr --ignore-case --fixed-strings --exclude='*.log' #{query}}
command = %{cd "#{directory}"; find . \\( -path '*/.git' -or -path '*/.svn' -or -path '*/vendor' -or -path '*/tmp' -or -path '*/test/coverage' -or -path '*/log' -or -path '*.log' -or -path '*.gz' \\) -prune -or -type f -print0 | xargs -0 grep -nr --ignore-case --fixed-strings --exclude='*.log' #{query}}
#puts command 

#def ellipsize_path(path)
#    path.sub(/^(.{30})(.{10,})(.{30})$/) { "#$1⋯#$3" }
#end

IO.popen(command) do |pipe|
   
  pipe.each_with_index do |line, i|
           
    if line =~ /^(Binary file )(.*?) matches/
      prefix, file = $1, $2
      path = File.join(directory, file)
      puts "#{i}) Binary file"
      puts "#{file}\n\n"
      next
    end

    line.gsub!(/^([^:]+):(\d+):(.*)$/) do
      relative_path, line_number, content = $1, $2, $3.strip
      path = File.join(directory, "file")
      puts "#{i}) #{ "%s:%s" % [relative_path, line_number] }"
      puts "#{content}\n\n"
    end
  end #pipe

end #IO
