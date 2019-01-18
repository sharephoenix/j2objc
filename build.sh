basepath=$(cd `dirname $0`; pwd)

if [ ! -f "/Users/apple/Library/j2objc-2.3/j2objc" ]; 
then 
echo "J2OBJC_HOME is not correctly defined, currently set to '${J2OBJC_HOME}'"; 
exit 1; 
fi;
inputpath="/Users/apple/MyClientRemote/j2objc/CocoaPodsTest/CocoaPodsTest/JavaSource/src/Hello.java"
# INPUT_FILE_BASE="Hello"
echo ${INPUT_FILE_PATH}
"/Users/apple/Library/j2objc-2.3/j2objc" -d $basepath/CocoaPodsTest/ResultSource -sourcepath "${basepath}/CocoaPodsTest/JavaSource" --no-package-directories -use-arc --prefix com.example.mango.*=MM -g ${inputpath} -d ${basepath}/CocoaPodsTest/ResultSource/${INPUT_FILE_BASE}.h ${basepath}/CocoaPodsTest/ResultSource/${INPUT_FILE_BASE}.m;
#${basepath}/CocoaPodsTest/ResultSource/${INPUT_FILE_BASE}.h
#${basepath}/CocoaPodsTest/ResultSource/${INPUT_FILE_BASE}.m
echo "finished!!!"