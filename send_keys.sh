#/bin/bash
#keys are always small caps
#S is 500.000us sleep between keypresses
#standard sleep between keypresses are 100.000us

S=75000
ES=500000
#keys="fdSfd"
keys=$1
output=""

for (( i=0; i<${#keys}; i++ )); do
    if [ ${keys:$i:1} == "S" ]; then
        output="$output 'usleep $ES'"
    else
        output="$output 'key ${keys:$i:1}' 'usleep $S'"
    fi
done

echo -n $output
