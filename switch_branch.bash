#!/bin/bash
repo_list="platform_hardware_libhardware platform_frameworks_base platform_frameworks_av platform_system_core platform_system_media platform_build"
for r in ${repo_list};
do
  IFS='_' read -a arr <<< "$r"
  echo "Array =>" ${arr[@]:1};
  #echo $path_arr
  SAVE_IFS="$IFS"
  IFS="/"
  path="${arr[*]:1}"
  IFS="$SAVE_IFS"
  {
    cd $path;
    cbranch=$(git rev-parse --abbrev-ref HEAD);
    if [ "$cbranch" == "non_nexus-6.0" ]; then
      echo "Already at the correct place $r";
    else
      git branch |grep "non_nexus-6.0";
      if [ "0" == "$?" ]; then
        git checkout -b non_nexus-6.0;
        echo "###### Warning, this is an old branch!!!! \n $r #####";
      else
        git fetch mo
        git checkout -b non_nexus-6.0 mo/non_nexus-6.0;
      fi
    fi
    cd -;
  }
done
