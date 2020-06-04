set -euo pipefail

IMAGES_PATH=$HOME"/Dropbox/fotos-de-intervista"
EXTENSION="png"

cd $IMAGES_PATH
for image in `find *.$EXTENSION`; do
  echo "Generating thumbnail for"$image
  no_extension=`basename $image .$EXTENSION`
  convert $image -resize 400x200 $no_extension"_thumbnail."$EXTENSION
done
cd --

set -euo pipefail

IMAGES_PATH=$HOME"/Dropbox/submissions"
EXTENSION="jpg"

cd $IMAGES_PATH
for image in `find *.$EXTENSION`; do
  echo "Generating thumbnail for"$image
  no_extension=`basename $image .$EXTENSION`
  convert $image -resize 400x200 $no_extension"_thumbnail."$EXTENSION
done
cd --

IMAGES_PATH=$HOME"/Dropbox/thoughts"
EXTENSION="jpg"

cd $IMAGES_PATH
for image in `find *.$EXTENSION`; do
  echo "Generating thumbnail for"$image
  no_extension=`basename $image .$EXTENSION`
  convert $image -resize 400x200 $no_extension"_thumbnail."$EXTENSION
done
cd --

