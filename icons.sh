array=(
    '512::icon-512x512.png'
    '256::icon-256x256.png'
    '192::icon-192x192.png'
    '152::icon152x152.png'
    '144::icon-144x144.png'
    '128::icon-128x128.png'
    '32::icon-32x32.png'
)

INPUT=$1
INPUT=${INPUT:-icon.png}

if [ ! -f "$INPUT" ]; then
	echo $INPUT does not exist
	exit
fi

for index in "${array[@]}" ; do
    KEY="${index%%::*}"
    VALUE="${index##*::}"
    cp $INPUT $VALUE
    sips -Z $KEY $VALUE
done
