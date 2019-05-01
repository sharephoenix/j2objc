
# https://stackoverflow.com/questions/29365645/how-to-translate-an-entire-folder-or-package-from-java-to-objective-c

if [ ! -f "/Users/apple/Library/j2objc-2.3/j2objc" ]; then 
echo "J2OBJC_HOME is not correctly defined, currently set to '${J2OBJC_HOME}'"; 
exit 1; 
fi;

excommand="/Users/apple/Library/j2objc-2.3/j2objc"
javaSource="/Users/apple/MyClientRemote/j2objc/CocoaPodsTest/CocoaPodsTest/JavaSource/src"
resultSource="/Users/apple/MyClientRemote/j2objc/CocoaPodsTest/CocoaPodsTest/JavaSource/src"
echo "start"
cd /Users/apple/Library/j2objc-2.3/
j2objc -h

j2objc -d ${resultSource}/oc -sourcepath ${javaSource} --prefixes 'SL' \
-classpath $J2OBJC/lib/javax-inject.jar \
    `find ${javaSource} -name '*.java'`
echo "finish"
