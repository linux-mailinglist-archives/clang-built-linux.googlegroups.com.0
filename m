Return-Path: <clang-built-linux+bncBDTI55WH24IRBZFZV7XAKGQE6AG2QIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id D573FFAEA6
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 11:37:25 +0100 (CET)
Received: by mail-qt1-x83e.google.com with SMTP id x50sf1053447qth.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 02:37:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573641444; cv=pass;
        d=google.com; s=arc-20160816;
        b=CGfGrzS7ube5PYMJUt8DQLJABzyPH2QQXQQYaevYqMS8C5UMjBfzm6DLHWz+/Bu/+1
         kriHgz/S8/Rp/+jzKTg79d4y7BSPZWcZFoy1RYFrrT3ufHHtXk4dih7rxZaBlQb21vqO
         kungEzEMmXXfxh1Z4oKqaN9UA0DEu+gRtaHDc/lfOeIbFIELbZnHLtrEr1dJCTb6Lzv9
         oAH3K63Dsa/LSPGzZIN4/aKcIUDyoJ0aU4UeuLVkKqtr6GNtnwx2t5QwhJpBFdmX2R9N
         EEiM12uj6Xl0lK4Tkn0A2bL1Y5GeY1WJ2gLrbfVIsUdDII3o+NshOcPYjt8DRAI/Zc+k
         1pQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=2ZgeR2ImEt6DOrsVweomhm6ZtrWBw7/lZz2TD9uuOIQ=;
        b=m5lR6ztxGNZx8JcZMLQYSlAOplDjWf0A/Ly0XagMNgP8NU0d7YFEqPa9VlgQ57hEfV
         d5tJjDsqqDcsO7b69/IZTMUgabYcYpdQJj5ocjvvLOGUDKjKLz4XdS5DSuBRF2M4CYme
         e/ZH/mrSTCIWMTJZ+wYgNe2UDiSt5v+Xeykt3uTxTMjDs1S1CC6x1jlO1HLECc2LKG4Z
         G8ImM/e0yMr5X0sd5UtSE9EpDzEFxHXgXe3YZXJlzN2Qo9NGxZegFIy2jke/POz1njD8
         Af5+G+3si2HGFaxMUu4SIIo3PNDYCIuD0vxJDmxSQHDhXbHNIxqeeGKrDcHUQc3agzT4
         WEHw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=jmmykf0H;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2ZgeR2ImEt6DOrsVweomhm6ZtrWBw7/lZz2TD9uuOIQ=;
        b=nLBU3RS1AtuU2eEC5gsjTHWfF7JHCse99UDkjSNvIxI04r7hm31TX7KWW4jRGEy+WK
         WK59rnszfkxVo1NFhMvfY1S5u1blcbDKIm9BYIOeK0Uv1sTATKkcC3H5xZlv6ugVW4VC
         6s4m2k1qB4qaoZF1t4QrFA/zO5raUBDlJMdAc9cZu2GAA6QBPPiHaLyV6vSEiWFk6fAH
         NztryCHDgpriBN9VELWOssKnjD42nxGCXb5de2Dmu7fgQjGJsj7Ba7X1r+3qHPPhU5kD
         B4jNoiQRHpfUpgNPYAeoHu9D4PSPJXEyonXQ3Jwi5cnRKyFKBzlK1SQxMpeySZMD9BjA
         DVKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2ZgeR2ImEt6DOrsVweomhm6ZtrWBw7/lZz2TD9uuOIQ=;
        b=OPPs2t6i5hNreIP4mh+p76C0atEJoWS8aTnZ7pcp1cxVN2GEZXaWU3UdFtSFdLHXoC
         83ZrsIK2LKbR67bbs4R8TkJi3Osd1q5jsng9AxU7RqplBIJqMNGdICJREbSRBikXYHGZ
         4FNrvoZxbrJ0m8JAKTq+RRNipOD3KkiOm+wbrSAy2+QePb9MLLYhibYCfFEv2O0fNXgt
         lxPkT7aW2TdWmqFtxovEt/oj0PTnLIvjJxHAd0pXz5HdLe5GK/v65UpoMbPZWOOGWbsI
         9FAye9dsJpDWqy6hWY8wPGAPGZPv+dOWmg8BVGmNdT8+2goey/rureRE00CZi4V0OpxW
         mKRg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUAGpDFs/PmN9u/+v345bYV1eUST5GLdkfntQ03N9eNp3OHiljh
	WGjg+wWw6zFqqTG63Jn0qps=
X-Google-Smtp-Source: APXvYqyanPouzMKr3Xv8zEhodAa5/Jsc17EpA/r2/iOm03A6ez/leUa1bD73XQnKX8JYR4r4NVeXNg==
X-Received: by 2002:ac8:53c5:: with SMTP id c5mr1918120qtq.348.1573641444733;
        Wed, 13 Nov 2019 02:37:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:4f02:: with SMTP id d2ls517644qkb.9.gmail; Wed, 13 Nov
 2019 02:37:24 -0800 (PST)
X-Received: by 2002:a37:4d02:: with SMTP id a2mr1774014qkb.355.1573641444163;
        Wed, 13 Nov 2019 02:37:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573641444; cv=none;
        d=google.com; s=arc-20160816;
        b=tYjy+Rl9lEZV/heWIvuVJ8aBffYueEl9NMlf4BTIF8HK+zeitDlIAdorI8ydYX+auK
         iARclRtT/XhZ88B3RbXaA62/nHxICco+6DkbDyj+f0943T4jE3764JdYSdEKZJ0nEoQs
         39bIf5t1l0PxBzIkXUtQU5oTPft4QzMJze2NGu3Imeih+CtZl/ZmAgoUoR4+ioUo0YpZ
         74Ic4TsoUHqSjZp9Qoru06Cd6V4uJvl55iY7M3iQ1F0QMkEECHdL312XsznD+M6Jm32j
         jHOswfE+nlAUYqoKMV1cfOGtM4kE0mJDfpN0lt1Os3O1JR/LZHe6IEc3/ITOCyvb7LK+
         g6og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=vcPGyZfOGoTDpK6w4BnpgOccRY8K/jMLES3lTm1Hx/Q=;
        b=Zpd+V6J504SMT2CzFJ2Y1dQ2+Li9LdZJ+qFTWEIT01tRcCkzB6hDPhdRNwuyeifoLZ
         YWgAFe+SMWc9Lwdwu8705UUKYDjHdgPjrdka70OnrVWyVx8biKHzLyBcSaDkVRhjKavP
         NdeL5zNU4zIa9EqEumzG+PwbqdAHqP8K9BDs1N8ecVcLUDvjYr5MCvLWU2mw4zoXMP9Q
         PArrbHO3paq+7UOb0iaEjjD/+3Frnhf3FlJqowC8LpcpPcbJjRhFtY1rssC/Kq81M2Qd
         UqYrbWCJQomYWw9mvMOHdyZXU/uLUqxw1En8orsXWH+6MhzQukeB1LK0eQuYJp/qyyiU
         rvdg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=jmmykf0H;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
Received: from conssluserg-01.nifty.com (conssluserg-01.nifty.com. [210.131.2.80])
        by gmr-mx.google.com with ESMTPS id j40si129733qtj.4.2019.11.13.02.37.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Nov 2019 02:37:23 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.80 as permitted sender) client-ip=210.131.2.80;
Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com [209.85.217.47]) (authenticated)
	by conssluserg-01.nifty.com with ESMTP id xADAb33P019436
	for <clang-built-linux@googlegroups.com>; Wed, 13 Nov 2019 19:37:03 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com xADAb33P019436
X-Nifty-SrcIP: [209.85.217.47]
Received: by mail-vs1-f47.google.com with SMTP id x21so1008385vsp.6
        for <clang-built-linux@googlegroups.com>; Wed, 13 Nov 2019 02:37:03 -0800 (PST)
X-Received: by 2002:a67:2d08:: with SMTP id t8mr1484550vst.155.1573641422450;
 Wed, 13 Nov 2019 02:37:02 -0800 (PST)
MIME-Version: 1.0
References: <20191112134522.12177-1-ilie.halip@gmail.com> <20191113103055.GA25900@willie-the-truck>
In-Reply-To: <20191113103055.GA25900@willie-the-truck>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Wed, 13 Nov 2019 19:36:26 +0900
X-Gmail-Original-Message-ID: <CAK7LNATD3696a0BRCB_jKCMdG_PDWUSnuQwWj1+n1okpe+UD7g@mail.gmail.com>
Message-ID: <CAK7LNATD3696a0BRCB_jKCMdG_PDWUSnuQwWj1+n1okpe+UD7g@mail.gmail.com>
Subject: Re: [PATCH] scripts/tools-support-relr.sh: un-quote variables
To: Will Deacon <will@kernel.org>
Cc: Ilie Halip <ilie.halip@gmail.com>, Peter Collingbourne <pcc@google.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: yamada.masahiro@socionext.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=jmmykf0H;       spf=softfail
 (google.com: domain of transitioning yamada.masahiro@socionext.com does not
 designate 210.131.2.80 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
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

On Wed, Nov 13, 2019 at 7:31 PM Will Deacon <will@kernel.org> wrote:
>
> On Tue, Nov 12, 2019 at 03:45:20PM +0200, Ilie Halip wrote:
> > When the CC variable contains quotes, e.g. when using
> > ccache (make CC="ccache <compiler>"), this script always
> > fails, so CONFIG_RELR is never enabled, even when the
> > toolchain supports this feature. Removing the /dev/null
> > redirect and invoking the script manually shows the issue:
> >
> >     $ CC='/usr/bin/ccache clang' ./scripts/tools-support-relr.sh
> >     ./scripts/tools-support-relr.sh: 7: ./scripts/tools-support-relr.sh: /usr/bin/ccache clang: not found
> >
> > Fix this by un-quoting the variables.
> >
> > Before:
> >     $ make ARCH=arm64 CC='/usr/bin/ccache clang' LD=ld.lld \
> >         NM=llvm-nm OBJCOPY=llvm-objcopy defconfig
> >     $ grep RELR .config
> >     CONFIG_ARCH_HAS_RELR=y
> >
> > With this change:
> >     $ make ARCH=arm64 CC='/usr/bin/ccache clang' LD=ld.lld \
> >         NM=llvm-nm OBJCOPY=llvm-objcopy defconfig
> >     $ grep RELR .config
> >     CONFIG_TOOLS_SUPPORT_RELR=y
> >     CONFIG_ARCH_HAS_RELR=y
> >     CONFIG_RELR=y
> >
> > Fixes: 5cf896fb6be3 ("arm64: Add support for relocating the kernel with RELR relocations")
> > Reported-by: Dmitry Golovin <dima@golovin.in>
> > Link: https://github.com/ClangBuiltLinux/linux/issues/769
> > Cc: Peter Collingbourne <pcc@google.com>
> > Signed-off-by: Ilie Halip <ilie.halip@gmail.com>
> > ---
> >  scripts/tools-support-relr.sh | 8 ++++----
> >  1 file changed, 4 insertions(+), 4 deletions(-)
>
> Thanks, I'll queue this as a fix.
>
> Will

Reviewed-by: Masahiro Yamada <yamada.masahiro@socionext.com>


-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNATD3696a0BRCB_jKCMdG_PDWUSnuQwWj1%2Bn1okpe%2BUD7g%40mail.gmail.com.
