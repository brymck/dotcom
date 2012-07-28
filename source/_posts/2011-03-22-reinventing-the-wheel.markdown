---
layout: post
title: "Reinventing the Wheel"
date: 2011-03-22 02:28
comments: true
categories: japan, linguistics
---

This is just a little post about an alternative system for writing Japanese that
I came up with in my spare time, mostly to prove to myself that a language with
thousands of characters and a tiny handful of syllables could be reproduced
faithfully and accurately. Rather than describing every last detail, let's just
say it uses the same basic shape to represent each consonant and the same accent
mark for each vowel. I made an [online proof-of-concept IME](/apps/cun) to
illustrate how it works.

Try typing in things like _[hiragana](/apps/cun?romaji=hiragana)_ or
_[DAINIPPONKOKU](/apps/cun?romaji=DAINIPPONKOKU)_. In the latter, the caps
implies an _on'yomi [kanji][kanji]_ reading, which cun forces to be one symbol
apiece to further enhance efficiency. That is, for all Chinese words, each
kanji, regardless of its reading, can be replaced by a single letter.

### Examples

{% img /images/cun_name.png %}

[My name](/cun?romaji=buRAIan%20RII%20makkeruBII) (ブライアン・リー・マッケルビー _Buraian Rī Makkerubī_)

{% img /images/yukiguni.png %}

[The opening lines of Yasunari Kawabata's Snow Country](/apps/cun?romaji=kunizakai%20no%20nagai%20tonneru%20o%20nukeru%20to%20yukiguni%20deatta.)
(国境の長いトンネルを抜けると雪国であった。 _Kunizakai no nagai tonneru o nukeru                     
to yukiguni de atta._)

### Some Notes on Syllables in Japanese

Japanese syllables are broken into moras. A mora is like a unit of time, such
that a short syllable contains one mora and a long syllable contains two
moras. For example, the word _Nippon_ 日本 ("Japan") can be broken into two  
syllables (Nip + pon) and four moras (Ni + p + po + n).

Romaji | Japanese | Definition              | Moras     | Count
-------|----------|-------------------------|-----------|------:
koko   | ここ     | here                    | ko ko     |     2
kokko  | 国庫     | national treasury       | ko k ko   |     3
kōko   | 公庫     | public loan corporation | ko o ko   |     3
kōkō   | 高校     | high school             | ko o ko o |     4
konkon | コンコン | knocking sound          | ko n ko n |     4

We can neatly group these moras together in a table. Note that some consonants
undergo changes in a few places (t + i = chi, t + u = tsu), and that some
entries in the "d" row were deleted because they are pronounced the same as
those in the "z" row:

   | a  | i   | u   | e  | o  | ya  | yu  | yo
---|----|-----|-----|----|----|-----|-----|----
-- | a  | i   | u   | e  | o  | ya  | yu  | yo
k  | ka | ki  | ku  | ke | ko | kya | kyu | kyo
g  | ga | gi  | gu  | ge | go | gya | gyu | gyo
s  | sa | shi | su  | se | so | sha | shu | sho
z  | za | ji  | zu  | ze | zo | ja  | ju  | jo
t  | ta | chi | tsu | te | to | cha | chu | cho
d  | da | --  | --  | de | do | --  | --  | --
n  | na | ni  | nu  | ne | no | nya | nyu | nyo
m  | ma | mi  | mu  | me | mo | mya | myu | myo
h  | ha | hi  | fu  | he | ho | hya | hyu | hyo
b  | ba | bi  | bu  | be | bo | bya | byu | byo
p  | pa | pi  | pu  | pe | po | pya | pyu | pyo
r  | ra | ri  | ru  | re | ro | rya | ryu | ryo

**Others:** wa, n, [geminate][geminate], long vowel

In cun, the above is represented thusly:

[{% img /images/cun_main.png %}](/images/cun.png)

Click the above image to see the _entire_ alphabet and almost all possible
symbols. What should stand out is how organized it is in comparison to
_[hiragana][hiragana]_.

To make a consonant geminate, you repeat the consonant part of the letter in
the same amount of space, so for example ıc (あか _aka_) becomes ıε (あっか
_akka_). To nasalize a vowel, you add a horizontal line, such that ı (あ _a_) 
becomes ī (あん _an_). Long vowels depend on which vowel it is, but you can
generally see that in the [IME](/apps/cun?romaji=ka%20kaa%20ki%20kii%20ku%20kuu%20ke%20kee%20ko%20koo).

But in any case, that's 103 moras (13 rows × 8 columns - 5 duplicates +
4 special moras) necessary to describe every distinct unit of time in
Japanese. Yet the Japanese are expected to learn 1,006 kanji in primary
school and another 939 in secondary school. By contrast, the basic unit in
English is a syllable, of which approximately 5,000 see actual use (Duanmu
205). Despite the complexities of English, however, only around 13% of words
possess pronunciations different from their spellings. And of course, there's no
reason someone couldn't use kanji for disambiguation, as they do in Korean (and
increasingly sparingly, as people can usually understand from context).

Anyway, I wouldn't propose this is as a spelling reform, but it's nonetheless
interesting how inertia can outweigh a more logical approach.

1. Tamaoka, Katsuo and Makioka, Shoga. _"Frequency of Occurrence
   for Units of Phonemes, Morae, and Syllables Appearing in a
   Lexical Corpus of a Japanese Newspaper,"_ Behavior Research
   Methods, Instruments, & Computers 36, no. 3 (2004), 531-547.
   <http://brm.psychonomic-journals.org/content/36/3/531.full.pdf+html>
2. Duanmu, San. _Syllable Structure: The Limits of Variation. Oxford: Oxford
   University Press, 2008._ <http://books.google.com/books?id=K5HR4oMYIlUC>

  [kanji]:http://en.wikipedia.org/wiki/Kanji
  [geminate]:http://en.wikipedia.org/wiki/Gemination
  [hiragana]:http://en.wikipedia.org/wiki/Hiragana
