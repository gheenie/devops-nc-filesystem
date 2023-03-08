read -p "Enter a file/directory name within code folder: " USER_INPUT

FILE_OR_FOLDER_NAME=./nc-filesystem/code/${USER_INPUT}

if [ -f ${FILE_OR_FOLDER_NAME} ]; then
    echo ${USER_INPUT} is a file

    exit
fi

if [ -d ${FILE_OR_FOLDER_NAME} ]; then
    echo ${USER_INPUT} is a directory
    echo
    echo Contents of ${USER_INPUT}:
    ls ${FILE_OR_FOLDER_NAME}
    
    exit
fi

echo "${USER_INPUT} doesn't exist"


# FILE_NAME=$(find ./nc-filesystem/code -name ${USER_INPUT}* -type f)

# if [[ ${FILE_NAME} != '' ]]; then
#     echo ${USER_INPUT} is a file
# fi

# DIRECTORY_NAME=$(find ./nc-filesystem/code -name ${USER_INPUT} -type d)

# if [[ ${DIRECTORY_NAME} != '' ]]; then
#     echo ${USER_INPUT} is a directory
#     echo
#     echo Contents of ${USER_INPUT}:

#     CONTENTS_IN_MATCHED_DIRECTORY=$(find ${DIRECTORY_NAME}/*)

#     for FILE_OR_FOLDER_NAME in ${CONTENTS_IN_MATCHED_DIRECTORY}; do
#         # Exclude file path prefix.
#         echo ${FILE_OR_FOLDER_NAME##*/}
#     done
# fi
