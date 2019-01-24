basepath=$(cd `dirname $0`; pwd)

echo "sourcepath---${basepath}/CocoaPodsTest/JavaSource"
firstjava="${basepath}/CocoaPodsTest/JavaSource/src/Hello.java"
INPUT_FILE_BASE="Hello"
"/Users/apple/Library/j2objc-2.3/j2objc" -d $basepath/CocoaPodsTest/ResultSource -sourcepath "${firstjava}" --no-package-directories -use-arc --prefix com.example.mango.*=MM -g ${inputpath} -d ${basepath}/CocoaPodsTest/ResultSource/${INPUT_FILE_BASE}.h ${basepath}/CocoaPodsTest/ResultSource/${INPUT_FILE_BASE}.m
#${basepath}/CocoaPodsTest/ResultSource/${INPUT_FILE_BASE}.h
#${basepath}/CocoaPodsTest/ResultSource/${INPUT_FILE_BASE}.m
echo "finished!!!"