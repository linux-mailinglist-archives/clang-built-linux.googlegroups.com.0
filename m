Return-Path: <clang-built-linux+bncBCXKBPVPXAFRBT4N2P2AKGQEAGPWYZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-f63.google.com (mail-ed1-f63.google.com [209.85.208.63])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C6921A6CF4
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Apr 2020 22:08:47 +0200 (CEST)
Received: by mail-ed1-f63.google.com with SMTP id cm25sf9998258edb.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Apr 2020 13:08:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586808527; cv=pass;
        d=google.com; s=arc-20160816;
        b=dEQ1oiz2wP372QeycQiVZPHJ39wyQfkCpwZitvlTZyA99ZcnWvVkG3+qq9spy9v6wb
         YktxJvFGm7xN98RHVZCK2CKZ5LjZZSK7IbtbUNzd0v/sr5NNXlN2DyZtmmO15lijXawN
         MpLLyNFteEZUE/md1UaFBBiMLnsi+P+mHWMMiGbUF8OdEvRZY7gYpSg7tx+xDtq0cPw3
         Dhn3oG6hMBjbkZm188y9xUeI/iaQDcomtaSsoid1dQhRRLksug8Szt2XtUSNmZE8ILWe
         BLv1BaryrRvezXcvLd9uuBSTpR/WWAEeF2LtrNPTIoAsMrc3tchwxeESnctfyfDFN+jc
         wlCQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:sender:date;
        bh=pr1EWOjxJ80CmDrvfzr7CTPPKFNARqC1obsVLNRAZWQ=;
        b=QYSMQD2yTuBu1bJgZEFujf8cMMxMBxD+neNTDkvgMi1LB8QmHYXAJ08e4VD4bVqXuZ
         crc+bvW4ruHprEiUREhE0MTkHZqNNMKwIuy0WYjUQhgsX5Qt5ApY0dQBG94aHd9RTn73
         eZtWQWB3mHPdwqXgirGPTl/y9Fq/OQyMkWVmA/TH4Q9MXsbpr0kUnwQ6da+/mB5UFQ0+
         0FfT2fp9kkFQCmIfhNsg72kukrVRDFCOYK82NPtbDOGScr6m86ZqzkISOcv860gOCYCU
         9bCHJ2w+Jp5XyvY+wt3brX+SDW7dz2yOT//BtU+B2EGz5GvyOTr5wM45K87igIsQwBPO
         0/7w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of macro@linux-mips.org designates 148.251.95.138 as permitted sender) smtp.mailfrom=macro@linux-mips.org
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:sender:from:to:cc:subject:in-reply-to
         :message-id:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pr1EWOjxJ80CmDrvfzr7CTPPKFNARqC1obsVLNRAZWQ=;
        b=OcrD8isD51LRZ4m7ifKHiO6xKwsIf4ui3J5IzDyKmujbpMcDYDXzekAujfO0QtDjFz
         qo1d6ykEyn8PD2k6wn2iF+KuRsrOjmbyCs8hNT98LDmuMwkwfQ0tX6lH6sS5newmuWBT
         fJoTI9Tz5aBpoQYPdebXarWXutApN4tlO/F2h3dGM9hqD6ZaREZ/u4AkmJEjKB/qqkgm
         Dq+EcX8hfTaGGCf7rIqzLCEterrU4OlosW2PMdKAznYQ5/AHhIZWsNclIwTleBa5xkse
         qpdTJYOxaNxwkkETjhVgrTST21q8VPqGM52k2wK1D7LIDmk5BMnd3LjQ4jh98NHawEmI
         ls2Q==
X-Gm-Message-State: AGi0PubMo6o4o4Q9f+X8I3U77BBrV56YgyJvF9Yhg0qeBKMHh96OV/EO
	TWwSzV6Ar4u4T3EAQQBK+i4=
X-Google-Smtp-Source: APiQypKJTPRAb0igOxV+EiMO31yP3dzxqly0sZ7gL+O6xZoMCpcfAqJogvo3Pdnxy9T9CcFp6Xgdow==
X-Received: by 2002:a05:6402:d4:: with SMTP id i20mr17429679edu.115.1586808527128;
        Mon, 13 Apr 2020 13:08:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:a985:: with SMTP id jr5ls594729ejb.10.gmail; Mon, 13
 Apr 2020 13:08:46 -0700 (PDT)
X-Received: by 2002:a17:906:8257:: with SMTP id f23mr17691139ejx.196.1586808526510;
        Mon, 13 Apr 2020 13:08:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586808526; cv=none;
        d=google.com; s=arc-20160816;
        b=UmWTvD3pFxu3zkS00kYKMAg7ny/JVm/ie283AQqgEsEhBnZDa3tL/TP007C6FQYRGL
         +CGWl1EwAfDwUnSe/3BMxEnLpUWtmFTik7yfsTHYgNDM8lyNfWZsRLO8XFn8XfR+9WaV
         ct8iLgbevztMZ3xAuqFwQIbXp1XaEdHgGWBoRj2EAWcND69UdUdwm/aZdxHuKjkzmHvk
         pOzsIeR5r6lIC9B6eNbpZtCfYsMFmiOUXWMpLaT05X33I19wWqWl0R59gy5AZTJA05Mf
         A3pGuIFxV/RfCta0OwcWbgsEGxMbkS0eaHFwbbgJfnQ8qVdoJ2poLQ0gd5Z1htepLVM/
         IfnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :sender:date;
        bh=1GSryuWF41kUZIJ+Rg0TTIFdStG1eeaBtgeh9CE776A=;
        b=lUnS8RJPentjzgEPYhLCVds2wsZCht1MeKgT925JH4eJqGC61gwqowqTW3UZCuZmSi
         ZW9ZSRRFiycDycCrxSSt1pkV03JzboG8718b/xGfCZktIQUmYPnXpp3vtr5W076d2gIz
         k/K8ToYUipagUCQXOYzcmzYEkIey6doNiiO2SI6HCvmVmDs96A8TiGgK4dvdrQVcLdWW
         Y7uAyPq1+d8Xtj5NLwwUA1DnDSyKUGxcs5naKHBWQcWobGyO5Rpf6z4SLqiF4D1j2FbQ
         E6sRcVtbO02SmtDtLadrALZkr3iRqdnlAzEFcxfS8Jt7zfzGmtSnC8ZWsQ/nQeX/vFF8
         P4sg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of macro@linux-mips.org designates 148.251.95.138 as permitted sender) smtp.mailfrom=macro@linux-mips.org
Received: from cvs.linux-mips.org (eddie.linux-mips.org. [148.251.95.138])
        by gmr-mx.google.com with ESMTP id a41si356307edf.1.2020.04.13.13.08.46
        for <clang-built-linux@googlegroups.com>;
        Mon, 13 Apr 2020 13:08:46 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of macro@linux-mips.org designates 148.251.95.138 as permitted sender) client-ip=148.251.95.138;
Received: (from localhost user: 'macro', uid#1010) by eddie.linux-mips.org
        with ESMTP id S23992798AbgDMUIqQrgxF (ORCPT
        <rfc822;clang-built-linux@googlegroups.com>);
        Mon, 13 Apr 2020 22:08:46 +0200
Date: Mon, 13 Apr 2020 21:08:46 +0100 (BST)
Sender: "Maciej W. Rozycki" <macro@linux-mips.org>
From: "Maciej W. Rozycki" <macro@linux-mips.org>
To: Fangrui Song <maskray@google.com>
cc: Jiaxun Yang <jiaxun.yang@flygoat.com>, linux-mips@vger.kernel.org,
        clang-built-linux@googlegroups.com,
        Nathan Chancellor <natechancellor@gmail.com>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        Borislav Petkov <bp@suse.de>,
        Kees Cook <keescook@chromium.org>,
        Heiko Carstens <heiko.carstens@de.ibm.com>,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4] MIPS: Truncate link address into 32bit for 32bit
 kernel
In-Reply-To: <20200413153453.zi4jvu3c4ul23e23@google.com>
Message-ID: <alpine.LFD.2.21.2004132107550.851719@eddie.linux-mips.org>
References: <20200413062651.3992652-1-jiaxun.yang@flygoat.com> <alpine.LFD.2.21.2004130736410.851719@eddie.linux-mips.org> <20200413153205.4ee52239@flygoat-x1e> <20200413153453.zi4jvu3c4ul23e23@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: macro@linux-mips.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of macro@linux-mips.org designates
 148.251.95.138 as permitted sender) smtp.mailfrom=macro@linux-mips.org
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

On Mon, 13 Apr 2020, Fangrui Song wrote:

> >> > diff --git a/arch/mips/kernel/vmlinux.lds.S
> >> > b/arch/mips/kernel/vmlinux.lds.S index a5f00ec73ea6..5226cd8e4bee
> >> > 100644 --- a/arch/mips/kernel/vmlinux.lds.S
> >> > +++ b/arch/mips/kernel/vmlinux.lds.S
> >> > @@ -55,7 +55,7 @@ SECTIONS
> >> >   /* . = 0xa800000000300000; */
> >> >   . = 0xffffffff80300000;
> >> > #endif
> >> > -	. = VMLINUX_LOAD_ADDRESS;
> >> > +	. = VMLINUX_LINK_ADDRESS;
> >>
> >> The CONFIG_BOOT_ELF64 cruft right above it looks interesting to me,
> >> never have ever been used.  We have had the current arrangement since:
> >
> >It confused me either.
> >It's only used by SGI so probably it's time to rename it as
> >BOOT_SEG_ELF64.
> >
> >Wish someone could clarify what is it.
> >
> >Thanks.
> 
> Agreed that -Ttext in
> 
> arch/mips/boot/compressed/Makefile
> 100:      cmd_zld = $(LD) $(KBUILD_LDFLAGS) -Ttext $(VMLINUZ_LOAD_ADDRESS) -T
> $< $(vmlinuzobjs-y) -o $@
> 
> and a few other places are brittle. They need to be replaced with Output
> Section Address:
> (https://sourceware.org/binutils/docs/ld/Output-Section-Address.html
> https://github.com/llvm/llvm-project/blob/master/lld/docs/ELF/linker_script.rst#output-section-address)
> 
> -Ttext changes the address of .text . This can lead to the change of the
> address of the text segment (RX), but this is not guaranteed (many
> sections can be placed before .text and they are not affected).

 That is unrelated, but you're free to clean it up of course.

  Maciej

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/alpine.LFD.2.21.2004132107550.851719%40eddie.linux-mips.org.
