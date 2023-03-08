FILE_NAME=$(find ./nc-filesystem/staff -name nc-${1}.json)

if [[ $FILE_NAME != '' ]]; then
    echo 'staff file found'
else
    echo 'no staff file'
fi
