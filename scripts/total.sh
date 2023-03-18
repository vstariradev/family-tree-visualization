cat ../familytree.csv | grep . | grep -v id | grep -v -E '^ $' | wc -l
