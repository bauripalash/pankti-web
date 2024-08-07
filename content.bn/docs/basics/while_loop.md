+++
title = "যতক্ষণ লুপ"
+++

# যতক্ষণ লুপ

## সাধারন পরিচিতি

```bash
  ধরি ক = ০

  যতক্ষণ (ক < ১০০)
     দেখাও(ক)
     ধরি ক = ক + ১
  শেষ
```

এখানে আমরা প্রথমে একটি চলরাশি তৈরি করলাম `ক` যার মান ০।

এবার আমরা পঙক্তিকে বললাম, যতক্ষণ ক এর মান ১০০ এর কম ততক্ষন নিম্নোক্ত কাজগুলো করো।

{{< highlight go "linenostart=4" >}}
   দেখাও(ক)
   ধরি ক = ক + ১

{{< / highlight >}}


প্রথমে আমরা ক এর মান ব্যবহারকারীকে দেখলাম। তারপর আমরা ক এর মান বৃদ্ধি করলাম, কারণ যদি এ কাজ আমরা না করি তাহলে ক এর মান স্থির হয়েই থেকে যাবে এবং এই লুপটি চিরকাল চলতেই থাকবে।

যারা প্রোগ্রামিং এ সাথে পূর্বপরিচিত তারা `ধরি ক = ক + ১` এই লাইনটি ধরে ফেলেছে। তবুও এটাকে আরেকটু ভালোভাবে বোঝা যাক।

প্রায় সব প্রোগ্রামিং ভাষাতেই `=` চিহ্নের ডানদিকের এক্সপ্রেশনগুলি আগে গণনা করা হয়।

```bash
      ↓↓↓↓
ধরি ক = ক + ১
      ↑↑↑↑
```

বোঝার সুবিধার জন্য ধরে নিলাম এটা যতক্ষণ লুপের প্রথম চক্র। বর্তমানে ক এর মান ০ শূণ্য। তাই ডানদিকের এক্সপ্রেশন হয়ে দাঁড়ালো এইরকম

```bash
ধরি ক = ক + ১
      ⇓
ধরি ক = ০ + ১
      ⇓
ধরি ক = ১
```

এখন আমাদের প্রোগ্রামের ১নং লাইনে তৈরি করা চলরশির ক এর মান হয়ে গেলো ১। এবার পরবর্তী চক্রে ক এর মান হবে ২। এভাবে চলতে থাকবে। একসময় যখন ক এর মান ৯৯ হয়ে যাবে। প্রোগ্রাম ব্যবহারকারীকে ৯৯ দেখাবে তারপর `ধরি ক = ক + ১` এর দ্বারা ক এর মান ১০০ হয়ে যাবে, তখন আর লুপটি চলবে না কারণ ক = ১০০ হয়ে যাবে কিন্তু আমাদের লুপের শর্ত `ক < ১০০`।

{{< highlight go "linenostart=3" >}}
যতক্ষণ (ক < ১০০)

{{</highlight>}}

