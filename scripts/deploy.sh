host=$1

echo 'start deploy ...'
ssh -o "StrictHostKeyChecking no" $host 'rm -rf threeq.github.com && git clone https://github.com/threeq/threeq.github.com.git'

echo 'startup ...'
ssh -o "StrictHostKeyChecking no" $host 'cd threeq.github.com && bash scripts/startup.sh'

echo 'end ----------------'