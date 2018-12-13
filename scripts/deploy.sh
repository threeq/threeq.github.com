host=$1

echo 'start deploy ...'
ssh $host 'rm -rf threeq.github.com && git clone https://github.com/threeq/threeq.github.com.git'

echo 'startup ...'
ssh $host 'cd threeq.github.com && bash scripts/startup.sh'

echo 'end ----------------'