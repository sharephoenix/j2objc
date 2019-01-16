# j2objc
学习 j2objc
#  学习链接 https://www.jianshu.com/p/2cbe6c2806a4

## xcode 工程 mrc 配置文件
## 点击Build Rules菜单项，然后点击"+"增加一个编译规则，Process选项选择Java source files，Using选项选择默认的Custom script。

if [ ! -f "${J2OBJC_HOME}/j2objc" ]; then echo "J2OBJC_HOME is not correctly defined, currently set to '${J2OBJC_HOME}'"; exit 1; fi;
"${J2OBJC_HOME}/j2objc" -d ${DERIVED_FILES_DIR} -sourcepath "$source-root" --no-package-directories -g ${INPUT_FILE_PATH};

## xcode 工程 arc 配置文件
f [ ! -f "${J2OBJC_HOME}/j2objc" ]; then echo "J2OBJC_HOME is not correctly defined, currently set to '${J2OBJC_HOME}'"; exit 1; fi;
"${J2OBJC_HOME}/j2objc" -d ${DERIVED_FILES_DIR} -sourcepath "${PROJECT_DIR}/AirportBase/JavaSource" --no-package-directories -use-arc --prefix com.example.mango.*=MM -g ${INPUT_FILE_PATH};

## 在下边的Output Files面板中，点击 + 按钮，
添加{DERIVED_FILES_DIR}/{INPUT_FILE_BASE}.h，再点击 + 按钮，添加{DERIVED_FILES_DIR}/{INPUT_FILE_BASE}.m

### 配置说明
J2OBJC_HOME：官方的下载 j2objc 的路径
DERIVED_FILES_DIR：导出路径
${PROJECT_DIR}/AirportBase/JavaSource：需要翻译的 java 工程目录
${INPUT_FILE_PATH}：导出类命

# build Setting 
为Framework Search Paths 添加 ${J2OBJC_HOME}/frameworks
为Library Search Paths 添加 ${J2OBJC_HOME}/lib
为User Header Search Paths 添加 ${J2OBJC_HOME}/include

在build settings的Other Linker Flags 中添加一个值-ljre_emul
在build settings的Other Linker Flags 中添加一个链接库选项-liconv
### 说明
J2OBJC_HOME：官方的下载 j2objc 的路径

### 特殊说明
尝试成功
