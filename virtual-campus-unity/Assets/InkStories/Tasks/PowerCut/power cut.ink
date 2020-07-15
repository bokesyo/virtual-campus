// mission name: power cut
#require: blackswan

->start

=== start ===
#attach: PM_staff
*停电了吗
似乎是这样的，真的不好意思，同学，我们会马上处理好的。
-
+n
啊呀……
-
*怎么了
我们的<color=blue>发电机钥匙<color>好像找不到了，丢到哪里去了……
-
+n
不会是丢到了<color=blue>外面的草丛<color>里了吧……我今天就只去过那里了。
-
+n
但是我没法离开啊，这里需要有一个人照看。
-
*要不我来帮你找吧
真的吗，那谢谢你了！
-
+n
不过你在黑暗中可能看不清，你的手机上有手电筒吗？
-
*我就是因为停电手机没法充电才来的……
那怎么办……对了，你去找宿管阿姨问问，她肯定有手电筒！
-
*好的
->DONE

=== dialogue_with_dorm_admin ===
#attach: dorm_admin
*阿姨好
你好啊，这怎么突然停电了。
-
*我来借个东西
要啥？我这里有急救包、针线包、电工包……
-
*手电筒
好嘞，这里有夜光的，头戴的，高亮的……
-
*就普通的就行……
那就这个吧，支持各种功能，你自己拿着玩玩吧。不过拿之前，你得在这登记一下，用完别忘了还给我啊。
-
*谢谢
#enable: engine_key
//玩家的背包里出现手电筒
->DONE

=== founded ===
//玩家在草丛中寻找钥匙
#collidetrigger: engine_key
+n
你找到了钥匙。身前似乎有声音，你抬头望去。
-
+n 
身前的草丛里，似乎还有一个人打着手电筒，但是逆着光，你只能看到ta的背影。
-
+n
似乎是因为注意到了你，他迅速关掉了手电筒。
-
+n
你想要接近，但是他迅速跑掉了，消失在黑暗之中。
-
+n
你耸了耸肩， 没有想太多，或许只是一个普通的同学呢。
-
+n
你把钥匙放到了兜里。你准备回去把它交给物业人员。
-
TODO：获取物品的tag
#disable: engine_key
->DONE

=== returning ===
#after:start
#attach: PM_staff
*给，这是钥匙
谢谢，太感谢了！
-
+n 
那么，现在就可以让技术人员去处理了，等会就可以来电了。
-
->DONE

=== ending ===
#attach: dorm_admin
*我来还手电筒了，谢谢阿姨啦
哦？你刚刚来还过了啊。
-
*什么
对啊，你刚刚匆匆忙忙跑过来，慌慌张张把手电筒往我这一丢，登记完就走了。
-
+n
你看，这是你填的登记表啊。
-
*阅读登记表
<color=grey>（确实是我的笔迹啊……）</color>
-
+n
不过，你拿过来的这个手电筒，确实和之前你还过的哪个挺像的……怎么会有两个一样的手电筒呢……？
-
+n
咦，不对，你现在新还的这个手电筒，虽然外形上确实很像，但是确实不是你之前找我借的。
-
+n
因为这个手电筒之前被某个同学借出去摔了一下，导致这个手电筒柄下面有裂痕的……
-
+n
可是，你现在给我的这个完全是全新的啊。
-
*……
额，同学，想为学校做贡献的心确实挺好的。
-
+n
不过你捐个手电筒确实有点……而且还是全新的……
-
+n
还这么拐弯抹角的……是怕不好意思嘛，没事的同学，虽然我们是新学校，百废待兴，但不至于连一个手电筒都缺的嘛。
-
+n
喏，你自己的手电筒你就收好，好好保管着吧。
-
*……
#endstory
->DONE
