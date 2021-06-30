Return-Path: <clang-built-linux+bncBDYJPJO25UGBBSMX6ODAMGQEAUZQXEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id 6230F3B8956
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Jun 2021 21:53:46 +0200 (CEST)
Received: by mail-qk1-x738.google.com with SMTP id 81-20020a370b540000b02903b31f13f7c5sf2513937qkl.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Jun 2021 12:53:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625082825; cv=pass;
        d=google.com; s=arc-20160816;
        b=lQP2mWzSVw6wc3GYWqeh5CMs+6xCIYV1lr+upleV1epgi7ptn1GizoeiAz0m4XX+oA
         f9SuVGHwEFQi+u+ZwWtHztcU7IOBVHuhTmM9vH+PeWxNxegjeIpO85V/C9A2doopEDyA
         EegFY/bNAEjjnszuK6CTAzY7x02suwCwd1Fi/oTwgFfdhqYXtHnXp+hbS0hzqVFPgo7s
         XTWgVe7Hdm6by84vaS9U9gPPJ2HlrQyA7Tio88uAN6vcLAaEeUuEA95YgEm8yLMsIL2H
         W4wjJd6UCKTXYDbx+eMeA8iP4MTYD5/uHOs2FDnWnWGSjSv8m4t2xfrakt3P+KS1mTjl
         3N9Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:from:subject:date
         :message-id:mime-version:dkim-signature;
        bh=oqd+vhSU3nO7CxZOWJyop6tJ7audXNHmbQLuRrcneCs=;
        b=e9VqwoSG1KAGpSlJi7oNevxB2/70pZO+7J0T9GoCJE5oGsCGPl+5/MI3E44Rovp2Un
         I0/Lzb0hC0NbXRgbVUxKD5Yd9ubTwmMf9BU4inXYn9oiZVnD0xzsnLcBes0/8WHsDb/l
         cgFlaLijT4cJS2CzWz7z2h3ZMAa6upP1nt1mk341vHpBwV9rC+MFVPdLztb6vr0TWKO4
         PaxKJySW1B0kE7o43S4My60lCAY34l6bBxnsstZazRt+tylVaPR6/pUJOG8wtBhEgJKd
         +qf7Ho021pzgK1p4u/fmTeq8niOpzVDv+w34xlCQIVZR5dW/i22qvZWvZoogi6k6dLhu
         3jfA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZW0zZ6Td;
       spf=pass (google.com: domain of 3ymvcyawkan8oeftbvmojfsthpphmf.dpn@maestro.bounces.google.com designates 2607:f8b0:4864:20::247 as permitted sender) smtp.mailfrom=3yMvcYAwKAN8OEFTBVMOJFSTHPPHMF.DPN@maestro.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:message-id:date:subject:from:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=oqd+vhSU3nO7CxZOWJyop6tJ7audXNHmbQLuRrcneCs=;
        b=hyJuGhCQTx0wneV1685sfGH5vBjgpQS5NBJbXZDnnXz2miifXn0mMymT0fSBmdIEkv
         QKhcEi3pCHL3DeUdajPzqKKRb5uW2PZVake50HDGCSDzxIiViUzCT1ZHlnyahPFE7Zbp
         JipmGIpQv6czycIkENtBksx0TynxAZaFeHGpaimDlbj4fiGVd78vDRmQ+CGYSio3tOaE
         kub15SFHDARhRbbvJbRcvS6Z4ZiGRHaPfUjHgoRtdK0qWHreuQbWhI+PIJo5tZbOIIwI
         NYQcoESQBHYD+dY63QSuvYuQ7BBeaP0WRmW8+qmwbN+3aqxmqAEYGV4qxSzFWgkFJs+p
         M/uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:message-id:date:subject:from:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oqd+vhSU3nO7CxZOWJyop6tJ7audXNHmbQLuRrcneCs=;
        b=HzO2EvALNBDizJDDhiOdT6f1gc2hJLOneI2iu389OPB//mhn0czTb1xuTKTZlgbsCs
         W4rOQMuqQDgkd3wHfpgh5BlK7eaSGzYavAx0qGqBcSteHSTuqyc0/az2H/0048BKenXS
         X8CXThryBakx5ZEfEdPQcUbuHL/8AmFcZU30TRHvEJfakpt2JoOb1aAqODUppgbzlO9+
         Q7V/m2RuVWZjhj9SEKbB7u+Jqh8kE+VBixH4kSSHL5P48omjCsOUWIC5ZDSqiP4oIEkw
         /wuHlP7SK8KvTvzC/6OYeQorlsM/DXHQlIgxxpcHkd/tFUlouMdKBTVlRm3YbtQp8ppO
         SLdA==
X-Gm-Message-State: AOAM530GjneT3DMYO1FrIfPzIL9uBXFBEii9ZqnFXtAS062tle16dOwJ
	u9hSeiWbeTsZL51uQyP2/pc=
X-Google-Smtp-Source: ABdhPJyIS+f+41W584J3uqPrbwappAZWIo322EEJYrqkqks2VlrMvUjYD2Ei38XiToz5LyFZeD22pA==
X-Received: by 2002:a05:6214:1c0d:: with SMTP id u13mr38580482qvc.17.1625082825208;
        Wed, 30 Jun 2021 12:53:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:622a:1a82:: with SMTP id s2ls1618787qtc.11.gmail; Wed,
 30 Jun 2021 12:53:44 -0700 (PDT)
X-Received: by 2002:ac8:5a55:: with SMTP id o21mr32898108qta.0.1625082824699;
        Wed, 30 Jun 2021 12:53:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625082824; cv=none;
        d=google.com; s=arc-20160816;
        b=XcFd2y4QMuEbVXsqV4uoiujOA3AOavL+hkAYzl3RZ+OPawVBFbpucANhYx1aIA9hxD
         6+go2TIRAb11t3LeNciWXAMP5T2zOOg/6GXD/K7i36ntyGbL7u3aD3I1wLRhDMgn62bu
         /7FGldZZrEfhGrtO15aI8vvpWqkK1PYToFKDJrunFvhIZ5yp0wvSJQczWek2aL+1fakA
         /LWZLABtGTcOxaGaHcrP80dESzdqZaB3JX1u+qXb0o5vF1h0m9+3pITiq/M3tXtpl/Uo
         73qUVE5d3ye8iuV6nGJFpgsUM6VRGMu6LUTntp+1NgR8U6UgMQh7u1hRfdNH3znFV77n
         2sFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:date:message-id:mime-version:dkim-signature;
        bh=VF2IUw7H63JWMWf8Qlk/XiACy82F2Z01mDt4NVoown8=;
        b=THkfH6StbTf7Pb+QiJS0TmixF4uGVaqEoY293wiTi7IQXjTjdMT3MIGW7cy2dt57kL
         mt/ePkLaMP3GlGAVI85hNsruUDb6ZK1WA1gnIwVwC9GeawD1h5CWdwT5KQJA75gLWGOV
         PX2aXbXK6YWuw2w/XwP6YcTFofkrJACoo985xQIItg1cV0s6OsFXniIeiYuOGXjaSAyJ
         sJzALscpqsJNSKwGe35+7AgzR4iMGnRAj7ZtiGwOAkmyT4hcK7bv627RKKz9MMMnmBpC
         pu6AFFeeKMpzJK1upvGXlhC4wrIvgeSqCUkTbj9xAu7vQ835y2NjTHgCM7oTHo91ZLQm
         WWVg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZW0zZ6Td;
       spf=pass (google.com: domain of 3ymvcyawkan8oeftbvmojfsthpphmf.dpn@maestro.bounces.google.com designates 2607:f8b0:4864:20::247 as permitted sender) smtp.mailfrom=3yMvcYAwKAN8OEFTBVMOJFSTHPPHMF.DPN@maestro.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-oi1-x247.google.com (mail-oi1-x247.google.com. [2607:f8b0:4864:20::247])
        by gmr-mx.google.com with ESMTPS id x10si2731508qkn.7.2021.06.30.12.53.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Jun 2021 12:53:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3ymvcyawkan8oeftbvmojfsthpphmf.dpn@maestro.bounces.google.com designates 2607:f8b0:4864:20::247 as permitted sender) client-ip=2607:f8b0:4864:20::247;
Received: by mail-oi1-x247.google.com with SMTP id k11-20020a54440b0000b02901f3e6a011b4so1587968oiw.23
        for <clang-built-linux@googlegroups.com>; Wed, 30 Jun 2021 12:53:44 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 2002:a9d:7f03:: with SMTP id j3mr10306430otq.235.1625082824078;
 Wed, 30 Jun 2021 12:53:44 -0700 (PDT)
Message-ID: <0000000000007626dc05c601147a@google.com>
Date: Wed, 30 Jun 2021 19:53:44 +0000
Subject: Clang-Built Linux Meeting Notes - June 30, 2021
From: ndesaulniers via Clang Built Linux <clang-built-linux@googlegroups.com>
To: ndesaulniers@google.com, android-llvm@google.com, 
	clang-linux-fellowship@google.com, clang-built-linux@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000007626cf05c6011477"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ZW0zZ6Td;       spf=pass
 (google.com: domain of 3ymvcyawkan8oeftbvmojfsthpphmf.dpn@maestro.bounces.google.com
 designates 2607:f8b0:4864:20::247 as permitted sender) smtp.mailfrom=3yMvcYAwKAN8OEFTBVMOJFSTHPPHMF.DPN@maestro.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: ndesaulniers@google.com
Reply-To: ndesaulniers@google.com
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

--0000000000007626cf05c6011477
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes

http://go/clang-built-linux-notes
Meeting: Hangouts Meet


June 30, 2021
-------------

PGO on the rocks
https://lore.kernel.org/lkml/CAHk-=whqCT0BeqBQhW8D-YoLLgp_eFY=8Y=9ieREM5xx0ef08w@mail.gmail.com/
Should be able to enable LLVM_IAS=1 on mips soon:
https://lore.kernel.org/lkml/20210628215029.2722537-1-ndesaulniers@google.com/T/#u
Still some warnings
Should we flip LLVM_IAS=1 to on when LLVM=1?
PPC
S390
Toolchain MC has been accepted at plumbers
https://www.linuxplumbersconf.org/blog/2021/index.php/2021/06/21/toolchains-and-kernel-microconference-accepted-into-2021-linux-plumbers-conference/
More Nest devices switching to clang built kernels
Leaving freenode IRC
Send LLVM Revert Checker tool to Tom
https://cs.android.com/android/platform/superproject/+/master:external/toolchain-utils/llvm_tools/revert_checker.py
Fortify source (Kees)
-Wrestrict (Kees, Arnd)
We can build more 32b ARM? Should we add more to CI?
https://tinyurl.com/linux-architectures

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0000000000007626dc05c601147a%40google.com.

--0000000000007626cf05c6011477
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head><style> h1 { font-size: 1.2em; font-weight: bold; } h2 { font-s=
ize: 1.1em; font-weight: bold; } </style></head><body><a href=3D'go/clang-b=
uilt-linux-notes'><span style=3D'text-decoration: underline'>http://go/clan=
g-built-linux-notes</span></a><br />Meeting: <a href=3D'https://meet.google=
.com/yjf-jyqk-iaz'><span style=3D'text-decoration: underline'>Hangouts Meet=
</span></a><br /><br /><h1>June 30, 2021<br /></h1><ul><li>PGO on the rocks=
</li><ul><li><a href=3D'https://lore.kernel.org/lkml/CAHk-=3DwhqCT0BeqBQhW8=
D-YoLLgp_eFY=3D8Y=3D9ieREM5xx0ef08w@mail.gmail.com/'><span style=3D'text-de=
coration: underline'>https://lore.kernel.org/lkml/CAHk-=3DwhqCT0BeqBQhW8D-Y=
oLLgp_eFY=3D8Y=3D9ieREM5xx0ef08w@mail.gmail.com/</span></a> </li></ul><li>S=
hould be able to enable LLVM_IAS=3D1 on mips soon:</li><ul><li><a href=3D'h=
ttps://lore.kernel.org/lkml/20210628215029.2722537-1-ndesaulniers@google.co=
m/T/#u'><span style=3D'text-decoration: underline'>https://lore.kernel.org/=
lkml/20210628215029.2722537-1-ndesaulniers@google.com/T/#u</span></a> </li>=
<li>Still some warnings</li><li>Should we flip LLVM_IAS=3D1 to on when LLVM=
=3D1?</li><ul><li>PPC</li><li>S390</li></ul></ul><li>Toolchain MC has been =
accepted at plumbers</li><ul><li><a href=3D'https://www.linuxplumbersconf.o=
rg/blog/2021/index.php/2021/06/21/toolchains-and-kernel-microconference-acc=
epted-into-2021-linux-plumbers-conference/'><span style=3D'text-decoration:=
 underline'>https://www.linuxplumbersconf.org/blog/2021/index.php/2021/06/2=
1/toolchains-and-kernel-microconference-accepted-into-2021-linux-plumbers-c=
onference/</span></a> </li></ul><li>More Nest devices switching to clang bu=
ilt kernels</li><li>Leaving freenode IRC</li><li>Send LLVM Revert Checker t=
ool to Tom</li><ul><li><a href=3D'https://cs.android.com/android/platform/s=
uperproject/+/master:external/toolchain-utils/llvm_tools/revert_checker.py'=
><span style=3D'text-decoration: underline'>https://cs.android.com/android/=
platform/superproject/+/master:external/toolchain-utils/llvm_tools/revert_c=
hecker.py</span></a> </li></ul><li>Fortify source (Kees)</li><li>-Wrestrict=
 (Kees, Arnd)</li><li>We can build more 32b ARM? Should we add more to CI?<=
/li><li><a href=3D'https://tinyurl.com/linux-architectures'><span style=3D'=
text-decoration: underline'>https://tinyurl.com/linux-architectures</span><=
/a></li></ul><br /><hr /><br />Sent by http://go/sendnotes</body></html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/0000000000007626dc05c601147a%40google.com?utm_=
medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/clang=
-built-linux/0000000000007626dc05c601147a%40google.com</a>.<br />

--0000000000007626cf05c6011477--
