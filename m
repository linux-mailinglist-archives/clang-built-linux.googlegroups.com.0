Return-Path: <clang-built-linux+bncBDYJPJO25UGBBKOXZSAAMGQEB7WI3LI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 09375308079
	for <lists+clang-built-linux@lfdr.de>; Thu, 28 Jan 2021 22:24:59 +0100 (CET)
Received: by mail-pj1-x1040.google.com with SMTP id u10sf4314979pjx.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 28 Jan 2021 13:24:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611869097; cv=pass;
        d=google.com; s=arc-20160816;
        b=oLpzIQXDQptdB/Gag3uuNydml0WsUJBznQ1BNbPYwKwGX6V1K1zGUttD3U9ZLjOzRC
         3AT4BUoNPJP5Kej5JP3C3qxSid7TRXQ2QGNp7iSG06f1hx7+NBpWea2DuAovuxtTiyZx
         zNMZhlLordkXKAolf/YsI7Je1HsRVvFKCMN4ItOlKPHj9sEhO0BLfIWcOFH7ucBtRdtH
         4FPeKMt1X3BbAZW5is7JLkdsan4HsCEbMmaysaGjWqcR1ksi774R/i3WKUAgsly9JfD8
         CdLyCQBclGufrO3YKuA2rxuQQNk1C+WaGFDaMN6VuTcUK2eVy1QTYosGHfYo8jkWvcow
         HJ3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=FUduK8LNa6Y2rwR2xygyxdF248KiNzCmMcKIrm7KDgI=;
        b=0Kp1JKjZqfck5gd4xnNDzLKpaKyPTG066y5/ZPQeog784poiBj2SD8IMs7uHGkOsS0
         G3qUkzKX83Y7rEMgqkYiFJNGhIGudgW7ldVLFOlHq/woBrUQJELGOl6AdMGB3Zs78769
         f699v3KbUTZYcVsKxUG1JABWejPrB+PPe/L+/JwvdpUn3rHIMwIMWqcEaWWaeQbfXUp0
         Um0h1ByA2YDd+62CIBa7cO1AGzbNJyfdFvOBD88cTtIowHB6xZ2w1NjSti1VT/iphZRm
         gb4zPZ+rQZzE8BK3gH5QoZ2Q+0TxBoQ9XzoaqC5GHjnb+97KRGcLP1eF1DhIydbb5JC4
         fbgA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XlHyfmsB;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FUduK8LNa6Y2rwR2xygyxdF248KiNzCmMcKIrm7KDgI=;
        b=mTYWA8y1VjlObJncxy7ls8sQY0weN1uw2slAEKtaovX9Vm/CwnBa24bxiQc58+UcZ8
         0FQaP17skSFlR4ngJtHHGPaZTHoGuowi02/9I8tM1ZkfX1qo40y7umE5YDYdWbZgS7Pp
         IN/tHm/qkSywxbT4J1Zqmtu9u8B3xM2Lne7prLMwxLuVAL1b8oCarz4fDko3d4Jludvh
         bjH8nFwDYpr9AKe974QzJVy2oNc4qPRBBPgav503uKeLmfzSBk8vLkGZWbRmZQVanQGs
         un32ApI8lvPtvmDN5wqgMvxdNA9j/7XbmpXAGDetGlp1s64fysfFwMTZMvSt+61+vFAJ
         YuEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FUduK8LNa6Y2rwR2xygyxdF248KiNzCmMcKIrm7KDgI=;
        b=M1kQQN3C4jGCXPUHtr8P9LYqdsBhZrq/qxtQQIYYCwS2ucHpo7XQ/KZ5Oqlwl3I4B8
         DXXYal1y6v7ZPme51XU1+turtNAWtdomxsl5GTQjP+AZ/pXm4/2lvSEpk4kkLJY6MZrM
         9400v1GwefONkZV5u6GXundP+77C2/5l6/TYU2Ax6aeF8oyJMCkEbAz9UTrED7eYkzuv
         8Tqx+2yzXda6zw1mUeiBv7kUKD8Ps7/9qvPFEjmRgwROR0gJmfsQX3IRC7SPFexeNFG7
         M4b+o9z9WXVUpt6yDuclMl/fwTEXdZ9jd1DpqH/IyaJtCJCdehswx6zFafS8NOecX/na
         MKow==
X-Gm-Message-State: AOAM532t8k2TAXWAJN9/JoHtxd22GP9TRq9w+UVBYrFfoQjv4X8KPxWT
	tqmK9srE3QWZ1/JE4SnV5pk=
X-Google-Smtp-Source: ABdhPJzmQ1VUVvdoN7zedfNuEXMTp9AS+h6QCnD1f/YFHNo7rRRQYiVYBtzPvRb1tPYJ/Zj/V2q79A==
X-Received: by 2002:a17:90a:e656:: with SMTP id ep22mr1266905pjb.127.1611869097765;
        Thu, 28 Jan 2021 13:24:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9155:: with SMTP id 21ls2702172pfi.3.gmail; Thu, 28 Jan
 2021 13:24:57 -0800 (PST)
X-Received: by 2002:aa7:93a2:0:b029:1bf:23a3:a945 with SMTP id x2-20020aa793a20000b02901bf23a3a945mr1198549pff.70.1611869097201;
        Thu, 28 Jan 2021 13:24:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611869097; cv=none;
        d=google.com; s=arc-20160816;
        b=GQS+RgHRwihqheDSxKceqwoIfGJTSn4U5iKRlIR7DV17tSiQWJFuNt5/yTyFW4uuiM
         4+nUwCzUGuxgzOCDII7F+0ZVj58YhqPFIitNRTY483OYYrWZpQoMDAhQ7ggUAwkwELJv
         sS9E+yNNNrkolDJyKtamXkbJnZA/ZkNL5VxVmx0D8LMANjNVrAD0AAHDhiyvocZL2YrD
         ruhGfV65Ki+mmPTmMrV3iAgnhhHiVwM/Hxnl+VltkA6PhH2K97hwZP7XszdEGt1vmOnR
         YyTSL45NQP06CmiZZLw+K5fTtPeZ6b9w5cjb2rseJcMc6IV8adBV5P9Nl3i3WZvVHa97
         UgDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=+JZFKkCox+l0s0cYd1+INkB1kfXhbwYrbrUbWWmGMmM=;
        b=JTbFEJjaax6jvaDhBvo5u6zJGfP/VrnyZ3oIqaVlI48koxOrlIAZBfBJEgQ2MFl8eP
         ohR+4B4yEc0ile9LTdFifdyhAis1ahoLwTIfRJJJo3xN+FBS1P1avPB/AEV4oREYMY9O
         C4vmefXuQN5STaJHgDg2Px1iDXar/wkPySULnvAki8pRr+G0M69DinpwJgTpx4Bo4l0A
         8ipL12J3Huz5YffIfDRiVMv1svT0cw/nvCjLE5oRIaGasRjoYTYQnA7B71V101tn7BiP
         ahTif4wzoTI18oddtxDyoJYQkQjLNjsM5CXisN+hiqIfsV7DAiykCubo8tHT2aLOG/zZ
         HfpQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XlHyfmsB;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com. [2607:f8b0:4864:20::102c])
        by gmr-mx.google.com with ESMTPS id j11si484275pgm.4.2021.01.28.13.24.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Jan 2021 13:24:57 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102c as permitted sender) client-ip=2607:f8b0:4864:20::102c;
Received: by mail-pj1-x102c.google.com with SMTP id a20so4624315pjs.1
        for <clang-built-linux@googlegroups.com>; Thu, 28 Jan 2021 13:24:57 -0800 (PST)
X-Received: by 2002:a17:902:ed94:b029:de:8844:a650 with SMTP id
 e20-20020a170902ed94b02900de8844a650mr1307260plj.56.1611869096670; Thu, 28
 Jan 2021 13:24:56 -0800 (PST)
MIME-Version: 1.0
References: <20210121082451.2240540-1-morbo@google.com> <20210122101156.3257143-1-morbo@google.com>
 <CAKwvOdm+3o8z2GivPjSJRa=c=UKdfkiY-79s6yn2BxJkFnoFTw@mail.gmail.com>
 <CA+icZUU=XfwqMcXYonQKcD4QgqTBW-mA+d_84b7cU2R3HYPOSQ@mail.gmail.com>
 <CAKwvOdnUm2FqC0CEF3qFuMCaWoqiUMqr7ddMjA2UNsJugA9DNQ@mail.gmail.com> <CA+icZUWJu0FWdRY0DMQxpYwjqq1WTB87y9u1-6t3YMmkR3UsBQ@mail.gmail.com>
In-Reply-To: <CA+icZUWJu0FWdRY0DMQxpYwjqq1WTB87y9u1-6t3YMmkR3UsBQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 28 Jan 2021 13:24:45 -0800
Message-ID: <CAKwvOdnVic2MiVSkiTQGGKPFKtJrf=kt1LgjWejOK6mMtMiX3Q@mail.gmail.com>
Subject: Re: [PATCH v7] pgo: add clang's Profile Guided Optimization infrastructure
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Bill Wendling <morbo@google.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Jonathan Corbet <corbet@lwn.net>, Masahiro Yamada <masahiroy@kernel.org>, 
	Linux Doc Mailing List <linux-doc@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=XlHyfmsB;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102c
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

On Thu, Jan 28, 2021 at 1:19 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Thu, Jan 28, 2021 at 10:12 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > On Thu, Jan 28, 2021 at 12:46 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > >
> > > [ LLVM ]
> > >
> > > Today, I switched over to LLVM version 12.0.0-rc1.
> > >
> > >
> > > [ Step #1: 5.11.0-rc5-5-amd64-clang12-pgo ]
> > >
> > > My first kernel was built with CONFIG_PGO_CLANG=y and LLVM=1 plus LLVM_IAS=1.
> > >
> > > [ start-build_5.11.0-rc5-5-amd64-clang12-pgo.txt ]
> > > dileks    193090  193065  0 06:54 pts/2    00:00:00 /usr/bin/perf_5.10
> > > stat make V=1 -j4 HOSTCC=clang HOSTCXX=clang++ HOSTLD=ld.lld CC=clang
> > > LD=ld.lld LLVM=1 LLVM_IAS=1 PAHOLE=/opt/pahole/bin/pahole
> > > LOCALVERSION=-5-amd64-clang12-pgo KBUILD_VERBOSE=1
> > > KBUILD_BUILD_HOST=iniza KBUILD_BUILD_USER=sedat.dilek@gmail.com
> > > KBUILD_BUILD_TIMESTAMP=2021-01-28 bindeb-pkg
> > > KDEB_PKGVERSION=5.11.0~rc5-5~bullseye+dileks1
> > >
> > > Config: config-5.11.0-rc5-5-amd64-clang12-pgo
> > >
> > >
> > > [ Step #2: x86-64 defconfig & vmlinux.profdata ]
> > >
> > > Booted into 5.11.0-rc5-5-amd64-clang12-pgo and built an x86-64
> > > defconfig to generate/merge a vmlinux.profdata file.
> > >
> > > [ start-build_x86-64-defconfig.txt ]
> > > dileks     18430   15640  0 11:15 pts/2    00:00:00 make V=1 -j4
> > > HOSTCC=clang HOSTCXX=clang++ HOSTLD=ld.lld CC=clang LD=ld.lld LLVM=1
> > > LLVM_IAS=1
> > >
> > > Script: profile_clang-pgo.sh
> > > Config: dot-config.x86-64-defconfig
> > >
> > >
> > > [ Step #3.1: 5.11.0-rc5-6-amd64-clang12-pgo & GNU-AS ]
> > >
> > > The first rebuild with CONFIG_PGO_CLANG=n and "LLVM=1
> > > KCFLAGS=-fprofile-use=vmlinux.profdata".
> > > I was able to boot into this one.
> > > Used assembler: GNU-AS 2.35.1
> > >
> > > [ start-build_5.11.0-rc5-6-amd64-clang12-pgo.txt ]
> > > dileks     65734   65709  0 11:54 pts/2    00:00:00 /usr/bin/perf_5.10
> > > stat make V=1 -j4 HOSTCC=clang HOSTCXX=clang++ HOSTLD=ld.lld CC=clang
> > > LD=ld.lld PAHOLE=/opt/pahole/bin/pahole
> > > LOCALVERSION=-6-amd64-clang12-pgo KBUILD_VERBOSE=1
> > > KBUILD_BUILD_HOST=iniza KBUILD_BUILD_USER=sedat.dilek@gmail.com
> > > KBUILD_BUILD_TIMESTAMP=2021-01-28 bindeb-pkg
> > > KDEB_PKGVERSION=5.11.0~rc5-6~bullseye+dileks1 LLVM=1
> > > KCFLAGS=-fprofile-use=vmlinux.profdata
> > >
> > > Config: config-5.11.0-rc5-6-amd64-clang12-pgo
> > >
> > >
> > > [ Step #3.2: 5.11.0-rc5-7-amd64-clang12-pgo & Clang-IAS ]
> > >
> > > The second rebuild with CONFIG_PGO_CLANG=n and "LLVM=1
> > > KCFLAGS=-fprofile-use=vmlinux.profdata" plus LLVM_IAS=1.
> > > Compilable but NOT bootable in QEMU and on bare metal.
> > > Used assembler: Clang-IAS v12.0.0-rc1
> > >
> > > [ start-build_5.11.0-rc5-7-amd64-clang12-pgo.txt ]
> > > dileks      6545    6520  0 16:31 pts/2    00:00:00 /usr/bin/perf_5.10
> > > stat make V=1 -j4 HOSTCC=clang HOSTCXX=clang++ HOSTLD=ld.lld CC=clang
> > > LD=ld.lld PAHOLE=/opt/pahole/bin/pahole
> > > LOCALVERSION=-7-amd64-clang12-pgo KBUILD_VERBOSE=1
> > > KBUILD_BUILD_HOST=iniza KBUILD_BUILD_USER=sedat.dilek@gmail.com
> > > KBUILD_BUILD_TIMESTAMP=2021-01-28 bindeb-pkg
> > > KDEB_PKGVERSION=5.11.0~rc5-7~bullseye+dileks1 LLVM=1
> > > KCFLAGS=-fprofile-use=vmlinux.profdata LLVM_IAS=1
> > >
> > > Config: config-5.11.0-rc5-7-amd64-clang12-pgo
> > >
> > >
> > > [ Conclusion ]
> > >
> > > The only statement I can tell you is a "PGO optimized" rebuild with
> > > LLVM_IAS=1 is compilable but NOT bootable.
> >
> > Thanks for the extensive testing and report. Can you compress, upload,
> > and post a link to your kernel image? I would like to take it for a
> > spin in QEMU and see if I can find what it's doing, then work
> > backwards from there.
> >
>
> Which files do you need?
> For QEMU: bzImage and initrd.img enough?

bzImage should be enough; I'll use my own initrd.  If that boots for
me, maybe then I'll take a look with the initrd added.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnVic2MiVSkiTQGGKPFKtJrf%3Dkt1LgjWejOK6mMtMiX3Q%40mail.gmail.com.
