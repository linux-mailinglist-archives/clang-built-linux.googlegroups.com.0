Return-Path: <clang-built-linux+bncBDY3NC743AGBBNVO6LVAKGQE3OME4UA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id A382996E98
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Aug 2019 02:58:31 +0200 (CEST)
Received: by mail-qt1-x83a.google.com with SMTP id 91sf809300qtf.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Aug 2019 17:58:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566349110; cv=pass;
        d=google.com; s=arc-20160816;
        b=pMDHLwwIi38HFrlsko2fMFu3KG8tP6K1OZGQ2myQFgCm0ZK/NWsZfFCEbTlnWCOAE8
         Kb1h20w1OpibHABlKx2FkFcyCQnT/KC3bh70KRK+DqMYfTK7tbMxr0vi3U6t+CeNp9UK
         ybS6tkJtRpD0TrVDURTyPRxcrAWVQCldwhzBkW9x1vc9fdKX/EuVQJArC7ZC9wSpM4dx
         IgJ0Ne46VkPan03vkTSJ30PrMiK2jCkjASHGeL8MYGAZL5L/XcnxxG3CcvIyYe1ZqwMu
         c9ra2dk1ynJWTrrcLvW44/LUPa5byd4EOfVuaQNd7FsHVvl0HMnMwPPTyYlg+4M+n8JR
         95uA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=+hiSuuhaVh5ati0cCRRlE1xVVZ14l/P4JVhALecsq0Q=;
        b=cZByvw+QdEnBrXg5ln/O3ApjIPwkYEOKQ8Jz+dWs0RaJ/VyV0zq4+N7sDQFCXq+7QY
         rZU44xm2l9b4U81yU+pDkGhL48UEUHUas4jdql3390ef/mvtdM9UjGF0zDLFSoykgGIT
         GfegtFmxCZbNys01ecm+XA6ds7mneQoIH3LX/By7h+63sfDS+jbWkF6mKc8+dg3PLxX5
         Xjbc7/AnuV7kSqSlRF2iCR1SENM7DvxqvzFzbF7Mvek6mHV6KGmfrE3CGY7iYOoGlVqM
         6/Rvy8pyDcxYBdGVOccLg1rA5rnexBq1lM6iDYNCtF+YhqhK4dp27EogpAOlZI5wroXg
         JSCA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.246 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+hiSuuhaVh5ati0cCRRlE1xVVZ14l/P4JVhALecsq0Q=;
        b=Yz8cqEgPpWYYOh0hIHzgXe6Hx0AEZAW6WAaTPJ8uHh7m9VbBzSaOGXDyRq6IxmMeuZ
         mMkuHE5nMyy5afmUJEmpLIg3c3ua98hbzv3kH0U2nJQOtHBQWIlROw1RFxBRG47J09A1
         aZOmS6EhG0EYeMvUv0zfyn+I9kcNIaJoKz0/Z6dIc1ZmwNnLvvqqUKBx/BwBB6KuGpcx
         ruWtL90RGBRb+N9rqpCCrkhIsw0rghzUoQGuPejsDWhByzT/1Bc5Xmd7+gro0ILu2lj9
         HyIQ0A9vVcGEhKTBopRvenksU2IpuQtT6F91Pg9utB3ZIMcAuWSnxWmnmbQscoqer/p2
         YKhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+hiSuuhaVh5ati0cCRRlE1xVVZ14l/P4JVhALecsq0Q=;
        b=cB7bZsgoTkobFWU5gWLSvzXdoh7IpFEAlKQ8LtwoVO0UkT8Cob33dJnuWBDm9OAajr
         6Uu0R0EDwtGeBDtRdoZp8agmAh6S7L8deUQtai2zwabocnxKB9W7fGmGaRlTq93ueUQh
         Gem8BxSiLhe61tZdW/wjuaLxDIZGRi4Di0BhZw/hjsxsIPh8UmqMuur8Gtd6A588RCR8
         1kIStTp/G7uZLrLmDmgAtOvxZ5rZyYG+y/1AKBsQDdVodX0iRVFm1D9wN/M70LUFkLRv
         ytNxbuKxpvqDUDoXB/anuplWNyssnb58ajtV6HInwP9LMr3hEzDXiRd4gtu80pgd1eQh
         Kq5w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVsr93lfOMKDYeLys3/VNkC166IBsLQfiBdCxNXs/qmsx2+HX1D
	n/ObKMzsOyr7b0dwtdLlcWA=
X-Google-Smtp-Source: APXvYqy11UUTyi5ZX3NYakHv87lmtkf/FGyaaS5DKCCqLUsX/fYoIjqQLLUuGAS1QGIBYlXPZBGKyA==
X-Received: by 2002:a37:5846:: with SMTP id m67mr28244503qkb.375.1566349110706;
        Tue, 20 Aug 2019 17:58:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:ee15:: with SMTP id i21ls236090qkg.14.gmail; Tue, 20 Aug
 2019 17:58:30 -0700 (PDT)
X-Received: by 2002:a37:b982:: with SMTP id j124mr28771680qkf.251.1566349110419;
        Tue, 20 Aug 2019 17:58:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566349110; cv=none;
        d=google.com; s=arc-20160816;
        b=OULxEDNyK5G5fJoOxXZ18WQnb/t9b7hYHCdF5XtAQREJDHntLaawMS1fRhWA4xpLzM
         3yHY0V4WYVoBCMfrJBZpOHe/y6UnmwWNjdRndNMYF4D0z39/PKnk6Jm98bN1k7FT2Kmk
         0cToAp+WMdgwV9PYJDgMVxHeyTsqpOJyp4FQJycrZuQHUMLk5DSsGullg+0HDwRPS68r
         y27V1s75EFKCpFZYwX5l0ktOQ5PWO6Tn6kGy8rzvM35+8N9E8YjHa167dg2+NbEn5Emw
         n+Y3mcuRTZI08m166MFnj7UBkYKVO0SSZOy3BU3CBFuetX86wUKDNRFIScaNfIy2HaDH
         exVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=pg6PaYTCBX2LYGOr5ib5E0xALWl6uALgbv+MwFyG49E=;
        b=o2OnFOo9ljSj/e1m57Sf6EXD8//Vp1AcuhVbiH+B8d4DBdMl70Jf/afQpgQe3A3YaE
         QLjQjyryBFKle8hPNLFAOzFRKmoID7felnYSbJfnIJMb4549YkEu61zJ6oOvFnrXzfcB
         k1JGu/aXILzwgwjtp4kakYVyNzubF2RD5d8WuFA+pppAYaW7qktRwQ7iM3xaCTYMVQrq
         EjitwiMkd47pVS4aiPqLqnFaeDMOVcqSUxjtorbJxtUWFSCozJpv893ZHZWTiHEv0XtJ
         +jwxtUC/LMTOeM0lqbTp5+iyBMiaf5xmg5oKSbzX2cMCi7wJL1INWjOO8GYpwKThZFw1
         rTEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.246 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0246.hostedemail.com. [216.40.44.246])
        by gmr-mx.google.com with ESMTPS id g2si903567qkl.0.2019.08.20.17.58.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Aug 2019 17:58:30 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.246 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.246;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay06.hostedemail.com (Postfix) with ESMTP id F224E18011250;
	Wed, 21 Aug 2019 00:58:29 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 10,1,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::::,RULES_HIT:41:355:379:800:960:968:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:1963:2198:2199:2393:2553:2559:2562:2828:2840:3138:3139:3140:3141:3142:3353:3622:3865:3866:3867:3868:3870:3871:3872:3873:3874:4043:4250:4321:5007:6691:8603:10004:10400:10848:11232:11658:11914:12296:12297:12679:12740:12760:12895:13019:13069:13161:13229:13311:13357:13439:14096:14097:14181:14659:14721:21067:21080:21433:21627:21786:21796:21944:30036:30054:30060:30070:30079:30090:30091,0,RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.8.0.180 64.201.201.201,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:neutral,Custom_rules:0:1:0,LFtime:26,LUA_SUMMARY:none
X-HE-Tag: month89_fcc67fbeb43c
X-Filterd-Recvd-Size: 3518
Received: from XPS-9350.home (cpe-23-242-196-136.socal.res.rr.com [23.242.196.136])
	(Authenticated sender: joe@perches.com)
	by omf07.hostedemail.com (Postfix) with ESMTPA;
	Wed, 21 Aug 2019 00:58:28 +0000 (UTC)
Message-ID: <b77a3752d9b9897b8e65003ad88991b18ee33029.camel@perches.com>
Subject: stracpy
From: Joe Perches <joe@perches.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, Julia Lawall
 <julia.lawall@lip6.fr>,  "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 LKML <linux-kernel@vger.kernel.org>,  clang-built-linux@googlegroups.com,
 Linux Next Mailing List <linux-next@vger.kernel.org>
Date: Tue, 20 Aug 2019 17:58:27 -0700
In-Reply-To: <CAHk-=wg8vLmmwTGhXM51NpSWJW8RFEAKoXxG0Hu_Q9Uwbjj8kw@mail.gmail.com>
References: <c0005a09c89c20093ac699c97e7420331ec46b01.camel@perches.com>
	 <9c7a79b4d21aea52464d00c8fa4e4b92638560b6.camel@perches.com>
	 <CAHk-=wiL7jqYNfYrNikgBw3byY+Zn37-8D8yR=WUu0x=_2BpZA@mail.gmail.com>
	 <6a5f470c1375289908c37632572c4aa60d6486fa.camel@perches.com>
	 <4398924f28a58fca296d101dae11e7accce80656.camel@perches.com>
	 <ad42da450ccafcb571cca9289dcf52840dbb53d3.camel@perches.com>
	 <20190820092451.791c85e5@canb.auug.org.au>
	 <14723fccc2c3362cc045df17fc8554f37c8a8529.camel@perches.com>
	 <CAHk-=wgqQKoAnhmhGE-2PBFt7oQs9LLAATKbYa573UO=DPBE0Q@mail.gmail.com>
	 <edd8efd53fadd07992f804cc595c6ae5fdb60e73.camel@perches.com>
	 <CAHk-=wg8vLmmwTGhXM51NpSWJW8RFEAKoXxG0Hu_Q9Uwbjj8kw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.32.1-2
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.246 is neither permitted nor denied by best guess
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

On Tue, 2019-08-20 at 17:43 -0700, Linus Torvalds wrote:
> On Tue, Aug 20, 2019 at 5:20 PM Joe Perches <joe@perches.com> wrote:
> > Umm, btw: have you actually looked at stracpy?
> 
> Yes, Joe, I have.
> 
> What part of "there are now so many of them that no human being can
> keep track of them" didn't you see as a problem?

Well, the actual post-conversion uses to stracpy make the old ones
(strcpy/strlcpy/strncpy) exceptional uses that can be analyzed
quite a bit more easily.

btw: I really don't care what any convenience macro is named.

Most all of the strlcpy and strscpy uses actually _do_ copy to
a char array and strscpy is a simple interface that is somewhat
frequently misused.

> How many broken string functions are we going to do, adding yet
> another one when you notice that the _last_ one wasn't great?
>
> We never seem to remove the broken ones. We just add yet another one,
> and have a never-ending jumble of random letters.

<shrug> Intermediate problems.

> I would seriously suggest doing something like
>  and 
>    copy_string( dst, dstsize, src, srcsize, FLAGS );
> 
> where FLAGS migth be "pad" or whatever. Make it return the size of the
> resulting string, because while it can be convenient to pass 'dst" on,
> it's not useful.

That's simply not convenient for pointers.

Auditing the kernel for those unsized uses is a
large scope problem.  Even anything that uses
PAGE_SIZE sized allocations does sprintf
instead of snprintf.  Any show_<foo> for instance.

> And then maybe just add the helper macro that turns an array into a
> "pointer, size" combination, rather than yet another letter jumble.

Good luck with that when an unsized char pointer is the thing
passed to a function.

There are _way_ too many of those already in the kernel.
Simple strcpy is already used > 2000 times.



-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/b77a3752d9b9897b8e65003ad88991b18ee33029.camel%40perches.com.
