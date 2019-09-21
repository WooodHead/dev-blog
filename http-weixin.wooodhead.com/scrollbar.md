# 隐藏滚动条问题

[微信小程序之----去掉小程序的滚动条- longgeaisisi的博客 ...](https://blog.csdn.net/longgeaisisi/article/details/84324704)

Nov 21, 2018 - 微信小程序之----去掉小程序的滚动条 ... 微信小程序去掉滚动条 .... 微信小程序的开发文档中没有直接完成这样功能的api，但是可以用wx.

[微信小程序scroll-view的滚动条设置- 鎏嫣宫守护的博客- CSDN ...](https://blog.csdn.net/qq_32067045/article/details/79958540)

Apr 16, 2018 - 小程序的scroll-view用的比较多了，列表页一般也没管它的滚动条，最近突然发现在android与ios中横向滑动的时候表现不一样。不一样在哪呢，ios ...

[微信小程序隐藏滚动条- IT-Sun丿的博客- CSDN博客](https://blog.csdn.net/qq_41261758/article/details/80755054)

Jun 21, 2018 - 一：scroll-view隐藏滚动条在书写网页的时候，往往会为了页面的美观，而选择去掉滚动区域默认的滚动条，而在这里，就是为小程序去掉滚动条的 ...

[微信小程隐藏滚动条- 掘金](https://juejin.im/post/5caef398e51d456e7c0cdaca)

Apr 11, 2019 - scroll-view的滚动条在某些需求下需要隐藏掉。搜索微信小程序隐藏滚动条，大都显示的是下面这段代码：. /_隐藏滚动条_/ ::-webkit-scrollbar { width: ...

[微信小程序如何隐藏scroll-view滚动条\| 微信开放社区](https://developers.weixin.qq.com/community/develop/doc/00006473cf08f8c29da606b2d56c00)

Apr 24, 2018 - API和组件, 小程序, Bug, scroll-view, 客户端, iOS, 6.6.5, 2.0.0 ... scroll-view 使用上述代码无法隐藏滚动条，ios 上有的时候有，有的时候没有.

[微信小程序显示隐藏view元素、滚动条的方法\_上海英纵](https://www.yinzon.com/news/show-225.html)

Jan 4, 2017 - 最近在各大论坛里，看到很多人在问“微信小程序显示隐藏view元素和滚动条”，作为一名微信小程序开\(tian\)发\(keng\)者\(ren\)，今天就在这里为大家 ...

[求教各位大神，小程序的滚动条怎么去掉呀？-FlexLayout-微信小程序开发 ...](http://www.wxapp-union.com/thread-1730-1-1.html)

只是建议，不知道能不能解决。 overflow:scroll //超出内容允许滚动 overflow-x:hidden //隐藏x方向的滚动条 overflow-y:hidden //隐藏y方向的滚动条 ...

[微信小程序scroll-view隐藏滚动条详解- 简书](https://www.jianshu.com/p/eec960f3aa22)

Nov 13, 2017 - 一：scroll-view隐藏滚动条在书写网页的时候，往往会为了页面的美观，而选择去掉滚动区域默认的滚动条，而在这里，就是为小程序去掉滚动条的 ...

[微信小程序去掉滚动条- 个人文章- SegmentFault 思否](https://segmentfault.com/a/1190000016786272)

Oct 24, 2018 - 微信小程序之页面滚动月影javascript微信小程序 · 微信开发与小程序掘金微信小程序微信 · 微信小程序aLogy微信小程序 · 微信小程序开发之填坑之 ...

[微信小程序scroll-view横向滚动的实践踩坑及隐藏其滚动条的实现](https://segmentfault.com/a/1190000018500042)

Mar 14, 2019 - 然后发现.tab-item并没有排在一行上。。说明scroll-view和.tab-item都设置display: flex无效？无奈之下，只好在它外边再包一层，然后样式 ...

[小程序之一键回到顶部和获取滚动条当前位置- 乂丫丫的个人 ...](https://my.oschina.net/yanyaya/blog/1609795)

Jan 19, 2018 - 1.获取滚动条当前位置2.回到顶部onPageScroll:function\(e\){ // 获取滚动条当前位置console.log\(e\) console.log\(e.scrollTop\)//获取滚动条当前位置的 ...

[微信小程序隐藏滚动条- tt-wedos - 博客园](https://www.cnblogs.com/hrlin/p/9791780.html)

Oct 15, 2018 - 微信小程序隐藏滚动条. 全局wxss中添加以下样式，可以隐藏所有的滚动条；. 包括使用scroll-view组件或者使用overflow-y:scroll;而出现的滚动条；.

[小程序中关于隐藏滚动条的方法-11006194-51CTO博客](https://blog.51cto.com/11016194/2358789)

Mar 6, 2019 - 代码：.course-list.list-wrap{display:block;width:678rpx;height:353rpx;margin:0auto;margin-top:91rpx;overflow:hidden;overflow-y:scroll ...

[微信小程序scroll-view隐藏滚动条- 云+社区- 腾讯云](https://cloud.tencent.com/developer/article/1378123)

Dec 25, 2018 - 微信小程序scroll-view隐藏滚动条. 渔父歌. 将下面代码添加到wxss文件中去： ::-webkit-scrollbar{ width: 0; height: 0; color: transparent; }. 更多关于 ...

[微信小程序scroll-view隐藏滚动条方法\| 吕神的自我修养](http://www.lrxin.com/archives-1299.html)

Aug 12, 2018 - 2018.08.12. 微信小程序scroll-view隐藏滚动条方法. 在wxss里加入以下代码：. ::-webkit-scrollbar{; width: 0;; height: 0;; color: transparent;; }.

[如何给小程序列表添加滚动条-百度经验](https://jingyan.baidu.com/article/4b52d702da0483fc5c774b00.html)

Mar 13, 2018 - 如何给小程序列表添加滚动条,在用小程序进行开发的时候，经常会布局展示一个列表。但是当列表数据很多的时候，我们希望的是对列表进行滚动， ...

[微信小程序超出内容滚动条显示案例- 知乎](https://zhuanlan.zhihu.com/p/31371040)

Nov 23, 2017 - 微信小程序超出内容滚动条显示案例 ... 想薅微信社交流量羊毛的，慎重考虑。6月份小程序开发完，我们提交的“问答”类目需要《增值电信业务…

[聊天界面如何实现始终保持滚动条在底部· Issue \#7 · wepyjs ...](https://github.com/wepyjs/wepy-wechat-demo/issues/7)

Feb 1, 2017 - 在实时聊天的时候，我们一般都希望最新的消息在我们可视区域的最底部，那么在小程序中如果需要实现这样的功能该怎么做呢？我运行了 ...

[scroll-view可滚动视图区域-微信小程序社区\|微信小程序俱乐部 ...](http://www.wxappclub.com/doc/1-3)

使用竖向滚动时，需要给 一个固定高度，通过WXSS 设置height，否则无法滚动。 ... setData\({; toView: order\[i + 1\]; }\); break; }; }; },; //通过设置滚动条位置实现画面滚动 ...

[支付宝小程序组件可滚动视图区域·Scroll View - W3Cschool](https://www.w3cschool.cn/aliminiapp/aliminiapp-lswu28rk.html)

支付宝小程序组件可滚动视图区域·Scroll View. 支付宝小程序可滚动 ... scroll-with-animation, Boolean, false, 在设置滚动条位置时使用动画过渡. onScrollToUpper ...

[如何实现小程序滚动条操作及导航组件使用教程？\_微信开发 ...](https://www.cgtblog.com/wx/3614.html)

Aug 9, 2019 - 由于导航栏需要监听页面的滚动事件，在小程序中，很容易出现性能问题，需要时刻注意滚动监听中setData 的次数。今天春哥团队技术虎子将和大家 ...

[微信小程序scroll-view隐藏滚动条方法\_慕课手记 - 慕课网](https://www.imooc.com/article/284580)

微信小程序scroll-view隐藏滚动条方法. 2019.04.07 09:41 1054浏览. 在wxss里加入以下代码：. ::-webkit-scrollbar{. width: 0;. height: 0;. color: transparent;. }.

[微信小程序scroll-view隐藏滚动条方法-M主题小程序站,社区小 ...](http://mzhuti.com/course/75.html)

Apr 9, 2019 - 不管是移动还是小程序我们在开发的时候总会遇到滚动条的问题，今天我也遇到了，加入以下代码即可解决。 在wxss里加入以下代码： ...

[微信小程序scroll-view仿拼多多横向滑动滚动条\_javascript技巧 ...](https://www.jb51.net/article/143782.htm)

Jul 14, 2018 - 这篇文章主要为大家详细介绍了微信小程序scroll-view仿拼多多横向滑动滚动条，具有一定的参考价值，感兴趣的小伙伴们可以参考一下.

[微信小程序scroll-view 怎么实现实时加载记录，自动往下拉滚动 ...](https://cnodejs.org/topic/5975b9908f0313ff0d08d766)

微信小程序scroll-view 怎么实现实时加载记录，自动往下拉滚动条. 发布于2 年前 作者moxiaobei2 6244 次浏览 来自问答. 类聊天界面，发一条记录之后，界面加载 ...

[微信小程序设置滚动条\| Numen.fan](https://fanjiajia.cn/2019/07/02/wxxcx/flx1/)

Jul 2, 2019 - 前言又很久没有写东西了，上周开始将一个APP和一个网站的内容整合到微信小程序中，到这会儿终于搞得快结束了，才发现为啥我的小程序滚动 ...

[scroll-view 可滚动视图区域– 开放平台- 小程序 - 支付宝](https://docs.alipay.com/mini/component/scroll-view)

Sep 9, 2019 - 在滚动scroll-view 时会阻止页面回弹，所以在scroll-view 中滚动，无法 ... scroll-with-animation, Boolean, false, 在设置滚动条位置时使用动画过渡.

[ScrollView](https://nervjs.github.io/taro/docs/components/viewContainer/scroll-view.html)

scrollWithAnimation, Boolean, false, 在设置滚动条位置时使用动画过渡 ... 属性, 微信小程序, H5, ReactNative, 百度小程序, 支付宝小程序, 字节跳动小程序 ...

[微信小程序去掉默认的滚动条 - Excel技巧](http://www.excel-jiqiao.com/subject/pwybdqtx.html)

Jan 17, 2019 - 微信小程序去掉默认的滚动条; 微信小程序scroll-view隐藏滚动条方法; 滚动条默认样式修改; 微信小程序scroll-view隐藏滚动条详解; 监听滚动条 ...

[滚动视图\(小程序\) · 牛刀云-文档中心-小程序开发,微信小程序 ...](https://www.newdao.net/docs/xiao-cheng-xu-bu-ju-zu-4ef6-ycw/gun-dong-shi-tu.html)

竖滚动条位置, Number, 设置竖向滚动条位置. 横滚动条位置, Number, 设置横向滚动条位置. 滚动指定元素, ElementID, 值应为某子元素id（id不能以数字开头）。

[scroll-view可滚动视图区域。 · 小程序· 看云](https://www.kancloud.cn/pimingzhao/small-program/820078)

scroll-top, Number, 设置竖向滚动条位置. scroll-left, Number, 设置横向滚动条位置. scroll-into-view, String, 值应为某子元素id（id不能以数字开头）。设置哪个方向可 ...

[标签微信小程序下的文章- 董俊辉的前端博客](http://www.dongjunhui.com/tag/%E5%BE%AE%E4%BF%A1%E5%B0%8F%E7%A8%8B%E5%BA%8F/)

微信小程序中，隐藏滚动条的方法，其实就是通用的css： ::-webkit-scrollbar { width: 0; height: 0; color: transparent; }. 但是在小程序中，它只能隐藏 scroll-view 组件的 ...

[3种方法实现CSS隐藏滚动条并可以滚动内容-前端开发博客](http://caibaojian.com/hide-scrollbar.html)

Mar 17, 2018 - 隐藏滚动条的同时还需要支持滚动，我们经常在前端开发中遇到这种情况，最容易想到的是加一个iscroll插件，但其实现在CSS也可以实现这个功能， ...

[微信天气预报小程序实战开发\#012 - UI 布局开发之去除滚动 ...](https://www.bilibili.com/video/av54591599/)

微信天气预报小程序实战开发\#012 - UI 布局开发之去除滚动列表滚动条课程源码地址: https ...

[小程序组件若想监听滚动条怎么办？_百度小程序开发_有一云问答](https://ask.qque.com/community/ts1649/)

小程序组件若想监听滚动条怎么办？ 美国神婆星座网 2019-07-24 19:29:52. 微信小程序平台微信小程序怎么开发电商小程序. onPageScroll 只能在page里使用。

[微信小程序开发入门与实践](https://books.google.com/books?id=2wBLDwAAQBAJ&pg=PT458&lpg=PT458&dq=%E5%B0%8F%E7%A8%8B%E5%BA%8F+%E6%BB%9A%E5%8A%A8%E6%9D%A1&source=bl&ots=ymOpWend5d&sig=ACfU3U2Sm5-ob7QrCY0qeeHB-Nf-4KkqUg&hl=en&sa=X&ved=2ahUKEwiDsMqVydzkAhWRPXAKHVxlAMg4HhDoATAFegQICBAB)

bindscrolltoupper 事件,滚动到顶部/左边时会触发 scrolltoupper事件。 ... 在dom结构的Web网页中,使用JavaScript操作滚动条是非常简 单的,但在小程序中没有办法 ...

[微信小程序隐藏滚动条- 台部落](https://www.twblogs.net/a/5b8d44382b717718833cb239/zh-cn)

微信小程序隐藏滚动条. 原創 IT-Sun丿 2018-09-03 22:24. &lt;/scroll-view&gt;. 隐藏滚动栏 .y{ background: ...

[微信小程序开发详解](https://books.google.com/books?id=oARLDwAAQBAJ&pg=PT83&lpg=PT83&dq=%E5%B0%8F%E7%A8%8B%E5%BA%8F+%E6%BB%9A%E5%8A%A8%E6%9D%A1&source=bl&ots=6A1sGGEuLE&sig=ACfU3U1VQNmIpPUA_lxr5e2YTT-YOuyXGQ&hl=en&sa=X&ved=2ahUKEwiDsMqVydzkAhWRPXAKHVxlAMg4HhDoATAHegQICRAB)

下面介绍小程序的组件。 4.1.1 视图容器 图4-1 2.scroll-view scroll-view类似于CSS语法中的overflow:scroll,规定了元素溢出容器时滚动条的显示,如图4-2所示。

[\[51 小程序\]scroll-view 滑动到底部--微信小程序教程- 微信小 ...](http://html51.com/info-9854-1/)

Mar 29, 2018 - 微信小程序开发scroll-view的padding和margin是不是搞反了. 微信小 ... 小程序在IOS下scroll-view 不显示滚动条，安卓下是正常的，求解. 小程序 ...

