prodhost=lax01-us.interwerks.com
port=45715
sshuser=root
workdir=$(pwd)
cd $(pwd)/dnf/9 && bash genrepo.sh
cd $workdir
rsync -avzhP --stats -e 'ssh -p 45715' $(pwd)/dnf $sshuser@$prodhost:/home/istiak/enterprise.hostboxcp.com/public_html/ --delete