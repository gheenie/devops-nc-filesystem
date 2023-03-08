mkdir -p ./section-1/reports
rm -r ./section-1/reports/cat-pics.txt

CAT_FILE_NAMES=$(find ./nc-filesystem -name *.jpeg -type f)

for FILE_NAME in ${CAT_FILE_NAMES}; do
    echo ${FILE_NAME} >> ./section-1/reports/cat-pics.txt
done
