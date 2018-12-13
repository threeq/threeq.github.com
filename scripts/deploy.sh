host=$1

echo 'start deploy ...'
ssh $host 'git clone https://github.com/threeq/threeq.github.com.git'

echo 'startup ...'
ssh $host 'cd threeq.github.com && scripts/startup.sh'

echo 'end ----------------'