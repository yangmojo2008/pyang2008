FULLPATH=$(cd "$(dirname "$0")"; pwd)
echo "full path to currently executed script is : ${FULLPATH}"
SOURCECODE_BASEDIR=`dirname $FULLPATH`
SOURCECODE_BASEDIR=`dirname $SOURCECODE_BASEDIR`
SOURCECODE_BASEDIR=`dirname $SOURCECODE_BASEDIR`
# SOURCECODE_BASEDIR=`dirname $SOURCECODE_BASEDIR`
echo "source code base dir is $SOURCECODE_BASEDIR"

# CPP_OUTDIR="../protobuf/cpp"
# OBJC_OUTDIR="$SOURCECODE_BASEDIR/ios/u8/u8/protobuf"
# echo "objc source code dir is $OBJC_OUTDIR"
GO_OUTDIR="$SOURCECODE_BASEDIR/server/src/pb/bid"
echo "go source code dir is $GO_OUTDIR"

protoc --go_out=$GO_OUTDIR *.proto


echo "generate source code done."
