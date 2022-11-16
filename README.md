# mpvconfig
基于[uosc 4.4.0](https://github.com/tomasklaen/uosc/releases/tag/4.4.0)，实现一个单击切换的循环按钮

仅修改`Controls.lua`,`uosc.conf`两个文件用于添加按钮，新增`cymode.lua`用于实现功能，代码很笨仅供参考。

核心脚本`cymode.lua`修改于[uosc开发者示例](https://github.com/tomasklaen/uosc#set-prop-value)

依次切换为`不循环(默认)`-`单曲循环`-`顺序播放列表`，播放列表里只有一项时，不提供`顺序播放列表`选项

![动画](https://user-images.githubusercontent.com/89340536/202156072-8f4d92fd-015a-41ad-80ce-d1aa24a4cb96.gif)
![动画2](https://user-images.githubusercontent.com/89340536/202156411-f7d469b8-fc5c-4d48-a3be-f6d4d76dcab2.gif)
