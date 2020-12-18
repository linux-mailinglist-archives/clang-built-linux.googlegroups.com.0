Return-Path: <clang-built-linux+bncBDT2NE7U5UFRB3HT6H7AKGQENPHB6AQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FCC72DE083
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Dec 2020 10:44:13 +0100 (CET)
Received: by mail-oi1-x23a.google.com with SMTP id l23sf1059492oii.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Dec 2020 01:44:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608284652; cv=pass;
        d=google.com; s=arc-20160816;
        b=uNW+ArELJXWxbqdIlr1zyg90L5EzaWCXe5QRW2w7kNFBKLmEGlC0gx312seRAQoA2H
         nwh6cMWy42dM7PfCZydFKum0qnBWDkZvMwGGR21A5Gmrp8Wmf1j6my4Fgc+fxkT9++iT
         HblBW7w3C1p4ZvUkVekEHATt0lXwWf9oVB9udHXOd/SYEEYkh1mwol0dF7sqMcS1DWlg
         Ubl55gCIYQwvkgyPmAKPIjKgQsuz8gPbEZKZvGlGEFmrCQ28VJcBOXLgUNrwQFitptyp
         TaMtd+6ZHZkfMO32sCkLiMTNRM4wQeJfC6Uxk9Gv49taAebn+g9r1THHqXd2ER16Ml/L
         FluQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=xId9LoJOBsXeAKGl2EFS30VRQ2iizLCtgwL+tOv9ZGM=;
        b=V80iq54gaiphIJiQNSuS8F2j2zWpdcIZ+XV9XknlLaM+g/NXVaX0UHuLcBgSX46/dL
         SgWXjAXaF2HEixJs+FlZBVF/Z+XIoUG4CNNRRMimgmRhKai6bWu0qwTUb2Eqr096L9Yd
         Wwsv38nm2V+sY+ilLr/2ZR7sxNkHhCri2KArLyUMl3Bz5eDTd+WkBDVwftxWTZQ2t49G
         xSSh7/p1Sgoc994f4dlByS+rcEUl2i1idp7nPs1kDPiE0dQvQ5Gw2tj3QT60eKIskbL6
         QFrJhOkA9Vx8pWMC5BTWpnHKYqRwp3Bk8UOVmoSm6/vpKYoQ49pJT8RjIOf2LG1rj/Ms
         qlow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="uW4s18H/";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xId9LoJOBsXeAKGl2EFS30VRQ2iizLCtgwL+tOv9ZGM=;
        b=fssTT/e0AIb5Yya6Cv00++MaCg/nSrigjmJ8IDslpNnRbE0PvDlxxggYI0W1+5AD81
         6UG2Q6mrj9vargP5o7Puzmnjn5BwBtI5PQ95rzfyV8UQgzn1RrefoRic8Zjq5Bu24H+q
         0+F+eNLLy4D830lEXyUfv/TAT4Gj1nAFzub0xHHyOsogjwsSQacrrq3MyVtlQxm6QKtb
         EZ4P4m0zDXWG9QwVjHaDk2YeOOkeRjEN1sJYikfOGClcjZ8s/txAMUaLHNo9y+6m59gY
         HKxCLQeusE6d+9zlwCILdhgXqjfEhr7VpDF9bDGRDFsE3vGvugxSMg/OsOtrwBZRoOBU
         R19Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xId9LoJOBsXeAKGl2EFS30VRQ2iizLCtgwL+tOv9ZGM=;
        b=KrbcOPBPb8xxr4Gr+/7yU+A7Vo+5j2ThbYoxhVKUldTl3ULA/SxWOASVimT96rRPpv
         AjEQinDx7h6OBY37sp7IKSQpGhD7GIMqPAst2YQIgcI5xDGpJBahPTfAJS5Aq/KE5xzM
         pNZXDEwle4FyEi4SkJrSMo3x051TgYymdy3qrYq+dVtzbvXNbma3bry0X4zxTLr+adcx
         3URzReLfHIscoOfNxNkInjaFHqCnYKKHD+toLEV5RTp/j2BQIvaITZ8HWh2YJ3AyUAaZ
         31sWhYz5SSrN0+FJtjf4RUMiamvfR82xARkV4Q64u90upHZDI0tNnxlCdwCW4JdNV/uL
         9w3g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5328vOQM8gzOjWhf76Udq2OMFi4ljN3kMRZK5sh0m4FRn80HGzx1
	Bh48/MUNDMvelwwr9rAZ3iE=
X-Google-Smtp-Source: ABdhPJze3/5J09jM0Gp6ui19Lr2tMDOW8UlCzWk7BDbD6IpmhRZkpYQzFQD6TrTXz02cx5Rw48vBAg==
X-Received: by 2002:aca:c443:: with SMTP id u64mr2111659oif.117.1608284652421;
        Fri, 18 Dec 2020 01:44:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:24b0:: with SMTP id v16ls8088359ots.10.gmail; Fri,
 18 Dec 2020 01:44:12 -0800 (PST)
X-Received: by 2002:a9d:3ef6:: with SMTP id b109mr2266530otc.288.1608284652026;
        Fri, 18 Dec 2020 01:44:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608284652; cv=none;
        d=google.com; s=arc-20160816;
        b=m8nnmA744SNPFS1EZUa1lCrA4UpFzbPfbBJD6EVe7FdnNe/FJMH2+72sIr55BA/jT/
         184XRbcVbTizWA+tIGTDm5dOG3Am/c54F4rse3Z/ARtwZ0uWjplldV4UudAUCluTVYjF
         Yt/nGauZoQ/kQUi3DVyipHIGSqfQbJcJt+WO6OpVVR8jcirJZ4riqP4MdyGN8TDT8jGp
         JLvmy2XZ0Eqv3LShY6J2NdI7JYH7shGT0C3OW2mblUBty+x6X/mQ010Nuwsqz9wd0zlN
         jOdz0a2Eq3drX0keHNDR6lN0dTYBXFGlUPFlIFwewGwUt6yqJ8OBLe5uBcTcvA1AxsgS
         /SDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=alQmUM5+tWJqBj5AGDAC6yCMV4c4CFP866srY1VNulo=;
        b=Xmi6kIlDEaL+x8SyUy9zwsJUVaZZTOhBDWvKCUxG/ynYYEN3df5S74wWJ6Xw2YXFn6
         ZRtBn1TZmuX3t10PNsZUJhIbnAWecelpDUKNSLgsy9v3gN3WiJfNBAa1XQE9WwJa0aIA
         jM2JT5kLjGS3KroQOtl9ATULxssz0JnDWpxbEJEvuHYnUQaV3CIotX3gSO2Jaq0C4MTi
         04VxQTKxnCZB2zTHT+SO5Ff32Nhj+Q2CJhI5PlWo1I2x1dyZdauX/8qtTEBSsY1wSkVX
         R0HXXFzbMYqiYYDjV32v1tmHIOE52n7bkWJimaIzNB4sraUPqD76L+Oek/pn4QQB1078
         0KAA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="uW4s18H/";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-04.nifty.com (conssluserg-04.nifty.com. [210.131.2.83])
        by gmr-mx.google.com with ESMTPS id f7si670504otf.3.2020.12.18.01.44.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 18 Dec 2020 01:44:11 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) client-ip=210.131.2.83;
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180]) (authenticated)
	by conssluserg-04.nifty.com with ESMTP id 0BI9hnqV002676
	for <clang-built-linux@googlegroups.com>; Fri, 18 Dec 2020 18:43:50 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com 0BI9hnqV002676
X-Nifty-SrcIP: [209.85.215.180]
Received: by mail-pg1-f180.google.com with SMTP id i7so983118pgc.8
        for <clang-built-linux@googlegroups.com>; Fri, 18 Dec 2020 01:43:50 -0800 (PST)
X-Received: by 2002:a65:6a16:: with SMTP id m22mr3370270pgu.175.1608284629399;
 Fri, 18 Dec 2020 01:43:49 -0800 (PST)
MIME-Version: 1.0
References: <CGME20201218075758eucas1p1605768803a5c9edce4fbe54b3e3b859a@eucas1p1.samsung.com>
 <20201203125700.161354-1-masahiroy@kernel.org> <b9b17126-9af5-2f73-526e-91bb9fd27f71@samsung.com>
In-Reply-To: <b9b17126-9af5-2f73-526e-91bb9fd27f71@samsung.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Fri, 18 Dec 2020 18:43:12 +0900
X-Gmail-Original-Message-ID: <CAK7LNART2qQBY7Vc8rhMiXS_Fwty7qpWjwwfPrUegTb-gjy6sA@mail.gmail.com>
Message-ID: <CAK7LNART2qQBY7Vc8rhMiXS_Fwty7qpWjwwfPrUegTb-gjy6sA@mail.gmail.com>
Subject: Re: [PATCH] gcc-plugins: simplify GCC plugin-dev capability test
To: Marek Szyprowski <m.szyprowski@samsung.com>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Kees Cook <keescook@chromium.org>, Emese Revfy <re.emese@gmail.com>,
        linux-hardening@vger.kernel.org,
        Linus Torvalds <torvalds@linux-foundation.org>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b="uW4s18H/";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org
 does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Fri, Dec 18, 2020 at 4:58 PM Marek Szyprowski
<m.szyprowski@samsung.com> wrote:
>
> Hi,
>
> On 03.12.2020 13:57, Masahiro Yamada wrote:
> > Linus pointed out a third of the time in the Kconfig parse stage comes
> > from the single invocation of cc1plus in scripts/gcc-plugin.sh [1],
> > and directly testing plugin-version.h for existence cuts down the
> > overhead a lot. [2]
> >
> > This commit takes one step further to kill the build test entirely.
> >
> > The small piece of code was probably intended to test the C++ designated
> > initializer, which was not supported until C++20.
> >
> > In fact, with -pedantic option given, both GCC and Clang emit a warning.
> >
> > $ echo 'class test { public: int test; } test = { .test = 1 };' | g++ -x c++ -pedantic - -fsyntax-only
> > <stdin>:1:43: warning: C++ designated initializers only available with '-std=c++2a' or '-std=gnu++2a' [-Wpedantic]
> > $ echo 'class test { public: int test; } test = { .test = 1 };' | clang++ -x c++ -pedantic - -fsyntax-only
> > <stdin>:1:43: warning: designated initializers are a C++20 extension [-Wc++20-designator]
> > class test { public: int test; } test = { .test = 1 };
> >                                            ^
> > 1 warning generated.
> >
> > Otherwise, modern C++ compilers should be able to build the code, and
> > hopefully skipping this test should not make any practical problem.
> >
> > Checking the existence of plugin-version.h is still needed to ensure
> > the plugin-dev package is installed. The test code is now small enough
> > to be embedded in scripts/gcc-plugins/Kconfig.
> >
> > [1] https://lore.kernel.org/lkml/CAHk-=wjU4DCuwQ4pXshRbwDCUQB31ScaeuDo1tjoZ0_PjhLHzQ@mail.gmail.com/
> > [2] https://lore.kernel.org/lkml/CAHk-=whK0aQxs6Q5ijJmYF1n2ch8cVFSUzU5yUM_HOjig=+vnw@mail.gmail.com/
> >
> > Reported-by: Linus Torvalds <torvalds@linux-foundation.org>
> > Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
>
> This patch landed in linux next-20201217 as commit 1e860048c53e
> ("gcc-plugins: simplify GCC plugin-dev capability test").
>
> It causes a build break with my tests setup, but I'm not sure weather it
> is really an issue of this commit or a toolchain I use. However I've
> checked various versions of the gcc cross-compilers released by Linaro
> at https://releases.linaro.org/components/toolchain/binaries/ and all
> fails with the same error:
>
> $ make ARCH=arm
> CROSS_COMPILE=../../cross/gcc-arm-10.2-2020.11-x86_64-arm-none-eabi/bin/arm-none-eabi-
> zImage
>    HOSTCXX scripts/gcc-plugins/arm_ssp_per_task_plugin.so
> In file included from
> /home/mszyprow/dev/cross/gcc-arm-10.2-2020.11-x86_64-arm-none-eabi/bin/../lib/gcc/arm-none-eabi/10.2.1/plugin/include/gcc-plugin.h:28:0,
>                   from scripts/gcc-plugins/gcc-common.h:7,
>                   from scripts/gcc-plugins/arm_ssp_per_task_plugin.c:3:
> /home/mszyprow/dev/cross/gcc-arm-10.2-2020.11-x86_64-arm-none-eabi/bin/../lib/gcc/arm-none-eabi/10.2.1/plugin/include/system.h:687:10:
> fatal error: gmp.h: No such file or directory
>   #include <gmp.h>
>            ^~~~~~~
> compilation terminated.
> scripts/gcc-plugins/Makefile:47: recipe for target
> 'scripts/gcc-plugins/arm_ssp_per_task_plugin.so' failed
> make[2]: *** [scripts/gcc-plugins/arm_ssp_per_task_plugin.so] Error 1
> scripts/Makefile.build:496: recipe for target 'scripts/gcc-plugins' failed
> make[1]: *** [scripts/gcc-plugins] Error 2
> Makefile:1190: recipe for target 'scripts' failed
> make: *** [scripts] Error 2
>
> Compilation works if I use the cross-gcc provided by
> gcc-7-arm-linux-gnueabi/gcc-arm-linux-gnueabi Ubuntu packages, which is:
>
> $ arm-linux-gnueabi-gcc --version
> arm-linux-gnueabi-gcc (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0
>
> Best regards
>
> --
> Marek Szyprowski, PhD
> Samsung R&D Institute Poland
>


I can compile gcc-plugins with Linaro toolchians.

The version of mine is this:

masahiro@oscar:~/ref/linux-next$
~/tools/arm-linaro-7.5/bin/arm-linux-gnueabihf-gcc --version
arm-linux-gnueabihf-gcc (Linaro GCC 7.5-2019.12) 7.5.0
Copyright (C) 2017 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.




Maybe, it depends on the host environment?


Please try this:

$ sudo apt install libgmp-dev



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNART2qQBY7Vc8rhMiXS_Fwty7qpWjwwfPrUegTb-gjy6sA%40mail.gmail.com.
