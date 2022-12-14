FILE=${1}

if [[ $FILE != "alps_seasons" && $FILE != "painters_14" ]]; then
    echo "Currently available datasets are: alps_seasons and painters_14"
    exit 1
fi

URL=https://data.vision.ee.ethz.ch/cvl/combogan/$FILE.zip
ZIP_FILE=./datasets/$FILE.zip
TARGET_DIR=./datasets/$FILE/
wget --no-check-certificate -N $URL -O $ZIP_FILE
mkdir $TARGET_DIR
unzip $ZIP_FILE -d ./datasets/
rm $ZIP_FILE