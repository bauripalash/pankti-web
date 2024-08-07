+++
title = "বড়"
+++

# সাধারণ লাইব্রেরি - বড়

## সাধারণ পরিচিতি
পঙক্তি সহ বেশিরভাগ প্রোগ্রামিং ভাষাতে সংখ্যার মান সীমিত। অর্থাৎ সংখ্যার মান একটি নির্দিষ্ট সীমার বাইরে যেতে পারে না। যেমন C প্রোগ্রামিং ভাষাতে একটি `int` প্রকৃতির সংখ্যার মান সবসময় -2147483647 থেকে +2147483647 -এর মধ্যেই হবে। তার বেশি হলে যে ঘটনাটি ঘটবে সেটি হল `Integer Overflow`। যেমন C তে একটি `int` প্রকৃতির চল রাশির মান যদি `2147483647` হয় আর তার সাথে `1` যোগ করা হয় তাহলে সেই চলরাশির মান হয়ে দাঁড়াবে `-2147483648`; ধনাত্মক সংখ্যা ঋণাত্মক হয়ে দাঁড়াল। এরকম প্রায় সব প্রোগ্রামিং ভাষাতেই এই ধরনের সীমা হয়ে আছে; সত্যি বলতে এটা প্রোগ্রামিং ভাষার সীমাবদ্ধতা নয়, বরং কম্পিউটার প্রসেসররই সীমাবদ্ধতা।
পঙক্তি প্রোগ্রামিং ভাষার এই সীমাবদ্ধতার কথা "সংখ্যা" অধ্যায়ে বিস্তারিত আলোচনা করা হয়েছে

{{<highlight bash>}}
আনয়ন বড় "বড়"
{{</highlight>}}


## • বড়.নতুন(ক)

এই ফাংশন দ্বারা একটি নতুন বড় সংখ্যা তৈরি করা যায়। এখানে `ক` স্ট্রিং কিংবা সংখ্যা হতে পারে। মনে রাখতে হবে এই ফাংশনে স্ট্রিং দেওয়া হলে সেটিতে সংখ্যাগুলি কিন্তু ইংরাজিতে হতে হবে।

উদাহরণঃ

{{<highlight bash>}}
ধরি ব = বড়.নতুন("9999")
ধরি ভ = বড়.নতুন(9999)
{{</highlight>}}

বড় সংখ্যা হিসাবে `ব` এবং `ভ` -এর মান সমান।

## • বড়.যোগ(ক , খ)

এই ফাংশন দুটি বড় সংখ্যা `ক` এবং `খ` এর যোগফল একটি নতুন বড় সংখ্যা হিসাবে ফেরৎ দেয়।

উদাহরণঃ

{{<highlight bash>}}
ধরি ব = বড়.নতুন("999")
ধরি ভ = বড়.নতুন(999)

ধরি থ = বড়.যোগ(ব, ভ) # 1998
ধরি ত = বড়.নতুন(১৯৯৮)
ধরি দ = বড়.যোগ(থ, ত) # 3996
{{</highlight>}}

## • বড়.বিয়োগ(ক, খ)

এই ফাংশন দুটি বড় সংখ্যা `ক` এবং `খ` এর যোগফল একটি নতুন বড় সংখ্যা হিসাবে ফেরৎ দেয়।

উদাহরণঃ

{{<highlight bash>}}
ধরি ব = বড়.নতুন("999")
ধরি ভ = বড়.নতুন(9999)

ধরি ত = বড়.বিয়োগ(ব, ভ) # -9000
ধরি থ = বড়.বিয়োগ(ভ, ব) # 9000
{{</highlight>}}

