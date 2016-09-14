num_tests=0
pass=0
fails=0
echo "--------------------------------------------------"
for test in `ls **/tests/*`; do
echo "Running test $test"
python run_test.py --test_file $test
if [ $? -eq 0 ]; then
let pass=pass+1
else
let fails=fails+1
fi
let num_tests=num_tests+1
echo "--------------------------------------------------"
done;

echo "$num_tests tests run. $pass passed. $fails failed."
if [ $fails -eq 0 ]; then
exit 0
else
exit 1
fi

