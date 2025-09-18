sign_packages()  {
  pwd
  folders=$(ls -d */ | cut -f1 -d'/')
  alphabets=(a b c d e f g h i j k l m n o p q r s t u v w x y z)
  for folder in $folders
  do
    echo $folder
    for alphabet in "${alphabets[@]}";
    do
      echo $alphabet
      rpm --addsign $folder/Packages/$alphabet/*.rpm
    done
  done
}

unsign_packages()  {
  pwd
  folders=$(ls -d */ | cut -f1 -d'/')
  alphabets=(a b c d e f g h i j k l m n o p q r s t u v w x y z)
  for folder in $folders
  do
    echo $folder
    for alphabet in "${alphabets[@]}";
    do
      echo $alphabet
      rpm --delsign $folder/Packages/$alphabet/*.rpm
    done
  done
}

checksign_packages()  {
  pwd
  folders=$(ls -d */ | cut -f1 -d'/')
  alphabets=(a b c d e f g h i j k l m n o p q r s t u v w x y z)
  for folder in $folders
  do
    echo $folder
    for alphabet in "${alphabets[@]}";
    do
      echo $alphabet
      rpm --checksig $folder/Packages/$alphabet/*.rpm
    done
  done
}

createrepo()  {
  pwd
  folders=$(ls -d */ | cut -f1 -d'/')
  echo $folders
  for folder in $folders
  do
    echo $folder
    rm -rf $folder/repodata/
    createrepo_c $folder
  done
}

generate_repo()  {
  #unsign_packages
  #sign_packages
  #checksign_packages
  createrepo
}

generate_repo