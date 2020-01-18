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


function pushfiles()
{
  basename=$1
  #begin=$2
  #end=$3

  for file in $(seq $2 $3)
  do

    addpushafile ${basename}${file}
  done
}



function PushAllFiles()
{ 
  for file in $(ls)
  #for file in *
  do
    addpushafile ${file}
  done
}



#test function addpushafile
#addpushafile $1   # test ok

#test pushfiles sxwc aa ae
#pushfiles sxwc 0 5
PushAllFiles
