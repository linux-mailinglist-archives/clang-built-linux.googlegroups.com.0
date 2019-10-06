Return-Path: <clang-built-linux+bncBDY3NC743AGBBREW43WAKGQEE3ALBPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C967CCF03
	for <lists+clang-built-linux@lfdr.de>; Sun,  6 Oct 2019 08:35:50 +0200 (CEST)
Received: by mail-pg1-x53c.google.com with SMTP id d3sf7462404pgv.9
        for <lists+clang-built-linux@lfdr.de>; Sat, 05 Oct 2019 23:35:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570343748; cv=pass;
        d=google.com; s=arc-20160816;
        b=LsqaZtRXDuZHPMfWWzU3J6CRxnq30VR4qq2BJBwGMReLZwxlSNDjC8gkPBOjBNDenW
         /DcxabgE81l+epB1AxEegnjJt1ULYT3B6Vyyi62Rz32szyJNc/8J2zeAjsCrUoMy/5yi
         kHzHAjZPGwcC+ja7jMwrI+ttdlZnEfWH4Dy+tOIRIEygVz2C4C0ONgrTnDf5IXvxMNhO
         Yc6qkxDD6SKLutup3ZmVmX0iG7HGg33nMAQnPwa0gvc3mGkf6BK+UXgpXbeWiDamvMGY
         OzILZ2AU/fD1O5TMP8p86mI8iiZRziEZmFx7NSnrqs8tG28TXYwuF5eand7g4BX6eRqm
         buuw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=bnrgVMhN0pGHOp7jDpe8XIpVruB6358aVLrCy+5j3u4=;
        b=V5lZ+E2pM97Q9Wn0vb6BI7HTgag61AkFuO0+STKNawYfvFEjkjouVpbcrFxc0XLKZ1
         B7ZjSGsdB+hkGlmNTsTzRufHgVkXe2DGq5Nrd2fLX06K5rYFR8aeYOfoh2h6UiU2w/vO
         IrpAd26DzRDIKs7qYpvTYvatHSFsb+eQpSZoCyzUS8sYmW2ge+xmq0jKWZJzZQwr49fx
         Yydi3kk717lBlOy8iLaZCCngDJsg66SFbZicTUpD9N3CWX8wqVvKW0RaR7ub3H6RDtYb
         s5VbJXaSVRNGrNF8/vmh/TeGXrZhKdI7sl5b0cwjAuTzkzKARBBjDOloM7pJzR4dT2Um
         Z/Gg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.193 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bnrgVMhN0pGHOp7jDpe8XIpVruB6358aVLrCy+5j3u4=;
        b=Kq/ma3EQiejTfNF4y/oeG+tTQ9Z1fGmoNp53NHZ/kiqXquEjbUMw0ufLMpQYJVwwKw
         MNq10p2HpZphKQa2nscXYrBtJ0ecaa3Jc42j5ktJV7+EKT9u7hIpxhkCSbQ2XeGoj6h4
         U/ft89xMdlpjZ83m+Ne2Ww5RhV6b53Hb6TiYz2Cgj/NT+dazxUpMz7MAU+7JTYZa8I/3
         LKA/eZA6KUlCHwIrKJP4i3uDaTyPbnLBzej/tvDrPjNDf3HNcpki616wRxLBCiuWwy0L
         i2xt1h+wiMF+zxwwONxD3675huDrBVUPkJs/eY/ngrH+03be15erjhhSVKBVOa3Oto6u
         yBqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bnrgVMhN0pGHOp7jDpe8XIpVruB6358aVLrCy+5j3u4=;
        b=c+81fk0Vu8C7M3kDSNf7nXXAQoAwc327ufRPHO+2YPXJHORLUDPYRs+CkSKcsIVf4e
         JWX8OYc3De3AzaCM1XMl9eCHLQo4Uh5qt3tzAUNxaoLXT4G/VFU9v6uHhF2iINSm3MIU
         3GXQqI7v/5WfgINnWSBvvEL1KHMPdjSPrVyR8kd5n0xuHeHkZIuy0xOVm9H3Ekdh1bNY
         St9lJGQA387wWwLvx5P21hSUN4yJLGqFfUIbatIEA4ZYiQBN16hAWJsxzWnUmhPXbfMK
         wVFndwaKeN61jOIelu0H34pC0u9Pibpsxbkf8gVhCyzgdysQDIN0lRlxUxDM32Q5QL2M
         Mysg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUxQmkz/5lDSDVtgG9C0F3SXbAavmnehizrM4FusCMetLKGCmOl
	JOd5T/no8ky1fkJ8QbKEiZk=
X-Google-Smtp-Source: APXvYqwTD+5rFizV0BrTvD4l5i7yOiszk2qGdo2AHNCrTlTAdaOjXXYK+MfFjxW6Tpskprq/P0MdFw==
X-Received: by 2002:a17:90a:6348:: with SMTP id v8mr26357783pjs.7.1570343748729;
        Sat, 05 Oct 2019 23:35:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:35e6:: with SMTP id r93ls2075404pjb.2.gmail; Sat, 05
 Oct 2019 23:35:48 -0700 (PDT)
X-Received: by 2002:a17:902:8e8b:: with SMTP id bg11mr23094994plb.24.1570343748166;
        Sat, 05 Oct 2019 23:35:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570343748; cv=none;
        d=google.com; s=arc-20160816;
        b=xLWQiii/3/FtICJmo8IcT88LpAxwH7b9MxXsh6pVGHjg7x1s6x6yThQRJKsbcENfzQ
         zd5K707akAaapC7qquA/xTK5XjdVxWRbPNgYiOWxcy+fCYLHhkAZ3enu96+oLK6R7ddq
         tWfblxvZusQ6/i6dA0S/OjhXjizkm9nkTgTqHks9cEO2oEQ0NxDKoF2tC2cp8drcYk4I
         WGraIcPLV7yVobzym2L+B2mh14uEKZJ6JYAmU0lGf1hGC71AJyvkeUCDqjj6YRDwgzR2
         f+/muVRAbmW/fjWxNFvRWS4UXfvhFK6baUrwvrBb9ZWavBsA+IsXM5apc7M8RG1/EMka
         evfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=sJ+11dR/lRfhDSF/n+PzmHJ21WpTFi6/ifeOERUlo3w=;
        b=Qz6kK6zYQdDFCR36idCxHWFSGrwTwPxohW/zgfhQlxTTgmQBPWFcK1ON1r4x9oSISA
         dmj9H0oIVeSKj1oqnJezGfKzX8l1M9gwFmpBeTd2xcIwsyAc0VcMh/ZKI24XaKtg62qC
         hE/IfY13+eJy/v6vGsnI5dcWaXPcdjvVJsav4d9fJzuDXcZ1kf+qJCOZOestoMTinfR7
         eVx7qEAtuhwqhm7sCyQGV2jiBQrNBxHd+TXnyQE2YMI/PamavCcFxES7CcZ2B29C4A8o
         yC1OY4SOMMmBW9GkE0Cf3rVVbFm9A4cnB4m0QT1Osdgb6QOYcODrCcVdAZxcnqyhC2ku
         rBRg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.193 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0193.hostedemail.com. [216.40.44.193])
        by gmr-mx.google.com with ESMTPS id x2si708317pfq.3.2019.10.05.23.35.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 05 Oct 2019 23:35:47 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.193 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.193;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay08.hostedemail.com (Postfix) with ESMTP id A0577182CED2A;
	Sun,  6 Oct 2019 06:35:46 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::::::::::::::::::::::::::::::::,RULES_HIT:41:355:379:599:800:960:967:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2525:2553:2559:2563:2682:2685:2828:2840:2859:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3353:3622:3865:3866:3867:3868:3870:3871:3872:3873:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:5007:6742:7775:8985:9025:10004:10400:10848:11232:11596:11658:11914:12043:12050:12297:12555:12663:12700:12737:12740:12760:12895:13069:13071:13311:13357:13439:14096:14097:14180:14181:14659:14721:21060:21080:21433:21451:21627:30054:30090:30091,0,RBL:47.151.152.152:@perches.com:.lbl8.mailshell.net-62.8.0.100 64.201.201.201,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:neutral,Custom_rules:0:0:0,LFtime:332,LUA_SUMMARY:none
X-HE-Tag: price21_6c2dfa516272e
X-Filterd-Recvd-Size: 3059
Received: from XPS-9350.home (unknown [47.151.152.152])
	(Authenticated sender: joe@perches.com)
	by omf10.hostedemail.com (Postfix) with ESMTPA;
	Sun,  6 Oct 2019 06:35:43 +0000 (UTC)
Message-ID: <52794b248ba13e88ab4c30c9b6ea55a7be30df5d.camel@perches.com>
Subject: Re: [PATCH 4/4] scripts/cvt_style.pl: Tool to reformat sources in
 various ways
From: Joe Perches <joe@perches.com>
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, linux-kernel
 <linux-kernel@vger.kernel.org>, Kees Cook <keescook@chromium.org>, Borislav
 Petkov <bp@alien8.de>, "H . Peter Anvin" <hpa@zytor.com>, Thomas Gleixner
 <tglx@linutronix.de>,  Pavel Machek <pavel@ucw.cz>, "Gustavo A . R . Silva"
 <gustavo@embeddedor.com>, Arnaldo Carvalho de Melo <acme@kernel.org>, Kan
 Liang <kan.liang@linux.intel.com>, Namhyung Kim <namhyung@kernel.org>, Jiri
 Olsa <jolsa@redhat.com>, Alexander Shishkin
 <alexander.shishkin@linux.intel.com>, Shawn Landden <shawn@git.icu>, 
 "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Nathan
 Chancellor <natechancellor@gmail.com>, Nick Desaulniers
 <ndesaulniers@google.com>, Andrew Morton <akpm@linux-foundation.org>, David
 Miller <davem@davemloft.net>, clang-built-linux
 <clang-built-linux@googlegroups.com>
Date: Sat, 05 Oct 2019 23:35:42 -0700
In-Reply-To: <CANiq72nwDgMgXNczW=JRANzH72=f0ukwVoPaud1d7J4YQLQX=w@mail.gmail.com>
References: <cover.1570292505.git.joe@perches.com>
	 <4a904777303fbaea75fe0875b7984c33824f4b68.1570292505.git.joe@perches.com>
	 <CANiq72nwDgMgXNczW=JRANzH72=f0ukwVoPaud1d7J4YQLQX=w@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.32.1-2
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.193 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

On Sat, 2019-10-05 at 19:31 +0200, Miguel Ojeda wrote:
> Hi Joe,

Hello.

> On Sat, Oct 5, 2019 at 6:47 PM Joe Perches <joe@perches.com> wrote:
[]
> > As for the commit itself: while I am sure this tool is very useful
> (and certainly you put a *lot* of effort into this tool), I don't see
> how it is related to the fallthrough remapping (at least the
> non-fallthrough parts).

It's not particularly related.

It's a 10 year old script that I just extended because it's
convenient for me.

I think I first posted it in 2011, but I started it as a
complement to checkpatch in 2010.

https://lwn.net/Articles/380161/

Doing the regexes for the fallthrough conversions took me
a couple hours.

> Also, we should consider whether we want more tools like this now or
> simply put the efforts into moving to clang-format.

I think clang-format could not do this sort of conversion.
Nor could coccinelle or checkpatch.

Anyway, it's not really necessary for this particular patch
to be applied, but it's a convenient way to show the script
has the capability to do fallthrough comment conversions.

I think it does conversions fairly reasonably but likely
some files could not compile without adding an #include
like:

#include <linux/compiler.h>


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/52794b248ba13e88ab4c30c9b6ea55a7be30df5d.camel%40perches.com.
