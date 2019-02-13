basepath=$(pwd)

echo "basepath: $basepath"

if [ ! -f "/Users/apple/Library/j2objc-2.3/j2objc" ]; 
then 
echo "J2OBJC_HOME is not correctly defined, currently set to '${J2OBJC_HOME}'"; 
exit 1; 
fi;
inputpath="${basepath}/CocoaPodsTest/CocoaPodsTest/JavaSource/src/Hello.java"
outputpat="${basepath}/CocoaPodsTest/ResultSource/"
# INPUT_FILE_BASE="Hello"
echo ${INPUT_FILE_PATH}
"/Users/apple/Library/j2objc-2.3/j2objc" \
-classpath "${basepath}/CocoaPodsTest/CocoaPodsTest/JavaSource/src/Hello.class" \
-sourcepath "$inputpath" \
-d "$outputpat" \
--no-package-directories -use-arc --prefix com.example.mango.*=MM \
-g ${inputpath};
#${basepath}/CocoaPodsTest/ResultSource/${INPUT_FILE_BASE}.h
#${basepath}/CocoaPodsTest/ResultSource/${INPUT_FILE_BASE}.m
echo "finished!!!==$?"