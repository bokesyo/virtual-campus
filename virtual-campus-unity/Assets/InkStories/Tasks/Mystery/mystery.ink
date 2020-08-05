//mission name: mystery man
#after: power cut

#name: 神秘人
#description: 停电事件解决了，但在找钥匙的过程中，你见到了一个奇怪的人。还手电筒时，又似乎出现了奇怪的情况。你想起了那个戴着面具的怪人，<color=red>行政楼后山</color>，你决定去探索一下。

#enableNPC: mystery
// === func_start ===
// #collidetrigger: mystery_collider
// 你突然觉得四处有些变化……
// -
// +n
// #enableNPC: mystery
// 突然，眼前出现了一个人。你被吓了一跳。
// -
// +n
// ta戴着奇怪的面具，你并不认识这个人，但是总觉得ta身上有一股莫名的熟悉感。
// -
// +n
// 这个突然出现的突兀存在，就这样静静地站在那里。似乎很想让你过去，又似乎并不在意你是否// 会过去。
// -
// +n
// ->DONE

=== func_talk_to_mystery ===
#override
#collidetrigger: mystery
*你是……？
……
-
*额……怎么不说话？
……
-
*是这里的学生吗？
不是。
-
*<color=\#808080>（声音好低沉）</color>
它……来过了吗？
-
*它？是指什么？
没来吗……那看来我可以走了……
-
*<color=\#808080>（你想看清前面是谁，准备拿出手电筒）</color>
-
*<color=\#808080>（黑色羽毛顺带着掉了出来）</color>
#delitem: 黑色羽毛
<color=\#808080>（神秘人看到了羽毛）</color>
这是……你在这里发现的……？
-
+n
啊……那看来我没来错……
-
*……能解释一下你到底是谁吗……
去收集徽章。
-
*徽章？……
得到所有的徽章，来找我，我会告诉你。
-
*<color=\#808080>（真是一个奇怪的人）</color>
<color=\#808080>（神秘人捡起了羽毛，收了起来）</color>
-
*（我的羽毛……算了给你吧）
-
+n
<color=\#808080>（神秘人并没有再说什么）</color>
-
*<color=\#808080>（或许……我该去找<color=red>安保处</color>问问？）</color>
->DONE

=== func_mystery1 ===
#after: func_talk_to_mystery
#override
#collidetrigger: mystery
+n
<color=\#808080>（神秘人并没有再说什么）</color>
-
*<color=\#808080>（或许……我该去找<color=red>安保处</color>问问？）</color>
->DONE

=== func_talk_to_guard ===
#attach: security_guard
#after: func_talk_to_mystery
*保安大哥，刚刚我看见了一个怪人
怪人！哪里？有伤着你吗？
-
*额……倒也没有，但是行为举止都挺奇怪的……
在哪个位置？让我看看监控，得提前留个心眼。
-
*（告诉安保大哥位置）
好嘞，让我看看……
-
+n
诶？奇怪啊……这里没有人啊？
-
*那再往回调调？
诶？奇怪啊……刚刚这里只有你一个人啊？
-
+n
你看，你掏出手电筒之后，似乎就一个人站在那里，像是呆掉了一样。
-
+n
同学，是不是学习压力太大了？你不是刚进入学校嘛，大一新生，别有太大压力……
-
*<color=\#808080>（怎么回事，难不成闹鬼了？灵异事件？）</color>
听说学生活动中心有心理疏导，你要不……去体验一下？咱们学校老师都很专业的……
-
*<color=\#808080>（我刚刚真的在说话啊，而且羽毛也确实不见了）</color>
或者是去健身房跑跑步，解压放松，都挺好的……
-
*<color=\#808080>（他提到了徽章……难道是要我收集完所有徽章？）</color>
总之，不仅身体安全要注意，心理安全也要搞好啊……
-
*<color=\#808080>（算了，先回去找找看，ta还在不在那里）</color>
同学？
-
*啊，好的好的，谢谢保安大哥！
->DONE

=== func_return_to_mystery ===
#override
#collidetrigger: mystery
#after: func_talk_to_guard
*……
……
-
*你是鬼吗？
不是。
-
*难道……是幽灵？
……有什么区别。
-
*鬼一般是东方鬼，幽灵一般是西方鬼
……我是人。
-
*那为什么摄像头拍不到你？
不仅摄像头拍不到，除了你以外，其他人也看不见我。
-
*那声音呢？
也听不到。
-
*那味道呢？
……也闻不到。
-
*那……
大部分物理法则都不起作用。
-
*那……
因此我不会时时刻刻都在这里。也不会时时刻刻都能和你沟通。
-
*那……
让我说完。
-
*……
记得我刚开始说的吗，徽章。你现在要做的最重要的事，就是收集徽章。
-
+n
黑天鹅已经来过这里了。那么你现在所需要做的，就是去找到所有徽章就可以了。
-
*那……
这些徽章不是让你玩的。
-
+n
不会让你跑得快，也不会让你跳得高。
-
+n
但是他们很重要。
-
*为什么重要？
……你现在还不能知道，你所拥有的徽章太少了。
-
+n
得到全部的徽章，我才能把一切告诉你。
-
+n
刚刚我给你说过了，对我来说部分物理法则不适用。
-
+n
但同时，我也不能过分与这个世界产生互动。
-
+n
说话也算互动。移动也算互动。存在也算互动。
-
+n
我会时时刻刻都在这里，但不能时时刻刻都说话。
-
+n
因此以后，只有你在出示徽章的时候我才会说话。而其他时候我都会闭嘴。
-
+n
……
-
*现在就开始了？
……
-
+n
是的。
-
*还是会说话的嘛……
->DONE

=== func_mystery_idling ===
#after: func_return_to_mystery
#override
#collidetrigger: mystery
+n
<color=\#808080>（神秘人很沉默）</color>
-
+<color=\#808080>（看起来只有看到徽章才会说话了……）</color>
#notfinished
->DONE


VAR badge = 0

=== func_kitten ===
#require_item: 猫咪徽章
#after: func_return_to_mystery
#attach: mystery
*我拿到猫咪徽章了
是嘛。
-
+n
……
-
->badge_info->
+n
哦，是<color=\#800080><b>猫咪徽章</color></b>啊。
-
+n 
那两只小猫现在还好嘛。
-
*还不错
那就好……
-
*你也和它们认识？
是啊，不然怎么把徽章给的他。
-
*你也有翻译器？
是啊……这个翻译器很稀缺吗？
-
+n
……不管怎么样。
+n
既然他们给了你这个徽章，就证明你已经得到了他们的认可了。
-
+n
不要浪费别人的认可哦，哪怕是猫咪也是一样的。
-
+n
好好珍惜和猫咪的友谊吧。
-
*怎么开始说教了……
哈哈，烦了嘛……好吧，我确实也得少说几句。
-
+n
……
-
{~badge == 5: ->func_ending}
+n
好了，不聊天了。
-
+n
你也该去收集下一个徽章了。
-
*知道了
->DONE

=== func_academic ===
#require_item: 学术徽章
#after: func_return_to_mystery
#attach: mystery
*我拿到学术徽章了
是嘛。
-
+n
->badge_info->
+n
哦，是<color=\#800080><b>学术徽章</color></b>啊……
-
+n
那些题，都不是很容易吧。
-
*那些题都是你出的？
准确地说，是我收集的。
-
+n
其实真正的出题者，正像我让你们院长说的一样，是在这个学校的各种各样的人。
-
+n
毕竟我还要花费时间给你找地方放徽章，哪有时间出题。
-
*<color=\#808080>（还有些辛苦……）</color>
你全部做出来这么多题，应该也花费了不少时间和精力吧。
-
*……确实
不过……这些题你真的，都是靠自己写出来的吗？
-
*……
哈哈，别紧张，我是结果主义者。
-
+n
只要你做出来了，拿到了徽章，不管你用了什么方法，不管你是百度还是问了学长学姐，我都不会过问的。
-
+n
……
-
{~badge == 5: ->func_ending}
+n
好了，不聊天了。
-
+n
你也该去收集下一个徽章了。
->END


=== func_empathy ===
#require_item: 同理心徽章
#after: func_return_to_mystery
#attach: mystery
*我拿到同理心徽章了
是嘛。
-
+n
……
-
->badge_info->
+n
哦？是<color=\#800080><b>同理心徽章</b></color>啊……
-
+n
这应该是最没有挑战性的徽章了吧。全程你只需要和不同的人对话就好了。
-
+n
不过在某种意义上，这也是最难真正拥有的徽章。正因为获得它不需要任何考验。因此才是对你最大的考验。
-
+n
你是否在这几次对话中，认真倾听了他们的故事呢？或者是心不在焉，完全没有在意呢？
-
*……
哼哼，不过无所谓，我也不是很在乎那些鸡汤。无论怎样，你拿到了徽章。
-
+n
至于你是否真的有配得上这枚徽章的同理心，那就只有你自己知道了。
-
+n
……
-
{~badge == 5: ->func_ending}
+n
好了，不聊天了。
-
+n
你也该去收集下一个徽章了。
->END


// === func_parkour ===
// TODO: #require: 跑酷徽章
// #attach: mystery
// *我拿到<color=\#800080><b>跑酷徽章</b></color>了
// 是嘛。
// -
// +n
// ……
// -
// ->badge_info->
// +n
// 哦？是<color=\#800080><b>跑酷徽章</b></color>啊……
// -
// +n
// 跑酷的时候，那些向导都会莫名其妙变得有些中二对吧。
// -
// +n
// 哈哈，哪怕是成年了，也依然童心未泯。这样也不错呢。
// -
// +n
// 这枚徽章，你应该是完全依靠自己实力拿到的。干得不错。
// -
// +n
// ……
// -
// {~badge == 5: ->func_ending}
// +n
// 好了，不聊天了。
// -
// +n
// 你也该去收集下一个徽章了。
// ->END


=== func_photo ===
#require_item: 摄影徽章
#attach: mystery
*我拿到<color=\#800080><b>摄影徽章</b></color>了
是嘛。
-
+n
……
-
->badge_info->
+n
哦？是<color=\#800080><b>摄影徽章</b></color>啊……
-
+n
怎么样，在拍完那么多照片之后，是不是对学校熟悉了很多？
-
+n
摄影的乐趣就在于发现美。我们的校园，是不是变得美丽了许多？
-
*那个“老师”是你吗？
不然呢……其他人谁还有时间教别人摄影……
-
+n
不过偶尔当当老师，也蛮不错的……
-
-
+n
……
-
{~badge == 5: ->func_ending}
+n
好了，不聊天了。
-
+n
你也该去收集下一个徽章了。
->END

//这里的对话只和徽章数目有关
=== badge_info ===
~badge = badge+1
#upd_info
{badge:
    -1: ->badge1->
    -2: ->badge2->
    -3: ->badge3->
    -4: ->badge4->
    // -5: ->badge5->
    -else: ->DONE
}

=badge1
+n
这是你拿到的第一个徽章。
-
+n
感觉怎么样。是不是也没什么难的？
-
*……
怎么了？
-
*你就是那个戴面具的怪人吗
是我……
-
+n
是我又怎样？
-
*那为什么要让我收集你散布出去的徽章？
一切的发生都是必要的……
-
+n
我也不是那么无聊的人，自己把徽章给来给去，最后让别人去收集。这听起来不是有点蠢吗？
-
+n
我可不会那么蠢。
-
+n
我可不会那么蠢。不过……
-
+n
我可不会那么蠢。不过……可能某种程度上来说，我就是这么蠢……
-
*奇怪的发言……
别管那些了。
-
*……
让我看看你的徽章……
-
->->

=badge2
+n 
这就是你的第二个徽章了。
-
+n
怎么样？是不是轻车熟路了很多？
-
*……
看起来你似乎不想回答呢，是因为收集徽章过于疲惫了吗？
-
+n
哈，无所谓吧，反正你只要认认真真收集徽章，我会按照约定告诉你一切的。
-
+n
接下来，让我们看看你的第二枚徽章……
-
->->

=badge3
+n 
这就是你的第三个徽章了。
-
+n
告诉你一个好消息，你已经进度过半了。
-
+n
徽章一共只有四个，你已经收集了三个了。
-
*这个我知道……
哈哈，我当然知道你知道。
-
+n
不过……你是怎么知道的呢？除了我以外，应该没有人跟你提起过这个信息吧……
-
*……
不愿意回答吗，好吧。
-
+n
不管怎么样，让我看看你第三枚徽章……
-
->->

// =badge4
// +n 
// 这就是你的第四个徽章了。
// -
// +n
// 不知道你记不记得，这个学校里一共有五枚徽章。
// -
// +n
// 那么拿到第四枚之后，你就只剩下一个了。
// -
// +n
// 漫长的收集就要接近尾声了，期待我许诺的“真相”吗？
// -
// +n
// 期待也好，不期待也好。
// -
// +n
// 在那之前，让我看看你的第四枚徽章……
// -
// ->->

=badge4
+n 
这就是你的最后一个徽章了。
-
+n
很好，你已经收集完所有的徽章了。
-
+n
准备好迎接最后的“真相”了吗？
-
+n
哈哈，是不是听起来挺中二的。
-
+n
或许是因为任务终于要结束了……我也轻松了许多……
-
+n
或许等一切结束了，我就可以好好休息一下了吧。
-
+n
不过在那之前，让我看看你的这枚最后的徽章……
-
->->

=== func_ending ===
*徽章收集完了
哦对了，我都差点忘掉了。
-
+n
嗯，很好，你已经收集完所有徽章了。
-
*所以………
不要着急嘛，你是想要得知所谓的真相嘛？
-
+n
还记得第一次见面，你问我我是谁吗？
-
+n
我就是要告诉你这个问题的答案，仅此而已。
-
+n
其实……也并不是什么大不了的答案。
-
+n
<color=\#808080>（说着，神秘人低下头摘下了面具）</color>
-
+n
不过说来话长了……
-
+n
在那之前，先正式和你打个招呼吧。
-
+n
<color=\#808080>（神秘人抬起了头，看向了你）</color>
……
-
+n
<color=\#808080>（你也抬起头，看向了ta）</color>
……
-
+n
<color=\#808080>（双目对视，你似乎有些犹豫）</color>
……
-
+n
<color=\#808080>（双目对视，你似乎有些犹豫、有些迟疑、）</color>
……
-
+n
<color=\#808080>（双目对视，你似乎有些犹豫、有些迟疑、进而有些震惊。）</color>
……
-
+n
<color=\#808080>（神秘人脸上并没有什么波澜，甚至藏着一丝笑意。）</color>
……
-
+n
我还是第一次要这么问候别人，感觉有些奇怪。
-
+n
不过礼仪还是要做到的。
-
+n
你好啊。
-
+n
我自己。
-
+n
#endstory
->DONE
