##Silver Green
基于Flex 4.6.x的一套Flex组件的皮肤

### 使用方法：  
引入：  
<pre>
add silvergreen-2.0.swc to libs
</pre>

使用（SWC方案）：  
<pre>
在IDE（如：Flash Builder）里面，增加一个编译参数：  
-theme ../libs/silvergreen-2.0.swc
</pre>

使用（source方案）：  
<pre>
1、copy com\ksria\flex\silvergreen\* to src
2、copy style.css to src folder
3、import style.css in main.mxml
   &lt;fx:Style source=&quot;style.css&quot; /&gt;
</pre>

spark包含组件：  
<pre>
Button | ButtonBar | TabBar | ToggleButton | CheckBox | RadioButton | Scroller | HScrollBar | VScrollBar
HSlider | VSlider | DropDownList | TextArea | TextInput | ComboBox | List | NumericStepper | Spinner
Panel | BorderContainer | TitleWindow | VideoPlayer | DataGrid
</pre>

mx包含组件：  
<pre>
Accordion | AdvancedDataGrid | Alert | Border | ColorPicker | DateChooser | HScrollBar | LinkBar
LinkButton | Menu | MenuBar | PopUpButton | PopUpMenuButton | ProgressBar | TabNavigator | ToggleButtonBar
Tree | VScrollBar
</pre>

为了方便使用，将Spark组件单独剥离出来，使用方案如下：（只限于spark组件）  
引入：
<pre>
add silvergreen-spark-2.0.swc to libs
</pre>

使用（SWC方案）：  
<pre>
在IDE（如：Flash Builder）里面，增加一个编译参数：  
-theme ../libs/silvergreen-spark-2.0.swc
</pre>

使用（source方案）：  
<pre>
1、copy com\ksria\flex\silvergreen\spark\* to src
2、copy style.css to src folder
3、import com\ksria\flex\silvergreen\spark\style.css in main.mxml
   &lt;fx:Style source=&quot;com\ksria\flex\silvergreen\spark\style.css&quot; /&gt;
</pre>

项目主页：
[http://www.k-zone.cn/project/silvergreen.html](http://www.k-zone.cn/project/silvergreen.html)

Demo预览地址：
[http://www.k-zone.cn/silvergreen/](http://www.k-zone.cn/silvergreen/)

## 更新日志：
version 2.0 [2011-12-19]
* 基于Flex SDK 4.6+
* 包含了spark和mx全部的皮肤

version 1.x [2010-07-31]
* 基于Flex SDK 4.x beta开发，已经废除。

## 联系方式：
* 博客：[k-zone.cn](http://www.k-zone.cn/zblog)
* 微博：[新浪微博](http://weibo.com/23784148)
* 联络：kenshin[AT]ksria.com

## 版权和许可：
Copyright 2012 [k-zone.cn](http://www.k-zone.cn/zblog)  
Licensed under MIT or GPL Version 2 licenses
