Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBSWQVP6AKGQEY4CRBPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 810772911E2
	for <lists+clang-built-linux@lfdr.de>; Sat, 17 Oct 2020 14:49:15 +0200 (CEST)
Received: by mail-wr1-x437.google.com with SMTP id t11sf5072385wrv.10
        for <lists+clang-built-linux@lfdr.de>; Sat, 17 Oct 2020 05:49:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602938955; cv=pass;
        d=google.com; s=arc-20160816;
        b=eEGBoMvuW+BsqlC4cQzLICEv44Kvl+cN6arFMyQa5OI8+qxZpfqS2ktYrdL+0QywP4
         xYG+qVMq3jy1TAFXqq5srFpYW6qNk4XnKFTdlBr53S01qkPEBzVcTXQ3L6qcc20jXvGY
         onwQE5jSp5Z9a88+uxh8j8hWlJ9oDgE5mN0ytfkxbyhQjn5SDjGHfksCBvSPu3dhwO9r
         61375wV4pni9vEKWUGX58fPQ8aqc5McqO6/tvVJPYuuSlETN6qNJQTzzplxFCnhvmXIO
         AbK5cY9X/K5k2qtnKWdiVCA2UNC0/TIt3Pt+mJXKYV+6VPgIT+VgPZr+r1DwkcD+vnTY
         sM2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=0XK8SycDRnxpQuDjBw093AZl2PsHz+xRsqTjjmv6db4=;
        b=ExsZm9ByNgBbnPNi0YKlwzY5lKEDMKXO6dFw3SuVGUUf/K1fK6xvdl2OMU4OLP1jGh
         LZDnOEgXH4Gt0lbyiNqt2pHIbOGO5gD9+hC9ThQPX2exo6FUcGQDImCP4vQJsEvgz6+3
         GUUNwzcPnGrExxJ6yq8NRHvS25N0Ov6FYfWRB2H+3ule82mdTi3mdRYmXiaFR41eRjcd
         M+c+hvOw3LAuruyqjx6QMP74gRXKpfWve+LcWCje6/GfCZpInBzvgXpheBQxdTfNXdjc
         rYoVH56Ay/lbqkXB1fL4GlDQiWj25xbS8/qqte0JI4tCJ7z4Ai0KFyojcHwKjoWtuKpm
         rmLA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 82.165.159.9 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0XK8SycDRnxpQuDjBw093AZl2PsHz+xRsqTjjmv6db4=;
        b=GqtmEHhXPNUJEaAOpCi8VlRSqh8zcumJ9EYqvdN7qaCKTcqX9Va3qLRU78eph9xMD6
         NuQhste03c1rfk43SUoB3Uj0ItBmkKO91husrwBsbZCZ8ofN5NTOC9QFjwWK7bPPG3uP
         59Pk5+iGG6OolsOxpKJDfVN9VPWm3GbLqqfnpcU/FWmlbAW95292/pvnFQxWyBKEK+vQ
         WLfQNb5mAiuy+bgFdt0nfUjVyy8WVuxBPnFZZ05CF8idqM/8UmspNKtUtdTh5pkhl+1t
         jZ3d4dDXW+BKA7PbVJ4+/U0U7Ev3GYOXNpO2KD5iacSUc1z684vMz5mpdCB48TBhnSLP
         yugQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0XK8SycDRnxpQuDjBw093AZl2PsHz+xRsqTjjmv6db4=;
        b=klJdj5yDD5LXiCNwbt5uOSVWTh8KRAeBUPDm99zLg7Hl+UNwiTH6NVyRaFG+dl8Zjw
         qTlXfwPC9i8TT5Jp97Ir5wg86t64xFO9sYi2W0sptJ/ysWSEW6P7uI8F4JpDDLdb0s1h
         gPYeulEMaJaRY2jacUQuyauauy+zKgZbKP4ILE5QFb84RT+mCGvXadNQZfqzKCeRYgfQ
         7OY9dVY8m+Hv/1xaK2Ma3cxqjIV793w1pEMw6r/wf/Usze8ftfGkqGCSggl604o4N05D
         SGu9aSjCXEHmf5ge6qMz2TuUzEYkq0vmU1mWFWQqt/BRdyKdZm7tkySGqvxKLo6jV3uO
         CY6g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530/uekB+HtHqmt1kcFrLDIklLVLmNMUYCBDyPbU44G5t+xAmMvo
	LFgKhe952FltACACl4r4rio=
X-Google-Smtp-Source: ABdhPJxLsjfU2gkkCZlqmgKe4/sIcrVDF4z2PPLr7OW+iBoU0BqWkhIUDJ1IuigTMNd2w1hi/9uCLQ==
X-Received: by 2002:a5d:490c:: with SMTP id x12mr9861692wrq.193.1602938955173;
        Sat, 17 Oct 2020 05:49:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:2506:: with SMTP id l6ls2321190wml.3.canary-gmail; Sat,
 17 Oct 2020 05:49:14 -0700 (PDT)
X-Received: by 2002:a1c:ab55:: with SMTP id u82mr8861035wme.152.1602938954182;
        Sat, 17 Oct 2020 05:49:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602938954; cv=none;
        d=google.com; s=arc-20160816;
        b=wiCH2NZi/WUb1d6bCWHpn6ZaMdPTwZY32I9xVIb+UbWpLIvIpHUrxJPKyTVgccxkJ3
         aH1h7NFGmDbsF81NhimmEfUIAretYn6OMUIzFdrxnK5g7s0u2dlYcBKwKOMyq5Wmpbpp
         w0RhvLj3nIBVz+UOeQdxsd7MKZVqpcLYee1Dn0Kcq6IGzjXpbdyq03czEGUhx59l+vHi
         Paze5kC82rpsuExrNGm6sppHUpqH7Uc9aGx0htNjH6918gYjLYborGZ8TB9cEVNC/wEq
         nuV4zyVshtHRGG5BTtTBwRwI2AEdcfzCg+3wGL77GQzmxmr+gaAh69+Yo2HNplWeLq6T
         QYDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=+kfx6E5/XXSyegehBFbymeUSt8dactoZAh5qGsQxCeA=;
        b=Y1IeOjzNxBcFb8YqVjylZHicW6w2VHs2rHXZ3lwJEXLjOLhhzQF25nk/B72kn0cTsm
         p9tKzHy4uEs9C1HzSfck7UBos9t38wu8sIH6orZgCB6VL1G1N9FyObdE/c9QBzcoyIMd
         2Eqy+R8ZkYkpyalHIYurO96fGdxLw9ibDUjyk3XckgWI+sy58fvVjrLPOEo6a2buO+HU
         KaPyjhO7nDrxEcqcxOj3tUkHFsj7dcXv7oc1LtnhW9Z1LJo73XBw7YEydgBnhGtZ3vBv
         zEZvBiNWuM+j86xiVB521eHmJjLRUxijFny9n3IVzq0Zn4k0PQ3ihmoFLtskHqCW8prd
         /6CQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 82.165.159.9 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout-xforward.kundenserver.de (mout-xforward.kundenserver.de. [82.165.159.9])
        by gmr-mx.google.com with ESMTPS id 206si50949wma.1.2020.10.17.05.49.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Oct 2020 05:49:14 -0700 (PDT)
Received-SPF: neutral (google.com: 82.165.159.9 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=82.165.159.9;
Received: from mail-qk1-f176.google.com ([209.85.222.176]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MXotA-1kxNKP2JDQ-00YCsO for <clang-built-linux@googlegroups.com>; Sat, 17
 Oct 2020 14:49:13 +0200
Received: by mail-qk1-f176.google.com with SMTP id s14so4107814qkg.11
        for <clang-built-linux@googlegroups.com>; Sat, 17 Oct 2020 05:49:13 -0700 (PDT)
X-Received: by 2002:a05:620a:b13:: with SMTP id t19mr7872481qkg.3.1602938952190;
 Sat, 17 Oct 2020 05:49:12 -0700 (PDT)
MIME-Version: 1.0
References: <20201001011232.4050282-1-andrew@lunn.ch> <20201001011232.4050282-2-andrew@lunn.ch>
 <CAKwvOdnVC8F1=QT03W5Zh9pJdTxxNfRcqXeob5_b4CXycvG1+g@mail.gmail.com>
 <20201002014411.GG4067422@lunn.ch> <CAKwvOdmdfwWsRtJHtJ16B0RMyoxUi1587OKnyunQd5gfwmnGsA@mail.gmail.com>
 <20201005194913.GC56634@lunn.ch> <CAK8P3a1qS8kaXNqAtqMKpWGx05DHVHMYwKBD_j-Zs+DHbL5CNw@mail.gmail.com>
 <20201005210808.GE56634@lunn.ch> <CAK7LNASB6ashOzmL5XntkPSq9a+8VoWCowP5CAt+oX0o=0y=dA@mail.gmail.com>
 <20201016141237.GD456889@lunn.ch>
In-Reply-To: <20201016141237.GD456889@lunn.ch>
From: Arnd Bergmann <arnd@arndb.de>
Date: Sat, 17 Oct 2020 14:48:56 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1nBhmf1PQwHHbEjiVgRTXi4UuJAbwuK92CKEbR=yKGWw@mail.gmail.com>
Message-ID: <CAK8P3a1nBhmf1PQwHHbEjiVgRTXi4UuJAbwuK92CKEbR=yKGWw@mail.gmail.com>
Subject: Re: [PATCH net-next v2 1/2] Makefile.extrawarn: Add symbol for W=1
 warnings for today
To: Andrew Lunn <andrew@lunn.ch>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	netdev <netdev@vger.kernel.org>, David Miller <davem@davemloft.net>, 
	Jakub Kicinski <kuba@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Rohit Maheshwari <rohitm@chelsio.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:h0StM4IA5xfr7zjlp1vIKYpfx6I29bzgVLqLFBaPK7SwCsFErWv
 vfc+xIG8p73PIqULrZYkN00nH426rYlnrZfMQrW+2CPj+HOkHSQsh8lqUppyt37P/Bl2jB2
 kB7uzS5p++AzIq0m/HYleQ1YFjcMmWsIbrjySwmnLEJgRc9jAQXSI8cvf0M1ldr15cdRRkw
 yS0/8g+CPWbTU2J6iVoUA==
X-Spam-Flag: YES
X-UI-Out-Filterresults: junk:10;V03:K0:7Oj1AY2C6rk=:U84c5MzmIVbun32x1izmA3pR
 0ENBVo0Yy8s9e8HNYTx/0CafjcMSGzELWji28WgzT/dpxjyYGx9ovOyPWB8ZngIpMtArAze8o
 nOJIWpfGX4kPHoOAdxLtoY6MEsGW7lF3ECxUUIB5EDaFogdX+URp+UwDqfy492loYARoBFgDi
 LTL8kPWIJiLV98on72t/8IZAB2/n1JCzi/kkj1y2G6IEmbhOv9KIiJGmz5qh1MqOM2ozulMqS
 g6SrJUSpp1R1VAHyD0FfmfXPWnTDVP2jZqYbjVbFbdJhNw/p2sK6/DSDjHx49t2Iue3zBRKvH
 Viv6afT9hXrqcBH51niVluWHOfjw7IUlCk/jIcXF/TP9VCwXOha346u8mFGTLWmZ7bGHSkPTT
 X/bjLY/TIht9Yp2JLFQy+zQAIJ7vkQDxFMxl0Fg7RmKeTIvqfKOQCC2GXJMta5vPGE3yizJHK
 EcfVAZhT4tysWEFvkMNB/szTWOzs/rSB4504VQO+9bUonB5G0GhcJPpUX58UpPVtYoVvKqRS7
 H0MSjsxQxCt/49HJqvV4aS9mbqwft1a9EmgQWJmlRb4TpxtcQWFmznoYFk0ik8h6E/pwk2XX3
 tuXun6AJWjkOw3e7rPpST7RLc+2NvncctJtc9bTBxhoWDivkeXlIZQ==
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 82.165.159.9 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

On Fri, Oct 16, 2020 at 4:12 PM Andrew Lunn <andrew@lunn.ch> wrote:
>
> > One drawback of your approach is that
> > you cannot set KBUILD_CFLAGS_W1_20200930
> > until you eliminate all the warnings in the
> > sub-directory in interest.
> > (i.e. all or nothing approach)
>
> Hi Mashiro
>
> That actual works well for my use case. drivers/net/ethernet is W=1
> clean. So is drivers/net/phy, drivers/net/mdio. Developers generally
> clean up a subsystem by adding W=1 to the command line because that is
> the simple tool they have.
>
> And my aim here is to keep those subsystem W=1 clean. I don't care
> about individual warnings within W=1, because those subsystems are
> passed that stage already.

I tried to get a better grasp of what kind of warnings we are actually talking
about and looked at the x86 allmodconfig W=1 output on today's linux-next.

What I found is that most subsystems are clean for most warnings, a
few dozen subsystems have a very small number of warnings and a
handful of subsystems have a ton of (mostly identical) warnings, see
below for the full list and how to reproduce.

Based on the numbers, I would still suggest an approach that starts
from multiple angles:

- Add a patch similar to yours that turns on W=1 for the largest
  known-clean subsystems (drivers/net/ethernet, drivers/media,
  drivers/mfd, ...), but without the date magic that won't be needed
  if we follow through with the rest of the plan.

- Turn on -Wold-style-definition -Wmissing-include-dirs -Wstringop-truncation
  globally, since they don't seem to cause any output any more.

- Work on fixing all -Wextra warnings (except -Woverride-init
 -Wunused-parameter -Wmissing-field-initializers -Wtype-limits)
 across the tree, then enable -Wextra unconditionally. I see this
 being relevant to only 25 files in the allmodconfig build, which is
 much less than I expected for -Wextra. There are a couple more
 for clang as well, but not that many either.

- Same for Wpacked-not-aligned, which happens in only 10 files
  and almost exclusively in wireless network drivers

- For each of -Wmissing-prototypes, -Wsuggest-attribute=format,
  -Wunused-but-set-variable, -Wunused-const-variable, and
  -Woverride-init, come up with a patch that disables or fixes
  the warning for the largest offender(s) and enables it globally
  in linux-next but not mainline, with the hope that others fix the
  reported issues. Do it one at a time, starting with
  -Wmissing-prototypes. When most of the output is gone
  for one of them, work on the final patch to deal with the remaining
  files and enable the warning unconditionally, then move on to the
  next in the list. This will take a while.

- When most of the above are done, redefine W=1 to include
  a larger set of warnings that are considered the most useful
  but are currently disabled at this level. For each subsystem that
  enables the current W=1 warnings unconditionally, either
  find a way to only enable the remainder of the old set or send
  fixes addressing the new issues and leave it at W=1.

      Arnd


8<---
grep warning: allmod-warnings-gcc-9  | grep '\[-W' | sed -e
's:^../\([\./a-zA-Z0-9_-]*\)\:.* \(\[-W.*\]\):\2 \1:' | cut -f -2 -d/
| sort  | uniq -c
      1 [-Wcast-function-type] drivers/firewire
     12 [-Wcast-function-type] drivers/net
     10 [-Wcast-function-type] include/linux
      2 [-Wempty-body] drivers/base
      2 [-Wempty-body] drivers/dax
      1 [-Wempty-body] drivers/input
      1 [-Wempty-body] drivers/isdn
      2 [-Wempty-body] drivers/net
      2 [-Wempty-body] drivers/platform
      4 [-Wempty-body] drivers/scsi
      2 [-Wempty-body] drivers/staging
      1 [-Wempty-body] drivers/target
      2 [-Wempty-body] fs/hfs
      4 [-Wempty-body] fs/hfsplus
      5 [-Wempty-body] fs/jffs2
      1 [-Wempty-body] fs/posix_acl.c
      1 [-Wignored-qualifiers] drivers/block
      1 [-Wignored-qualifiers] drivers/gpu
      1 [-Wignored-qualifiers] drivers/net
    573 [-Wmissing-prototypes] arch/x86  # mostly asm/syscall_wrapper.h
     12 [-Wmissing-prototypes] drivers/acpi
      1 [-Wmissing-prototypes] drivers/base
     14 [-Wmissing-prototypes] drivers/char
      1 [-Wmissing-prototypes] drivers/clk
     34 [-Wmissing-prototypes] drivers/crypto
      1 [-Wmissing-prototypes] drivers/dax
      5 [-Wmissing-prototypes] drivers/firmware
    324 [-Wmissing-prototypes] drivers/gpu  # mostly amdgpu
      1 [-Wmissing-prototypes] drivers/memstick
      3 [-Wmissing-prototypes] drivers/net
     20 [-Wmissing-prototypes] drivers/nvdimm
      9 [-Wmissing-prototypes] drivers/ptp
      1 [-Wmissing-prototypes] drivers/rpmsg
      1 [-Wmissing-prototypes] drivers/rtc
      2 [-Wmissing-prototypes] drivers/scsi
      3 [-Wmissing-prototypes] drivers/tty
      1 [-Wmissing-prototypes] drivers/vfio
      1 [-Wmissing-prototypes] drivers/xen
      1 [-Wmissing-prototypes] fs/d_path.c
      2 [-Wmissing-prototypes] fs/nfs
      1 [-Wmissing-prototypes] include/linux
      1 [-Wmissing-prototypes] kernel/bpf
      1 [-Wmissing-prototypes] kernel/debug
      1 [-Wmissing-prototypes] kernel/events
      1 [-Wmissing-prototypes] kernel/exit.c
      9 [-Wmissing-prototypes] kernel/gcov
      1 [-Wmissing-prototypes] kernel/irq
      1 [-Wmissing-prototypes] kernel/kallsyms.c
     10 [-Wmissing-prototypes] kernel/kcov.c
      3 [-Wmissing-prototypes] kernel/locking
      1 [-Wmissing-prototypes] kernel/module.c
      4 [-Wmissing-prototypes] kernel/panic.c
      1 [-Wmissing-prototypes] kernel/power
      2 [-Wmissing-prototypes] kernel/sched
      1 [-Wmissing-prototypes] kernel/signal.c
      1 [-Wmissing-prototypes] kernel/smp.c
      9 [-Wmissing-prototypes] kernel/trace
      1 [-Wmissing-prototypes] lib/decompress_inflate.c
      1 [-Wmissing-prototypes] lib/decompress_unxz.c
      1 [-Wmissing-prototypes] lib/decompress_unzstd.c
      4 [-Wmissing-prototypes] lib/kunit
      2 [-Wmissing-prototypes] lib/lz4
      1 [-Wmissing-prototypes] lib/lzo
      1 [-Wmissing-prototypes] lib/radix-tree.c
      1 [-Wmissing-prototypes] lib/test_ida.c
     10 [-Wmissing-prototypes] lib/zstd
      1 [-Wmissing-prototypes] mm/early_ioremap.c
      1 [-Wmissing-prototypes] mm/filemap.c
      2 [-Wmissing-prototypes] mm/page_alloc.c
      1 [-Wmissing-prototypes] mm/truncate.c
      1 [-Wmissing-prototypes] mm/vmalloc.c
      4 [-Wmissing-prototypes] net/ipv6
      2 [-Wmissing-prototypes] net/netfilter
      4 [-Wmissing-prototypes] samples/ftrace
      5 [-Wmissing-prototypes] security/integrity
      1 [-Wmissing-prototypes] security/selinux
      1 [-Woverflow] lib/bitfield_kunit.c
      1 [-Woverride-init] arch/x86
     27 [-Woverride-init] drivers/ata
      1 [-Woverride-init] drivers/block
     86 [-Woverride-init] drivers/gpu
      1 [-Woverride-init] include/linux
      1 [-Woverride-init] kernel/bpf
      4 [-Woverride-init] kernel/time
      1 [-Woverride-init] lib/errname.c
      3 [-Woverride-init] net/wimax
     77 [-Wpacked-not-aligned] drivers/net
      3 [-Wpacked-not-aligned] drivers/scsi
    155 [-Wpacked-not-aligned] drivers/staging
      1 [-Wsuggest-attribute=format] arch/x86
      1 [-Wsuggest-attribute=format] drivers/acpi
      1 [-Wsuggest-attribute=format] drivers/clk
      2 [-Wsuggest-attribute=format] drivers/gpu
      1 [-Wsuggest-attribute=format] drivers/hid
      2 [-Wsuggest-attribute=format] drivers/isdn
      1 [-Wsuggest-attribute=format] drivers/pnp
      2 [-Wsuggest-attribute=format] drivers/scsi
      1 [-Wsuggest-attribute=format] drivers/xen
      2 [-Wsuggest-attribute=format] fs/reiserfs
     10 [-Wsuggest-attribute=format] include/trace
      2 [-Wsuggest-attribute=format] kernel/audit.c
      2 [-Wsuggest-attribute=format] kernel/bpf
      1 [-Wsuggest-attribute=format] kernel/panic.c
     28 [-Wsuggest-attribute=format] kernel/trace
      3 [-Wsuggest-attribute=format] lib/kunit
      1 [-Wsuggest-attribute=format] lib/vsprintf.c
      1 [-Wsuggest-attribute=format] net/dccp
      1 [-Wsuggest-attribute=format] net/netfilter
      1 [-Wsuggest-attribute=format] net/tipc
      2 [-Wsuggest-attribute=format] security/tomoyo
     12 [-Wunused-but-set-variable] arch/x86
      1 [-Wunused-but-set-variable] drivers/base
      1 [-Wunused-but-set-variable] drivers/block
      8 [-Wunused-but-set-variable] drivers/char
      1 [-Wunused-but-set-variable] drivers/clk
      1 [-Wunused-but-set-variable] drivers/clocksource
      1 [-Wunused-but-set-variable] drivers/firewire
     67 [-Wunused-but-set-variable] drivers/gpu
      4 [-Wunused-but-set-variable] drivers/hid
      1 [-Wunused-but-set-variable] drivers/i2c
      4 [-Wunused-but-set-variable] drivers/ide
      9 [-Wunused-but-set-variable] drivers/input
      1 [-Wunused-but-set-variable] drivers/isdn
      1 [-Wunused-but-set-variable] drivers/leds
      1 [-Wunused-but-set-variable] drivers/memstick
      7 [-Wunused-but-set-variable] drivers/message
      2 [-Wunused-but-set-variable] drivers/mmc
      2 [-Wunused-but-set-variable] drivers/mtd
     47 [-Wunused-but-set-variable] drivers/net
      3 [-Wunused-but-set-variable] drivers/platform
      1 [-Wunused-but-set-variable] drivers/rapidio
     30 [-Wunused-but-set-variable] drivers/scsi
      1 [-Wunused-but-set-variable] drivers/soc
      1 [-Wunused-but-set-variable] drivers/spmi
     47 [-Wunused-but-set-variable] drivers/staging
      1 [-Wunused-but-set-variable] drivers/thermal
      1 [-Wunused-but-set-variable] drivers/thunderbolt
      9 [-Wunused-but-set-variable] drivers/tty
      1 [-Wunused-but-set-variable] drivers/usb
      1 [-Wunused-but-set-variable] drivers/vhost
     47 [-Wunused-but-set-variable] drivers/video
      2 [-Wunused-but-set-variable] drivers/w1
     12 [-Wunused-but-set-variable] fs/ceph
     11 [-Wunused-but-set-variable] fs/coda
      2 [-Wunused-but-set-variable] fs/jffs2
      3 [-Wunused-but-set-variable] fs/ntfs
      3 [-Wunused-but-set-variable] kernel/trace
      1 [-Wunused-but-set-variable] lib/decompress_unlzo.c
      1 [-Wunused-but-set-variable] lib/test_blackhole_dev.c
      1 [-Wunused-but-set-variable] lib/test_kasan_module.c
      4 [-Wunused-but-set-variable] lib/test_ubsan.c
      1 [-Wunused-but-set-variable] net/nfc
      1 [-Wunused-but-set-variable] security/smack
      2 [-Wunused-const-variable=] drivers/clk
   2513 [-Wunused-const-variable=] drivers/gpu # amdgpu
      1 [-Wunused-const-variable=] drivers/hid
      1 [-Wunused-const-variable=] drivers/ide
      3 [-Wunused-const-variable=] drivers/input
     17 [-Wunused-const-variable=] drivers/net
    122 [-Wunused-const-variable=] drivers/staging # rtl8xxx
      1 [-Wunused-const-variable=] drivers/usb
    279 [-Wunused-const-variable=] drivers/video # sis-fbdev
      5 [-Wunused-const-variable=] drivers/visorbus
      6 [-Wunused-const-variable=] fs/efs
      1 [-Wunused-const-variable=] fs/fscache
     16 [-Wunused-const-variable=] fs/orangefs
    236 [-Wunused-const-variable=] include/linux # lsm_hook_defs.h, zstd.h
     32 [-Wunused-const-variable=] lib/zstd

$ grep -h warning: allmod-warnings-clang-11  | grep '\[-W' | sed -e
's:^../\([\./a-zA-Z0-9_-]*\)\:.* \(\[-W.*\]\):\2 \1:' | cut -f -2 -d/
| sort | uniq -c | grep -w Wmissing-prototypes
      1 [-Wconstant-conversion] lib/bitfield_kunit.c
      1 [-Wformat] drivers/acpi
      4 [-Wformat] drivers/atm
      1 [-Wformat] drivers/gpio
     23 [-Wformat] drivers/gpu
      2 [-Wformat] drivers/hid
      1 [-Wformat] drivers/hwmon
      4 [-Wformat] drivers/iio
      1 [-Wformat] drivers/infiniband
      5 [-Wformat] drivers/media
      6 [-Wformat] drivers/misc
     48 [-Wformat] drivers/net
      3 [-Wformat] drivers/ntb
      1 [-Wformat] drivers/platform
      6 [-Wformat] drivers/scsi
      2 [-Wformat] drivers/soc
     14 [-Wformat] drivers/target
      1 [-Wformat] fs/afs
      2 [-Wformat] fs/nfsd
      1 [-Wformat] kernel/locking
     13 [-Wformat] lib/test_printf.c
      2 [-Wformat] net/8021q
      1 [-Wformat] net/batman-adv
      2 [-Wformat] net/ceph
     16 [-Wformat] net/ipv4
      2 [-Wformat] net/ipv6
      9 [-Wformat] net/l2tp
     24 [-Wformat] net/netfilter
      1 [-Wformat] net/rxrpc
      1 [-Wignored-qualifiers] drivers/block
      1 [-Wignored-qualifiers] drivers/gpu
      1 [-Wignored-qualifiers] drivers/net
      1 [-Winitializer-overrides] arch/x86
     27 [-Winitializer-overrides] drivers/ata
      1 [-Winitializer-overrides] drivers/block
     86 [-Winitializer-overrides] drivers/gpu
    259 [-Winitializer-overrides] drivers/net
      1 [-Winitializer-overrides] kernel/bpf
      4 [-Winitializer-overrides] kernel/time
      1 [-Winitializer-overrides] lib/errname.c
      3 [-Winitializer-overrides] net/wimax
      1 [-Wnull-pointer-arithmetic] drivers/atm
      1 [-Wnull-pointer-arithmetic] fs/kernfs
      1 [-Wnull-pointer-arithmetic] fs/seq_file.c
      1 [-Wnull-pointer-arithmetic] security/tomoyo
      1 [-Wpointer-bool-conversion] drivers/net
      1 [-Wsometimes-uninitialized] drivers/vfio
      1 [-Wtautological-constant-out-of-range-compare] drivers/block
      1 [-Wtautological-constant-out-of-range-compare] drivers/gpu
      1 [-Wtautological-constant-out-of-range-compare] drivers/md
      2 [-Wtautological-constant-out-of-range-compare] drivers/media
      1 [-Wtautological-constant-out-of-range-compare] drivers/net
      1 [-Wtautological-constant-out-of-range-compare] drivers/staging
      1 [-Wtautological-constant-out-of-range-compare] fs/ceph
      3 [-Wtautological-constant-out-of-range-compare] fs/vboxsf
      1 [-Wtautological-constant-out-of-range-compare] kernel/bpf
      1 [-Wtautological-constant-out-of-range-compare] kernel/kcov.c
      2 [-Wtautological-constant-out-of-range-compare] net/ceph
      1 [-Wtautological-constant-out-of-range-compare] net/ipv4
      1 [-Wuninitialized] drivers/staging
      2 [-Wunneeded-internal-declaration] drivers/gpu
      2 [-Wunused-const-variable] drivers/clk
     19 [-Wunused-const-variable] drivers/gpu
      1 [-Wunused-const-variable] drivers/ide
     12 [-Wunused-const-variable] drivers/net
      2 [-Wunused-const-variable] drivers/staging
      1 [-Wunused-const-variable] drivers/usb
      1 [-Wunused-const-variable] fs/fscache
      2 [-Wunused-function] arch/x86
      1 [-Wunused-function] block/blk-zoned.c
      1 [-Wunused-function] block/partitions
      1 [-Wunused-function] drivers/acpi
      3 [-Wunused-function] drivers/atm
      2 [-Wunused-function] drivers/bcma
      2 [-Wunused-function] drivers/cpufreq
      2 [-Wunused-function] drivers/crypto
     14 [-Wunused-function] drivers/dma
      1 [-Wunused-function] drivers/dma-buf
      1 [-Wunused-function] drivers/edac
      1 [-Wunused-function] drivers/fpga
      3 [-Wunused-function] drivers/gpio
     15 [-Wunused-function] drivers/gpu
      1 [-Wunused-function] drivers/hv
      3 [-Wunused-function] drivers/hwmon
      1 [-Wunused-function] drivers/hwtracing
      4 [-Wunused-function] drivers/infiniband
      1 [-Wunused-function] drivers/isdn
      1 [-Wunused-function] drivers/leds
      1 [-Wunused-function] drivers/md
     37 [-Wunused-function] drivers/media
      2 [-Wunused-function] drivers/mfd
      5 [-Wunused-function] drivers/misc
      3 [-Wunused-function] drivers/mmc
      2 [-Wunused-function] drivers/mtd
    162 [-Wunused-function] drivers/net
      3 [-Wunused-function] drivers/nvme
      2 [-Wunused-function] drivers/pci
      1 [-Wunused-function] drivers/pcmcia
      2 [-Wunused-function] drivers/phy
      1 [-Wunused-function] drivers/pwm
      1 [-Wunused-function] drivers/rtc
     29 [-Wunused-function] drivers/scsi
      1 [-Wunused-function] drivers/soc
      1 [-Wunused-function] drivers/spi
      6 [-Wunused-function] drivers/staging
      1 [-Wunused-function] drivers/thermal
      6 [-Wunused-function] drivers/tty
      7 [-Wunused-function] drivers/usb
      1 [-Wunused-function] drivers/vdpa
      5 [-Wunused-function] drivers/video
      3 [-Wunused-function] drivers/watchdog
      1 [-Wunused-function] fs/cifs
      1 [-Wunused-function] fs/dlm
      1 [-Wunused-function] fs/fuse
      1 [-Wunused-function] fs/lockd
      1 [-Wunused-function] fs/nfsd
      1 [-Wunused-function] fs/ocfs2
      2 [-Wunused-function] kernel/locking
      1 [-Wunused-function] kernel/power
      3 [-Wunused-function] kernel/time
      4 [-Wunused-function] kernel/trace
      1 [-Wunused-function] lib/bitfield_kunit.c
      1 [-Wunused-function] lib/zlib_inflate
      1 [-Wunused-function] mm/vmalloc.c
      2 [-Wunused-function] net/bluetooth
      2 [-Wunused-function] net/ipv6
      1 [-Wunused-function] net/sunrpc
      2 [-Wunused-function] security/apparmor
      2 [-Wunused-function] sound/drivers
      3 [-Wunused-function] sound/pci
      2 [-Wunused-function] sound/soc
      4 [-Wvoid-pointer-to-enum-cast] drivers/ata
      1 [-Wvoid-pointer-to-enum-cast] drivers/char
      2 [-Wvoid-pointer-to-enum-cast] drivers/crypto
      1 [-Wvoid-pointer-to-enum-cast] drivers/devfreq
      2 [-Wvoid-pointer-to-enum-cast] drivers/dma
      1 [-Wvoid-pointer-to-enum-cast] drivers/gpio
      5 [-Wvoid-pointer-to-enum-cast] drivers/gpu
     15 [-Wvoid-pointer-to-enum-cast] drivers/hwmon
      3 [-Wvoid-pointer-to-enum-cast] drivers/i2c
     10 [-Wvoid-pointer-to-enum-cast] drivers/iio
      1 [-Wvoid-pointer-to-enum-cast] drivers/input
      6 [-Wvoid-pointer-to-enum-cast] drivers/media
      9 [-Wvoid-pointer-to-enum-cast] drivers/mfd
      2 [-Wvoid-pointer-to-enum-cast] drivers/mtd
      1 [-Wvoid-pointer-to-enum-cast] drivers/mux
      9 [-Wvoid-pointer-to-enum-cast] drivers/net
      7 [-Wvoid-pointer-to-enum-cast] drivers/phy
      1 [-Wvoid-pointer-to-enum-cast] drivers/platform
      2 [-Wvoid-pointer-to-enum-cast] drivers/regulator
      1 [-Wvoid-pointer-to-enum-cast] drivers/reset
      4 [-Wvoid-pointer-to-enum-cast] drivers/rtc
      1 [-Wvoid-pointer-to-enum-cast] drivers/scsi
      1 [-Wvoid-pointer-to-enum-cast] drivers/soc
      2 [-Wvoid-pointer-to-enum-cast] drivers/spi
      1 [-Wvoid-pointer-to-enum-cast] drivers/thermal
      3 [-Wvoid-pointer-to-enum-cast] sound/soc

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a1nBhmf1PQwHHbEjiVgRTXi4UuJAbwuK92CKEbR%3DyKGWw%40mail.gmail.com.
