Return-Path: <clang-built-linux+bncBDYJPJO25UGBBX5WZL7AKGQEWWANKYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3a.google.com (mail-oo1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id AE2B32D6A6F
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Dec 2020 23:04:17 +0100 (CET)
Received: by mail-oo1-xc3a.google.com with SMTP id w2sf3312184ooo.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Dec 2020 14:04:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607637856; cv=pass;
        d=google.com; s=arc-20160816;
        b=PDnECt7sj4IkHU4jZQp0dNpRP+COxz6GnErFlX3y6Lp8PoCO7GjC+4jfBIZi81Std/
         eVkxomNSpdzeGgc+m+B6PVcqPIruuKtVBkQMbFWGEgUYHOVJLC3mJaPp10aYV4ckNAzm
         H+mJ9Uy6eCS56DB9OS+Cs2MSMgTE+JvV1euDWLcUAGgdZ2FBMvDRzTM9ZZu4kVdwn5Gv
         ZhNFQeTjyNn0SLyuF+AbI7NMI80tOVXdMmIWCHBZBSAcQIIgMB95VvdTsc1dYzTAtJTw
         aSiLwNKIpQwP1AWiVCNPgLrEGLm/aRJJygQGotqq3FbKzxFvb0J3jIvHLUJJ6tRF+xqQ
         dVrQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=oGf7es5mU+g+38gD8jiIXOiysIyj5wLUkZ8Y5UB8GWo=;
        b=Dp5ACh2i+kCmzQmcgRXoAttz1rInRW5abgI9oNKaTi1Iuu3gzMmylZhMmdN1AIW5aw
         1mla9VfHP80nMgkyjnAcOdUDXD4RqW/c8Lqd4l+Q0IqpNjLNA/TujXgTvJVkM0g+D0NS
         SLzUsnX0Upnrdmh7GBE773NwScvwHGGViIDw+rSpMBrNA5MGm0YyaZDpyn/Iwu0kAw9y
         cs5NH+4zwJctSUJCI1nKjRgNUWDopWfXhzOs5uRj9akWz1v6iOYdLnGr/YybLXGXIW1M
         ZU6phuUzbt/KS8bsZZ8B90KCbCGrBH1+VOO6tdivUDjWKXqCl37wwjGKI4H5z7+RWbfh
         aiXw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TmuEpAOZ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::635 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oGf7es5mU+g+38gD8jiIXOiysIyj5wLUkZ8Y5UB8GWo=;
        b=eqLSaOvf4fxrcwvonZ3PlBnlf9irwBvTj3A/sxiF0yvXOBZYNYN14X68jtZiZQceCC
         YhfgJM7TDeJtZK3pAdz6/6I25rkSuXkaRTKJZu1rm7JpxrjDWmOT+ZglTtkckarNsIOE
         WLFmA529v+7D/r9DD569Cg6s0HoD9S8TblHAAWuY4lkxEgITYYjv0omCxmtdschcxJM9
         FpYzgEYg2AOkwQdHVINsI8gbzeRZSPDIGKe0CcLvYObqaGKCG+KaU2zoTm4D2nXBvUvg
         RdJr87VKJJJMccQRsKP31FIAj6SkdsNkgEfAOI/Ve4droZ8TatGn2ZB6i/o6p35LAgvv
         QXVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oGf7es5mU+g+38gD8jiIXOiysIyj5wLUkZ8Y5UB8GWo=;
        b=QA2GHGmvfk/NU+Py4yQONU0XZkrDmsJiKGXbI61tk1pVUNfPiE4p/Yj4bcDlXRWcf2
         yPrS+wnHf1ra1Lcp5YYHfEZLr9mc/cfjLb4UeKDgnGu5Ha5yeosDvOYYg5RL5Jzb1ncb
         AW9Ot8FBQ92uHNW+G79+7vjWtBu2sg+v/vru8NQrLAlQQOiq+KAhpRpm8POOYvFT8/YW
         n+iNXMhTWtSbe8j+o6dIKwlPT1ItQDHPESDgHc7fWGP03igR5xR2CAXDTeqg+zxcRpWv
         lR2FW7OegANobubIW4K3b2xpD9Pgc8AK1y0BWetkq5nbFVga0Zy+f2Q2cMgzZ//6AUxX
         Bbew==
X-Gm-Message-State: AOAM532o73poe0xUFg/VbyBKl4i+3C7/PxByEJmYMiEIVyu3DCeT/xje
	VJJgLuyijFX7WPvPiFkADYY=
X-Google-Smtp-Source: ABdhPJz718kIQzyIfkfSPDcPgqWEa/CKeZE2eLcNnMIxvvMaVSQ6veMlxy6KkvZmmtd6uFPy7qg6qQ==
X-Received: by 2002:a9d:2d84:: with SMTP id g4mr7561665otb.212.1607637855558;
        Thu, 10 Dec 2020 14:04:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:331:: with SMTP id 46ls1400768otv.7.gmail; Thu, 10 Dec
 2020 14:04:15 -0800 (PST)
X-Received: by 2002:a9d:7c82:: with SMTP id q2mr7394810otn.205.1607637855020;
        Thu, 10 Dec 2020 14:04:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607637855; cv=none;
        d=google.com; s=arc-20160816;
        b=ODRZVXm2S2GcsyXvTS+Oorby+sDROvzIzWJIf5WzJOKZpI9OIDEYCL9rJztHVvT2sy
         WXHNu+wAUqJtek5EfWjpq9+HY50eO2f3+bi7OP7OIY08KfWwieR2nWQ1musYkCQtq9Zc
         GSIzDYocH8s3r88z7LLcZe9bQPN1zMtlFlx/mszVtay2y7VhsJAFS+TTF3ZW2ESX9pBU
         AilAheV/uDjznu4teSD211IjaNO+48M1cHvRDfv3PZCLrSM6Grc9yP5DzAcIRLjZc5py
         5IAxxDft5oZ/6bZRZq2lQXP5QMpIUsrNKFLNlmbZxaY1zKgZ4HHfvatEYPtmm/0q3uV4
         UhxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=5GBGxfLDmoveGpJ9L5HVmKW/Nrr5Gil4FnQfI25Evx8=;
        b=mNLdeaXngabxgdL77fc14RpTID4cVV8ECllhvK+hIL8gDrYT0ZTpZpuiUUTPDAmTKy
         gfpZsrg1LVE5gn5T9I56PojHqdf0C2i8iDAsbE104RZE9pfYVhYwoJPICSq7nVGHKOMD
         dX4uQ2KBs0OQavs84ESXCRJI0T2PM2FjKhQc6R+yjfjIghvBiPK1sdZRxqdrSTh7T59r
         Ut8RkK0pTbyAWuI/GzR8LhdYF70isIpZUokf5fg5QxsTLwEiRJD/kMg0yf/hcSCkqLpE
         VR5Dr5fqNw5gc6lrIo/O66nOsvJIVQ26drc/gzw36VGL0u9agTRQCgZ+dM4r4q7C0s5c
         1wCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TmuEpAOZ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::635 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com. [2607:f8b0:4864:20::635])
        by gmr-mx.google.com with ESMTPS id w26si438252oih.1.2020.12.10.14.04.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Dec 2020 14:04:15 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::635 as permitted sender) client-ip=2607:f8b0:4864:20::635;
Received: by mail-pl1-x635.google.com with SMTP id x12so3036975plr.10
        for <clang-built-linux@googlegroups.com>; Thu, 10 Dec 2020 14:04:14 -0800 (PST)
X-Received: by 2002:a17:902:8541:b029:da:fcd1:7bf with SMTP id
 d1-20020a1709028541b02900dafcd107bfmr8250628plo.56.1607637854163; Thu, 10 Dec
 2020 14:04:14 -0800 (PST)
MIME-Version: 1.0
References: <CA+G9fYuRHoZsW9KyRJVGrXznB8dbt5+ZZTMCpK+3mqcuwHcSMw@mail.gmail.com>
In-Reply-To: <CA+G9fYuRHoZsW9KyRJVGrXznB8dbt5+ZZTMCpK+3mqcuwHcSMw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 10 Dec 2020 14:04:02 -0800
Message-ID: <CAKwvOdn2wjqR6aSRNP1Ztz3rnKg7rcdjYboacBdWJ9TO7u_kmA@mail.gmail.com>
Subject: Re: MIPS + clang-11 + allnoconfig / tinyconfig builds failed
To: Naresh Kamboju <naresh.kamboju@linaro.org>
Cc: linux-mips@vger.kernel.org, open list <linux-kernel@vger.kernel.org>, 
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>, xie.he.0141@gmail.com, 
	clang-built-linux <clang-built-linux@googlegroups.com>, lkft-triage@lists.linaro.org, 
	Anders Roxell <anders.roxell@linaro.org>, Dan Rue <dan.rue@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=TmuEpAOZ;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::635
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Thu, Dec 10, 2020 at 9:18 AM Naresh Kamboju
<naresh.kamboju@linaro.org> wrote:
>
> Recently we have setup clang build and found that,
> MIPS + clang-11 + allnoconfig  build failed
> MIPS + clang-11 + tinyconfig  build failed
>
> MIPS + clang-10 + allnoconfig  build failed
> MIPS + clang-10 + tinyconfig  build failed
>
> We have noticed these build failures on
>  - stable-4.19
>  - stable-5.4
>  - stable-5.9
>  - mainline
>  - next-master
>
> FYI, The defconfig builds are successful.
> BTW, May I know what are the configs you build often ?

Hi Naresh, thank you again for these reports; they are invaluable.  We
were testing malta_kvm_guest_defconfig for ARCH=mips and ARCH=mipsel.
We should work to get those configs building/tested as well.

"were testing" past tense, because TravisCI just nuked our builds!
https://blog.travis-ci.com/oss-announcement

So we're running with one CI system down at the moment.  I'm working
with Dan on leveraging tuxbuild and github actions.

>
> Steps to reproduce build failure:
> -----------------------------------------
> # sudo pip3 install -U tuxmake
> # tuxmake --runtime docker --target-arch mips --toolchain clang-11
> --kconfig allnoconfig
> # tuxmake --runtime docker --target-arch mips --toolchain clang-11
> --kconfig tinyconfig
>
> Build failed log:
> ake --silent --keep-going --jobs=16
> O=/home/tuxbuild/.cache/tuxmake/builds/2/tmp ARCH=mips
> CROSS_COMPILE=mips-linux-gnu- 'HOSTCC=sccache clang' 'CC=sccache
> clang' allnoconfig
> make --silent --keep-going --jobs=16
> O=/home/tuxbuild/.cache/tuxmake/builds/2/tmp ARCH=mips
> CROSS_COMPILE=mips-linux-gnu- 'HOSTCC=sccache clang' 'CC=sccache
> clang'
> /builds/1kl9SVppm6wRdzlQ3UcQKIBaUrx/arch/mips/vdso/elf.S:14:1:
> warning: DWARF2 only supports one section per compilation unit
> .pushsection .note.Linux, "a",@note ; .balign 4 ; .long 2f - 1f ;
> .long 4484f - 3f ; .long 0 ; 1:.asciz "Linux" ; 2:.balign 4 ; 3:
> ^
> /builds/1kl9SVppm6wRdzlQ3UcQKIBaUrx/arch/mips/vdso/elf.S:34:2:
> warning: DWARF2 only supports one section per compilation unit
>  .section .mips_abiflags, "a"
>  ^

So this is likely the vdso resetting KBUILD_CFLAGS (common issue)
which is dropping -no-integrated-as, but setting -Wa,-gdwarf-2, which
we disabled in the top level Makefile.

> /builds/1kl9SVppm6wRdzlQ3UcQKIBaUrx/arch/mips/lib/uncached.c:45:6:
> warning: variable 'sp' is uninitialized when used here
> [-Wuninitialized]
>         if (sp >= (long)CKSEG0 && sp < (long)CKSEG2)
>             ^~
> /builds/1kl9SVppm6wRdzlQ3UcQKIBaUrx/arch/mips/lib/uncached.c:40:18:
> note: initialize the variable 'sp' to silence this warning
>         register long sp __asm__("$sp");
>                         ^
>                          = 0

I think we recently discussed this upstream.
https://lore.kernel.org/linux-mips/alpine.LFD.2.21.2012061431190.656242@eddie.linux-mips.org/T/#mcaabe339aaee81ed8f6dfe761f699c82e938b4c5

> 1 warning generated.
> WARNING: modpost: vmlinux.o(.text+0x1a124): Section mismatch in
> reference from the function r4k_cache_init() to the function
> .init.text:loongson3_sc_init()
> The function r4k_cache_init() references
> the function __init loongson3_sc_init().
> This is often because r4k_cache_init lacks a __init
> annotation or the annotation of loongson3_sc_init is wrong.
> WARNING: modpost: vmlinux.o(.text+0x1f1c8): Section mismatch in
> reference from the function mips_sc_init() to the function
> .init.text:mips_sc_probe()
> The function mips_sc_init() references
> the function __init mips_sc_probe().
> This is often because mips_sc_init lacks a __init
> annotation or the annotation of mips_sc_probe is wrong.
> FATAL: modpost: Section mismatches detected.
> Set CONFIG_SECTION_MISMATCH_WARN_ONLY=y to allow them.
> make[2]: *** [/builds/1kl9SVppm6wRdzlQ3UcQKIBaUrx/scripts/Makefile.modpost:59:
> vmlinux.symvers] Error 1

Anders sent a patch for this, too, IIRC.  Once the above fixes land
upstream, we probably need to follow up on ensuring they get picked up
into the affected branches of stable.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn2wjqR6aSRNP1Ztz3rnKg7rcdjYboacBdWJ9TO7u_kmA%40mail.gmail.com.
