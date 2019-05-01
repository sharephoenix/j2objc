#!/bin/bash

# initial_params
SDK_NAME="TestFrament"

######### sheng #######
#
######### 打包脚本 #########

echo "########### param ##########"
BUILD_TIME=`date "+%y%m%d%H%M"`
#是否拷贝lib库 ！！！！！！！！！！！！！
COPY_LIBS=1
#clean and build 是否重新clean编译
CLEAN_BUILD=0
#SDK名称
SDK_NAME=${PROJECT_NAME}
#ios sdk工程路径
PATH_SDK= ./ #${SRCROOT}
PATH_DEMO=./${PROJECT_NAME}
echo "+++++++++++"
echo ${PATH_DEMO}

#workspace工程名称
WORKSPACE=${PROJECT_NAME}.xcworkspace

echo "sdk工程路径:$PATH_SDK"
echo "sdk demo工程路径:$PATH_DEMO"
#输出路径
OUTPUT=/Users/${USER}/Desktop/${SDK_NAME}_${BUILD_TIME}
mkdir $OUTPUT

echo "输出路径:$OUTPUT"

echo "########### Build ##########"

if [ CLEAN_BUILD ];
then
#进入PlayerSDK目录
cd $PATH_SDK
#执行clean命令
xcodebuild clean
#执行build真机命令
# xcodebuild -workspace $WORKSPACE -scheme $SDK_NAME -sdk iphoneos -configuration Release
xcodebuild -scheme $SDK_NAME -sdk iphoneos -configuration Release
#build模拟器SDK
# xcodebuild -workspace $WORKSPACE -scheme $SDK_NAME -sdk iphonesimulator -configuration Release
xcodebuild -scheme $SDK_NAME -sdk iphonesimulator -configuration Release
fi



# echo "########### Strip ##########"

# #执行strip真机SDK
# strip -x    ${BUILD_DIR}/Release-iphoneos/$SDK_NAME.framework/$SDK_NAME
# #cp 真机framework到output
# cp -r ${BUILD_DIR}/Release-iphoneos/$SDK_NAME.framework $OUTPUT/$SDK_NAME.framework
# #执行strip模拟器命令
# strip -x   ${BUILD_DIR}/Release-iphonesimulator/$SDK_NAME.framework/$SDK_NAME
# #删除framework原有的库文件
# rm -r $OUTPUT/$SDK_NAME.framework/$SDK_NAME
# #合并SDK 输出到output
# lipo -create ${BUILD_DIR}/Release-iphonesimulator/$SDK_NAME.framework/$SDK_NAME ${BUILD_DIR}/Release-iphoneos/$SDK_NAME.framework/$SDK_NAME -output $OUTPUT/$SDK_NAME.framework/$SDK_NAME

# open $OUTPUT/$SDK_NAME.framework
# echo "########### Other framework ##########"

# #SDK关联库
# SDKS_NAME=(GPUImage PlayerSDK RtSDK GSCommonKit)

# for var in ${SDKS_NAME[@]};
# do
# echo $var

# #执行strip真机SDK
# strip -x    ${BUILD_DIR}/Release-iphoneos/${var}.framework/$var
# #cp 真机framework到output
# cp -r ${BUILD_DIR}/Release-iphoneos/${var}.framework $OUTPUT/$var.framework
# #执行strip模拟器命令
# strip -x   ${BUILD_DIR}/Release-iphonesimulator/${var}.framework/$var
# #删除framework原有的库文件
# rm -r $OUTPUT/${var}.framework/$var
# #合并SDK 输出到output
# lipo -create ${BUILD_DIR}/Release-iphonesimulator/${var}.framework/$var ${BUILD_DIR}/Release-iphoneos/${var}.framework/$var -output $OUTPUT/${var}.framework/$var

# done

# echo "########### OUTPUT ##########"
# #拷贝 Demo到release目录
# cp -R $PATH_DEMO $OUTPUT/
# echo "copy $PATH_DEMO to $OUTPUT/"
# echo "########### Copy Libs ##########"

# if [ $COPY_LIBS -eq 1 ] ;
# then
# #创建文件
# mkdir $OUTPUT/Libs
# mkdir $OUTPUT/Libs/ffmpeg
# #svn路径
# PATH_SVN=$(dirname ${PATH_DEMO})

# echo "PATH_SVN=$PATH_SVN"
# ##循环遍历找到uniclient文件夹
# while [ "${PATH_SVN##*/}"x != "uniclient"x ];
# do
# PATH_SVN=$(dirname ${PATH_SVN})
# echo "PATH_SVN=$PATH_SVN"
# done


# #Libs
# PATH_LIBS=$PATH_SVN/lib/ios
# #ffmpeg
# cp -r  $PATH_LIBS/libavcodec.a $OUTPUT/Libs/ffmpeg/libavcodec.a
# cp -r  $PATH_LIBS/libavformat.a $OUTPUT/Libs/ffmpeg/libavformat.a
# cp -r  $PATH_LIBS/libavutil.a $OUTPUT/Libs/ffmpeg/libavutil.a
# cp -r  $PATH_LIBS/libswresample.a $OUTPUT/Libs/ffmpeg/libswresample.a
# cp -r  $PATH_LIBS/libswscale.a $OUTPUT/Libs/ffmpeg/libswscale.a
# #gensee
# cp -r  $PATH_LIBS/libjpeg_ios.a $OUTPUT/Libs/libjpeg_ios.a
# #RtSDK不需要PlayerSDKLib.a
# #cp -r  $PATH_LIBS/libPlayerSDKLib.a $OUTPUT/Libs/libPlayerSDKLib.a
# cp -r  $PATH_LIBS/libspeex.a $OUTPUT/Libs/libspeex.a
# cp -r  $PATH_LIBS/libSwfViewIOS.a $OUTPUT/Libs/libSwfViewIOS.a
# cp -r  $PATH_LIBS/libx264.a $OUTPUT/Libs/libx264.a
# cp -r  $PATH_LIBS/offlineplay/liblibfaad.a $OUTPUT/Libs/liblibfaad.a

# fi

open /$OUTPUT

echo "########### FINISHED ##########"
