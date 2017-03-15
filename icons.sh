array=(
    '256::icon-256x256.png'
    '192::icon-192x192.png'
    '152::icon152x152.png'
    '144::icon-144x144.png'
    '128::icon-128x128.png'
    '32::icon-32x32.png'
)



for index in "${array[@]}" ; do
    KEY="${index%%::*}"
    VALUE="${index##*::}"
    sips -Z $KEY icon.png $VALUE
done
