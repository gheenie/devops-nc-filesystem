read -p "Enter a file/directory name: " USER_INPUT

FILE_NAME=$(find ./nc-filesystem/code -name ${USER_INPUT}* -type f)

if [[ ${FILE_NAME} != '' ]]; then
    echo ${USER_INPUT} is a file
fi

DIRECTORY_NAME=$(find ./nc-filesystem/code -name ${USER_INPUT} -type d)

if [[ ${DIRECTORY_NAME} != '' ]]; then
    echo ${USER_INPUT} is a directory
    echo
    echo Contents of ${USER_INPUT}:

    CONTENTS_IN_MATCHED_DIRECTORY=$(find ${DIRECTORY_NAME}/*)

    for file_or_folder in ${CONTENTS_IN_MATCHED_DIRECTORY}; do
        # Exclude file path prefix.
        echo ${file_or_folder##*/}
    done
fi
