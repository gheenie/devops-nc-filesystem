read -p "Enter a file/directory name: " USER_INPUT

FILE_NAME=$(find ./nc-filesystem/code -name ${USER_INPUT}* -type f)

if [[ ${FILE_NAME} != '' ]]; then
    echo ${USER_INPUT} is a file
fi

DIRECTORY_NAME=$(find ./nc-filesystem/code -name ${USER_INPUT} -type d)

if [[ ${DIRECTORY_NAME} != '' ]]; then
    echo ${USER_INPUT} is a directory
fi
