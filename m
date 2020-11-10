Return-Path: <clang-built-linux+bncBD63HSEZTUIBBJEPVT6QKGQEZCGZKVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A29E2AE1DD
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 22:35:34 +0100 (CET)
Received: by mail-pg1-x539.google.com with SMTP id y7sf10261692pgg.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 13:35:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605044133; cv=pass;
        d=google.com; s=arc-20160816;
        b=y6LqemzJfVCejSpKATSq+56dGqYf7+Sdmcj86ND9qJf/wntI57zGMcKPFgWqW1B4kc
         aLLQQ/C4I4aSRbeGJtvrzqh+vem7ig3bp3x+/JNtiMMtQ0SVdMZlhIv6eIoUHW9ILdsw
         WvOmE0KEUVb1tmXspsAnDKT4kbSWPuvZEfPyQx3zL6rL1VcgDTphZqK6xxEOH4zyyfMh
         VcyU9nkihlRnovVu5ruTYeNHPgp1FCX7mtowly3TiVBaWzeQrBKX7+1dMXRzJdS4u/jD
         QZV9+QJZ/jNS2jO7xWJ5mo6C9ku6HJuLrr1WiCSOvf5sjBsm8JNzteVkXwf98GCPwXoE
         qgqg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=6/bXsZRkm8AJ07xLXvnf1laulcHwlBSKrf5V1q2+OQc=;
        b=UHqRptZRngrQ3KriH8QK7l+U1f4txuyWmXrnCTM+aQ6FY3H4j3UuQQVelhlLm7g9WU
         yYlG8QiKV8UoQMRP4C6ZcFrvPxtuQMnHzCNW5WgEgv8dIB63xihJ+sOgKWWsV1qE4Wzq
         tICMlml8mFq0JvkswA6FWqxRrFMqBRS1AIzp26s1t6F/qCW1c63wHN/4BSTog0iX4wD1
         3Hu/5oLk7IDIW/+OL4b05lh1KNoEzgRqb+W8SUntb8Y2dav7+rLvYBOQk2NcofmHvio+
         aQnESmIhLvT0gGzFygQLLSR5mkWYCPTzZMm8Ij/+43QC8vRCP8l3XMXmhFDN2wbYJFye
         DdIA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=p0q11j1n;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6/bXsZRkm8AJ07xLXvnf1laulcHwlBSKrf5V1q2+OQc=;
        b=cQDx9ozABE55kZJJ3oQakub61uPI2Syl56OUokFnMgmj2RdWrWrA5dg2Qzrr7bYnrS
         YymZti8ztlwgtWoJnjxv+OTyGX3EoGsJibebG26FoX6YcBhzZVT81FEuvw2i+8ztocyb
         TS2MdtR0QO736/SmJwNKy1VzHrMNm5VBtgM8DG+0sVznkwCiFMe5d+HocVd1uHi6ZXQQ
         WDjivY+M4VajPxjSnPg0q/sutgoix+7bAGMsNqqhl0iP2lPTXy5tKooilu+OplB2YVoU
         l4uGooAc4Zdn7UVVcI7PA5NrPubB3abiqipHMV/eSAv8bNS1E6m0m/7sFgkWr3uqIvLT
         66Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6/bXsZRkm8AJ07xLXvnf1laulcHwlBSKrf5V1q2+OQc=;
        b=Wy9xsT0rkEBz0QDoy15xtkXtcwtevjtqPF7Vn+HjnEOB+NuStMd8s7A3Enebz2Kv3X
         Y9SDK6TQR/pOtNcuqGkuKSf/UZC2LojL9z6j7V9gDN5hTQCB3MTsuIxqlPzxPPyHpRv7
         dIjeBxVNE0xMC/pz38nuU8pQOPjs/8iqkWwJEva1bs6upmkVTaBbT5bTNEr7QshxBEm2
         wFv0/yrfJxKJjj5fGXONPq8J8tVTA8iwVRGTbgQZy96xSSPEQvOiH7+LFMkJu4Yc351J
         HNsC2PmdDqGC84KkiPG46IPldli1Cio4k+TPO3rePgCqgSebCgrdvFRLDRaW6hpMm8/R
         hTyA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Pn0WcN/1+/O3M39SqyU9EIj35L8ImijpvTF9NVsKlHyi7bAK3
	2g1YJ+HdWqr4u8yYPYbTbiQ=
X-Google-Smtp-Source: ABdhPJzDBRZ1kpIOL2rygCnntWAKOxeKt+alK8C8KueMUG28m5/b9BAR6YAi1uehNLrmTVABksfQHw==
X-Received: by 2002:aa7:82d8:0:b029:160:947:a852 with SMTP id f24-20020aa782d80000b02901600947a852mr19872919pfn.67.1605044133118;
        Tue, 10 Nov 2020 13:35:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b20f:: with SMTP id t15ls5811750plr.3.gmail; Tue, 10
 Nov 2020 13:35:32 -0800 (PST)
X-Received: by 2002:a17:902:b695:b029:d7:d966:1a3b with SMTP id c21-20020a170902b695b02900d7d9661a3bmr12563572pls.5.1605044132602;
        Tue, 10 Nov 2020 13:35:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605044132; cv=none;
        d=google.com; s=arc-20160816;
        b=XWE7Y1r2O8oabKl6dNnXsm6WkDIOGJGt+6jQ4VtFzJVs/j+Q8/1iTALxQEYAWghVwC
         cJvEc8xgLn8bsRG7KshV6EukMkNPXkRzIS7bfEunimKAJ6U5+SJeDqQMn/vXEbysXlu7
         +0M1unEYpOaRN7/nZ466ocHjZYOheRK167k5NOILKOtu1MlhIEN2KgoV19LHs9tUEyLa
         H18q3kvH9dsWeoNy+GBpyG8r8mjzlYxVSqfHEUNXi+sorpzzTZK1R0pFTngso/tymKHL
         pKTcBmJ71hTumqD2Rm14tR5wmCaDfWLDEClXQ16nbHvNq5OHqagZiHUDc3ZUX7pVKPjp
         38AA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ttwuWSL7bQX3ZiTCFdG/qTiwhfcSq07Wu6lKeQu2TjU=;
        b=q1kmYrcerIVHJW5nkBnTiedUqeDETTg2UcCcJvDm5iXkuLS0ejldza0ZmPOPQbcNNt
         PEFGVNGFKHXgGyIEkvBS7JVF4Qp1zPRpiXnW7SNzZrFULiutBg1OOkex7/3/YQgHVxZQ
         PFHpYZns1hlOp8RdPkaOHOyNm4hIro2UicCIdjyChB9pSZYJKmZqTSHF1fclHgF50HfQ
         nqmVEUDXQ9KKCsIRilsLyGCLDCDWtFPqdaqoFwZtWI2KZDA5t2suUXYHdJoHlDWBpx/W
         J/tcs73BMOqqyz8t9MJ+1CuAzJk12qBoFALb4xx49wxI6ztJddLLHeaL9fto0GtWACB2
         46pQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=p0q11j1n;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t126si1321pgc.0.2020.11.10.13.35.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Nov 2020 13:35:32 -0800 (PST)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 08AD620809
	for <clang-built-linux@googlegroups.com>; Tue, 10 Nov 2020 21:35:32 +0000 (UTC)
Received: by mail-ot1-f48.google.com with SMTP id i18so191867ots.0
        for <clang-built-linux@googlegroups.com>; Tue, 10 Nov 2020 13:35:32 -0800 (PST)
X-Received: by 2002:a9d:62c1:: with SMTP id z1mr14939625otk.108.1605044131223;
 Tue, 10 Nov 2020 13:35:31 -0800 (PST)
MIME-Version: 1.0
References: <20200409232728.231527-1-caij2003@gmail.com> <20201107001056.225807-1-jiancai@google.com>
 <CAMj1kXG+qb267Hig6zoO=y6_BVsKsqHikvbJ83YsBD8SBaZ1xw@mail.gmail.com>
 <CAKwvOd=pHgT3LsjYH10eXQjLPtiOKDj-8nJwjQ=NMSFLTG1xAg@mail.gmail.com>
 <CAMj1kXHDzj3Q-sCv1szseUC7g2bWRFeVP6WME-sMqDf+0wyU8Q@mail.gmail.com>
 <CAKwvOdkXz5wOwKQDsi5jt21ov3xETSByAqxGLQ=7U6Gsp46zcQ@mail.gmail.com>
 <CA+SOCLJSSR62VfWhKx9R1cxT-CHXD7RN08eJBYxUH8zzyWos9Q@mail.gmail.com>
 <CAKwvOdkpHdQF9Ko8FbP_SN=QfDiMq8ra5TSj_KHGRCbJdyYm6w@mail.gmail.com> <CAK8P3a1tU8g4HfsoYH4qa6C4Kv8QE3nv=UPSyH7824GXCYwUDQ@mail.gmail.com>
In-Reply-To: <CAK8P3a1tU8g4HfsoYH4qa6C4Kv8QE3nv=UPSyH7824GXCYwUDQ@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Tue, 10 Nov 2020 22:35:27 +0100
X-Gmail-Original-Message-ID: <CAMj1kXFzECLh2kNWW8Pheu6AvTFqN+t4KO3-iSgxyZKHJNjAjw@mail.gmail.com>
Message-ID: <CAMj1kXFzECLh2kNWW8Pheu6AvTFqN+t4KO3-iSgxyZKHJNjAjw@mail.gmail.com>
Subject: Re: [PATCH v2] Make iwmmxt.S support Clang's integrated assembler
To: Arnd Bergmann <arnd@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Jian Cai <jiancai@google.com>, 
	Manoj Gupta <manojgupta@google.com>, Luis Lozano <llozano@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Russell King <linux@armlinux.org.uk>, 
	Nathan Chancellor <natechancellor@gmail.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=p0q11j1n;       spf=pass
 (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Tue, 10 Nov 2020 at 21:38, Arnd Bergmann <arnd@kernel.org> wrote:
>
> On Tue, Nov 10, 2020 at 9:11 PM 'Nick Desaulniers' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
> >
> > On Tue, Nov 10, 2020 at 12:10 PM Jian Cai <jiancai@google.com> wrote:
> > >
> > > I tried to verify with ixp4xx_defconfig, and I noticed it also used CONFIG_CPU_BIG_ENDIAN=y to enable big endianness as follows,
> > >
> > > linux$ grep ENDIAN arch/arm/configs/ixp4xx_defconfig
> > > CONFIG_CPU_BIG_ENDIAN=y
> > >
> > > Also it appeared arch/arm/kernel/iwmmxt.o was not built with ixp4xx_defconfig. The commands I used
> > >
> > > linux$ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make CC=clang ixp4xx_defconfig
> > > linux$ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make -j32 CC=clang
> > > linux$ ls arch/arm/kernel/iwmmxt.o
> > > ls: cannot access 'arch/arm/kernel/iwmmxt.o': No such file or directory
> > >
> > > Did I miss any steps?
> >
> > Yes, you need to manually enable CONFIG_IWMMXT in menuconfig or via
> > `scripts/configs -e`.
>
> To clarify: ixp4xx and pxa3xx were two platforms based on the XScale core.
> ixp4xx was commonly used in big-endian mode but lacked iWMMXt. pxa3xx
> had iWMMXt but doesn't allow enabling big-endian mode because of a Kconfig
> dependency, meaning that nobody has ever tried it, and it's likely broken.
>
> Later 'mvebu' parts (Armada 510) do have iWMMXt and allow big-endian
> mode, but those are BE8, with non-reversed byteorder for the instructions.
>
> So none of this matters in practice, but it's very satifiying to know
> it is finally
> all working with the integrated assembler in all those combinations, at
> least in theory!
>

Thanks for the perspective. I wasn't aware of all these details, but I
just wanted to confirm that .inst works as expected in all
configurations.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXFzECLh2kNWW8Pheu6AvTFqN%2Bt4KO3-iSgxyZKHJNjAjw%40mail.gmail.com.
