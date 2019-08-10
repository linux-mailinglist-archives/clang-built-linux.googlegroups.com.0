Return-Path: <clang-built-linux+bncBDY3NC743AGBBEONXTVAKGQEJEMZDLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id D377D88D23
	for <lists+clang-built-linux@lfdr.de>; Sat, 10 Aug 2019 22:18:26 +0200 (CEST)
Received: by mail-qt1-x839.google.com with SMTP id z13sf3156052qts.11
        for <lists+clang-built-linux@lfdr.de>; Sat, 10 Aug 2019 13:18:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565468305; cv=pass;
        d=google.com; s=arc-20160816;
        b=KHuB/ylUMv7oFIyk1ymG1jMEO0L44ZfofaLQngpVQbhmcP1ycgvEfi4DkPIp9Xu2pD
         OF07OqMBguJhZhIKLbyX2ZVb4XYpfC6ZcTOIPf0LU7h5f0NAyv6y26iEL6Qkf7Y/A5bl
         0EVC65OXnFLKrog1P74zy3tzuetqw1e4ZN6qJqO2DbSo6I91RC0IbGY3ve5Td/hdUOYv
         Hkqth4w9LBbrWSlV0ys/03eQND2H3VcfULGNIzp/n0icW1UyoS/4dyRds+UAIYrmZZIl
         NQtRFTk6NPDFollj0zMoVWJmRIqUiBLxkl99d/6qYmsAwUeaQmQxN6tDwGO565MXvFy9
         fiIA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=wdZd9F9aM8A/nsJlqh2ezzZ5e0AAtzmQMNhOHMEUEm4=;
        b=HNUNAoIZs2MWYl59JkeOL+aWE08VbqMWHUzUH9ejUBEDvBZG7UNvZX4/RkE9+HhK90
         KUpzPBBd0/2Y3sGtj5+mCr2mLRXHfiVanGA+jej+DuYuj4OlFgRVkKlP4jSt945FNx0C
         tO1XAtsI+GNcyBdg5pRVJwfDVsXcSt+U+SlwPGPk2J688460fWkRPB1ZIxWqSVeVK0HY
         TLSDB9yO7I5W9OprW7RGdIu6GeBVzVEnW1HkHAFMVnj4kt3hmISiPjNotne4X197Dh+y
         MpUd7pRFATCNiQMii37YeRuFVrlu3YdNReayEoE4pVwL/LIvPcYWgnCyipcMtCWJGMRO
         k5Mw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.148 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wdZd9F9aM8A/nsJlqh2ezzZ5e0AAtzmQMNhOHMEUEm4=;
        b=lKjC7m+Ecpv272i1JYgZj8lQ0HjGA9vQS1gXUHpD7w77ATxhp0173+0JI62jPNhzuN
         GJDsFRv2dFM2rMRX0g6BF8YOflKLVSDFtn7hJSmH+bKCcNllOEbofbSc0a4NMflpdpOu
         ku+Ky8I+TmazVcHc7VHa3Vblbc/OvSPYlrSloltTaYAeiqRYJqYAS99K2wSRqV5OAMv7
         N1qFVyuiTs3WeqPilcytuwEngnNJrsQm1gfJ2TdrcaGi4vP19sWFNzPDRLxzhrc+vMLH
         0373FzPNGvuMUZC4P5XoepXnFdM3hZ2tn81hXx+dUUsfv++yMwIeSceBDdpTLeXGxzcS
         ogmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wdZd9F9aM8A/nsJlqh2ezzZ5e0AAtzmQMNhOHMEUEm4=;
        b=e16R7+CtkQFWRI35JwUoJjwlcSj1KlVFlVDVJyfMz865zWfS9bovWv6u1DPkjv+DSW
         jIwOulOIhbk41MV0VNSgjHpSWcKhNRs+SemAgYCxcKlsj+T8VI1EU2gVpNa/aamErz/r
         5QQX07I1yaKfcwK/hi/iueQ0MliXaKDloU5xyT2rQwIAcAuHk9XuuUcpIQMK+Z4N1p1q
         lAcNggVv66UwKeK8g9hd2OEOO4bkMX6p41nYTaHIqlebGmM1SZ7h2PJ0pUTk5V4buHEd
         1SzVaXsz+GxzR50UGMhLL5NV/fNnMkou0w6Jek5xuvK6j58PDAreLloz4lbtrPrWkPds
         rzRA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX7NVZ3M0BI6ArhwIj9wKOgOQXb8yO6SG5qsSQerVu/Y95EQTOW
	FjJLRyiakBhbYejRsD+SSqM=
X-Google-Smtp-Source: APXvYqwZRQDvj4kniZ9PV7xoNVSqRqc2FtuRHTw4ODTpzZMXAjIKxUF620R8OO3SDU1vJQy/eP61Ag==
X-Received: by 2002:a0c:b786:: with SMTP id l6mr24213577qve.148.1565468305721;
        Sat, 10 Aug 2019 13:18:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4594:: with SMTP id l20ls3780196qtn.10.gmail; Sat, 10
 Aug 2019 13:18:25 -0700 (PDT)
X-Received: by 2002:ac8:468f:: with SMTP id g15mr20192931qto.353.1565468305479;
        Sat, 10 Aug 2019 13:18:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565468305; cv=none;
        d=google.com; s=arc-20160816;
        b=ia/PdrC74CdPlcnyHKkVEu4XM4kpHrgX8gF9AptIjk9ZQ6M1bDaicwkVH/5ZOZNE3z
         jXwzhhhBxWSui3VeoiKvNzY7/Y4Dfjjpl/VmuM89O9Oj2Px+pkK6HS0Hw37ebnSJ01vv
         UpgDxJ2C0bIPULy8etahXKGIG5yELz/yN75zWiHsMDoFmjUwgVMvKnmFmBPb6ShMjDuJ
         O5haePCjg9uIEFNJbo2xuPUP9IZjqktyv7H+esTMbn6c+BcOnS2EcU+/9nwkxPIdrxK6
         S4VQMHyjXORROV4gnhhj0cXXNFFkV8cgk3QX5hFF55WCjt7bHAHowBwxyX/jjmxJFXDt
         vgUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=/F/zQolkyY6O+n1EWK7U4Fbyw5n+LD2vqE/eHkZ9+Nc=;
        b=U3hKDX2XhmTVUlgOUK65af2v3UEUudKwx88LSz421V4QyUzsdBlIIHAg7+3cQymF3F
         5SebLxT/Qop8qFmPUUXNOII+c5Gypd9qIt8GIZywD2otTANuSSVFaPyX7CqHKRHz8kML
         q1tSzoaHx/JxTe52qNR+piJOZGzHCONWGcglHsdHvWiwkPFSNMh+tzvzih9ToPM1B23V
         wLBkmuhaTT6rItYtDyqaoIZOf8Zt3LjEKIxhRNz/0lQPTt8ylK0xk4jApm0XLu3++BXb
         beNJMkv8+01zHzNY4aUEP6nEdOL4x9KLRshyVRkazP2y7QNsEHn84HfrJdMLO+imVFmY
         tVqA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.148 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0148.hostedemail.com. [216.40.44.148])
        by gmr-mx.google.com with ESMTPS id 37si518055qtv.2.2019.08.10.13.18.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Aug 2019 13:18:25 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.148 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.148;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay07.hostedemail.com (Postfix) with ESMTP id DAC29181D33FC;
	Sat, 10 Aug 2019 20:18:24 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::,RULES_HIT:41:355:379:599:800:960:967:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2525:2553:2559:2564:2682:2685:2691:2828:2859:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3868:3870:3872:3873:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:4362:5007:7903:8985:9025:10004:10400:10848:11232:11658:11854:11914:12043:12050:12114:12297:12438:12555:12679:12740:12760:12895:12986:13069:13142:13161:13229:13230:13255:13311:13357:13439:14096:14097:14181:14659:14721:14819:21080:21451:21627:21811:30054:30070:30090:30091,0,RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.8.0.180 64.201.201.201,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:neutral,Custom_rules:0:0:0,LFtime:29,LUA_SUMMARY:none
X-HE-Tag: match45_2c3a38353573a
X-Filterd-Recvd-Size: 2366
Received: from XPS-9350 (cpe-23-242-196-136.socal.res.rr.com [23.242.196.136])
	(Authenticated sender: joe@perches.com)
	by omf17.hostedemail.com (Postfix) with ESMTPA;
	Sat, 10 Aug 2019 20:18:23 +0000 (UTC)
Message-ID: <6a5f470c1375289908c37632572c4aa60d6486fa.camel@perches.com>
Subject: Re: [PATCH] Makefile: Convert -Wimplicit-fallthrough=3 to just
 -Wimplicit-fallthrough for clang
From: Joe Perches <joe@perches.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: "Gustavo A. R. Silva" <gustavo@embeddedor.com>, LKML
	 <linux-kernel@vger.kernel.org>, clang-built-linux@googlegroups.com
Date: Sat, 10 Aug 2019 13:18:22 -0700
In-Reply-To: <CAHk-=wiL7jqYNfYrNikgBw3byY+Zn37-8D8yR=WUu0x=_2BpZA@mail.gmail.com>
References: <c0005a09c89c20093ac699c97e7420331ec46b01.camel@perches.com>
	 <9c7a79b4d21aea52464d00c8fa4e4b92638560b6.camel@perches.com>
	 <CAHk-=wiL7jqYNfYrNikgBw3byY+Zn37-8D8yR=WUu0x=_2BpZA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-0ubuntu0.18.10.1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.148 is neither permitted nor denied by best guess
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

On Sat, 2019-08-10 at 12:44 -0700, Linus Torvalds wrote:
> On Sat, Aug 10, 2019 at 12:32 PM Joe Perches <joe@perches.com> wrote:
> > What does it take for this sort of patch to be applied by you?
> 
> The basic rule tends to be: "normal channels".
[]
> I pulled from Gustavo earlier today to add a few more expected switch
> fall-through's, I guess I can take this Makefile change directly.

Thanks. It's simple enough.

There are classes of patches generated by scripts that have
no real mechanism to be applied today.

For instance: global coccinelle scripted changes to use stracpy
https://lore.kernel.org/lkml/alpine.DEB.2.21.1907251747560.2494@hadrien/

and trivial scripted changes to MAINTAINERS
https://lore.kernel.org/lkml/6482e6546dc328ec47b07dba9a78a9573ebb3e56.camel@perches.com/

that are basically impossible to be applied by anyone but you.

Otherwise there are hundreds of little micro patches most of
which would not otherwise be applied.

There should be some process available to get these treewide
or difficult to keep up-to-date and apply patches handled.

I believe these sorts of scripted patches should ideally
be handled immediately before an RC1 so other trees can be 
synchronized in the simplest way possible.


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/6a5f470c1375289908c37632572c4aa60d6486fa.camel%40perches.com.
