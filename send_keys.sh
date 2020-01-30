#/bin/bash
# @ is 500.000us sleep between keypresses
# standard sleep between keypresses are 75000us

S=75000
ExtendedSleep=500000
#keys="fdSfd"
keys=$1
output=""

for (( i=0; i<${#keys}; i++ )); do
    if [ ${keys:$i:1} == "@" ]; then
        output="$output 'usleep $ExtendedSleep'"
    else
        output="$output 'key ${keys:$i:1}' 'usleep $S'"
    fi
done

echo -n $output
