difficulty 4
description "You have been working on the branch that you don't need anymore.
Delete unused branch"

setup do
  repo.init
  FileUtils.touch("file1")
  repo.add("file1")
  repo.commit_all("Adding file1")

end

solution do
  return false if repo.branches.map(&:name).include?("unnecessary_branch")
  true
end

hint do
  puts "It's very similiar to creating the branch, you have to found the right command"
end
