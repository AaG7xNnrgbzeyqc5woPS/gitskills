#
#This shell script add file and commite it and push it to github server
#
# 
function addpushafile()
{
filename=$1
git add ${filename}
git commit -m "${filename}"
git push
return 0  # return ok!
}



#test function addpushafile
addpushafile $1
