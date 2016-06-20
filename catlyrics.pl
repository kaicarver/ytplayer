# produce JSON lyrics array with Chinese, pinyin, translation, and rough time info
use 5.10.0;

@hanzi = split /\n/, <<END;
起飛

等待風起 享受飛翔的澎湃
迫不及待探出頭來
想像俯瞰大地的痛快

時光倒轉 溫習曾經的對白
過去回憶一字排開
相信明天一定更精彩

突然之間 吹來一陣勇氣
我要征服地心引力

我們是天空的孩子
要飛出自己的故事
我的夢想 我的堅持
風中的歌我要再唱一次
我們是天空的孩子
想駕馭雲海的放肆
昨天的淚 明日的傷
彩虹就在前方
冒險現在開始

堅強信念 熱血面對全世界
不論白天不論黑夜
不留遺憾的起飛向前

如果有天 忘了夢想的情節
我會試著懷抱從前
找回故事萌芽的起點

突然之間 吹來一陣勇氣
我要征服地心引力

我們是天空的孩子
要飛出自己的故事
我的夢想 我的堅持
風中的歌我要再唱一次
我們是天空的孩子
想駕馭雲海的放肆
昨天的淚 明日的傷
彩虹就在前方
冒險現在開始

我們是天空的孩子
要飛出自己的故事
我的夢想 我的堅持
風中的歌我要再唱一次
我們是天空的孩子
想駕馭雲海的放肆
昨天的淚 明日的傷
彩虹就在前方
冒險現在開始

我們是天空的孩子
要飛出自己的故事
我的夢想 我的堅持
風中的歌我要再唱一次
我們是天空的孩子
想駕馭雲海的放肆
昨天的淚 明日的傷
彩虹就在前方
冒險現在開始

昨天的淚 明日的傷
彩虹就在前方
冒險現在開始
END

@pinyin = split /\n/, <<END;
Qǐfēi

děngdài fēng qǐ xiǎngshòu fēixiáng de péngpài
pòbùjídài tàn chū tóu lái
xiǎngxiàng fǔkàn dàdì de tòngkuài

shíguāng dàozhuǎn wēnxí céngjīng de duìbái
guòqù huíyì yī zì pái kāi
xiāngxìn míngtiān yīdìng gēng jīngcǎi

túrán zhī jiān chuī lái yīzhèn yǒngqì
wǒ yào zhēngfú dì xīn yǐnlì

wǒmen shì tiānkōng de háizi
yào fēi chū zìjǐ de gùshì
wǒ de mèngxiǎng wǒ de jiānchí
fēng zhōng de gē wǒ yào zài chàng yīcì
wǒmen shì tiānkōng de háizi
xiǎng jiàyù yúnhǎi dì fàngsì
zuótiān de lèi míngrì de shāng
cǎihóng jiù zài qiánfāng
màoxiǎn xiànzài kāishǐ

jiānqiáng xìnniàn rèxuè miàn duì quán shìjiè
bùlùn báitiān bùlùn hēiyè
bù liú yíhàn de qǐfēi xiàng qián

rúguǒ yǒu tiān wàngle mèngxiǎng de qíngjié
wǒ huìshìzhe huáibào cóngqián
zhǎo huí gùshì méngyá de qǐdiǎn

túrán zhī jiān chuī lái yīzhèn yǒngqì
wǒ yào zhēngfú dì xīn yǐnlì

wǒmen shì tiānkōng de háizi
yào fēi chū zìjǐ de gùshì
wǒ de mèngxiǎng wǒ de jiānchí
fēng zhōng de gē wǒ yào zài chàng yīcì
wǒmen shì tiānkōng de háizi
xiǎng jiàyù yúnhǎi dì fàngsì
zuótiān de lèi míngrì de shāng
cǎihóng jiù zài qiánfāng
màoxiǎn xiànzài kāishǐ

wǒmen shì tiānkōng de háizi
yào fēi chū zìjǐ de gùshì
wǒ de mèngxiǎng wǒ de jiānchí
fēng zhōng de gē wǒ yào zài chàng yīcì
wǒmen shì tiānkōng de háizi
xiǎng jiàyù yúnhǎi dì fàngsì
zuótiān de lèi míngrì de shāng
cǎihóng jiù zài qiánfāng
màoxiǎn xiànzài kāishǐ

wǒmen shì tiānkōng de háizi
yào fēi chū zìjǐ de gùshì
wǒ de mèngxiǎng wǒ de jiānchí
fēng zhōng de gē wǒ yào zài chàng yīcì
wǒmen shì tiānkōng de háizi
xiǎng jiàyù yúnhǎi dì fàngsì
zuótiān de lèi míngrì de shāng
cǎihóng jiù zài qiánfāng
màoxiǎn xiànzài kāishǐ

zuótiān de lèi míngrì de shāng
cǎihóng jiù zài qiánfāng
màoxiǎn xiànzài kāishǐ
END

@translation = split /\n/, <<END;
Take off

Waiting for the wind to enjoy flying surging
I can not wait to head out
Imagine overlooking the happy earth

Time reversal review once dialogue
Lined up past memories
I believe that tomorrow will certainly be more exciting

A sudden gust of courage
I want to conquer gravity

We are the children of the sky
To fly their own stories
I stick my dreams
Wind song I want to sing again
We are the children of the sky
I want to ride the clouds presumptuous
Yesterday's tears tomorrow injury
Rainbow in front
Adventure begins now

Strong belief blood to face the world
Day and night regardless of whether
Takeoff forward without regret

If you dream of one day forget the plot
I'll try to embrace the past
Start sprouting back story

A sudden gust of courage
I want to conquer gravity

We are the children of the sky
To fly their own stories
I stick my dreams
Wind song I want to sing again
We are the children of the sky
I want to ride the clouds presumptuous
Yesterday's tears tomorrow injury
Rainbow in front
Adventure begins now

We are the children of the sky
To fly their own stories
I stick my dreams
Wind song I want to sing again
We are the children of the sky
I want to ride the clouds presumptuous
Yesterday's tears tomorrow injury
Rainbow in front
Adventure begins now

We are the children of the sky
To fly their own stories
I stick my dreams
Wind song I want to sing again
We are the children of the sky
I want to ride the clouds presumptuous
Yesterday's tears tomorrow injury
Rainbow in front
Adventure begins now

Yesterday's tears tomorrow injury
Rainbow in front
Adventure begins now
END

$start = '';
$t_start = 27; # 00:00:27
$t_end = 268;  # 00:04:28
$inc = ($t_end - $t_start) / @hanzi; # roughly each lyric takes same time
$t = $t_start;
$m = 0;
for (0..@hanzi-1) {
  $s = int($t) % 60;
  $m = int($t / 60);
  $start .= sprintf "00:0%d:%02d\n", $m, $s;
  $t += $inc;
}

@start = split /\n/, <<END;
00:00:00
$start
END

for (0..@hanzi) {
  say qq|{ start: "$start[$_]",|;
  say qq|  hanzi: "$hanzi[$_]",|;
  say qq|  pinyin: "$pinyin[$_]",|;
  say qq|  translation: "$translation[$_]" },|;
}
