Return-Path: <clang-built-linux+bncBDY3NC743AGBBFMIT76QKGQE4LBCPVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 662492AAA7E
	for <lists+clang-built-linux@lfdr.de>; Sun,  8 Nov 2020 11:10:30 +0100 (CET)
Received: by mail-il1-x138.google.com with SMTP id e14sf3942668ilr.1
        for <lists+clang-built-linux@lfdr.de>; Sun, 08 Nov 2020 02:10:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604830229; cv=pass;
        d=google.com; s=arc-20160816;
        b=hG8z9VlsGtu0h1P7cQUDScC8mqoRRrjsjR77YULFffROHTtpUxHrSzWSh+vjXV9OJp
         JgXIPudgURrXyzQ1n/OKahHOpxckUhMtkRvhp+xYyCsu/6arWZ47iMuoPIpIt2+wid7e
         /P+iiVk4pVxfwJw77NJC/hEBkbYdcWPvFi6fh04FtAN3CUsO25da22S2EBTG2VPK/fzO
         7IZlR4wrN4nFG7r1c/Fr1shqIfOKSXP4KD7qFMCrDnM+AAZHjY/hFQ4t0zX7WXMWNMok
         kPWMVcjF2EjK44n078i/vCpNL9KBrQojClvkOmId3F89zFWvg8Rrm2+BWlAmjw/rKzfC
         fcJQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=zpxv/dcbc6+bphgSp+4P+fXjx4uzZuDWzAImg1VnaCw=;
        b=B+eNOeIqA3FT2lBZ4dRUbQIw4cxCTby8/aGLwireGELdH57+YLxRkZaAPLo4EXHT+Y
         BWHxDtpiILql5vPEFNUhiVSkdVBEGRbZt3sc+Ympi63A/SDxHK66hkeRjm1XgFm1IzOg
         oroK9ZvotlEIfwjT9ts9NtQiGzRJYPR6Mj0hAJDyj/LcIDqZDIDnz60ZTAKYuiXgA1nI
         XTEDvXru7OM9AR/6U90FTQkNIt1XSmcDMdFAbYVwjQR8xENNUhEfFeop8TFzHjDTeL4N
         FQbGU/uj2bE3R+08DzDKHFtwvzZaY6RYRnhvDn1GhyrCETKZoIURfsNfXxRo78BxUuAb
         sK1Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.139 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zpxv/dcbc6+bphgSp+4P+fXjx4uzZuDWzAImg1VnaCw=;
        b=SsGc94bsbgBz/kRYALmv190VKXJ4owKYlvpFRYPr0FiuPU33dpE4Kcr83tT4yeyPvJ
         Q/oVDphSYkzRqJeHgFic5anrE4TbrBuDVT6c0ToL1a/coYeZhdj+nN4JALcjd1IU9Dkn
         xAs3wjgCAtfj7F+voaRiwAOSXrZYK/0saevhUBJ4JP+ebR3riMrAW7gu+z7NHKDGTzIp
         DiYFUHShmFKB3XumtHsTn0W4jtQ9iGcWD99d7WJltccyjKpZf6Bhf7ebpqnYnEqKukD4
         PIXNwLn0m02uGydrG03HPqKawZyEH4+ZjeZ3HW+oQKsCp6wDckxzhMoiPQFsbyeY+ZwX
         BsIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zpxv/dcbc6+bphgSp+4P+fXjx4uzZuDWzAImg1VnaCw=;
        b=CmgwZ0QvihMHLdJ1JzxlfilWSG2g/BO4EkRsCBHSUEnM8COVEmhi33EwXZZ1Q2hC1m
         DAp2OZNIR8XZVZmsdCYqjEWe4GoT95z1rq2AJZPeueSvCAGwBtsibKJwR+u7VrAl/eQ3
         dJNlT95A+T725eCcEBLfyk8U3NvfCegnyB5LlSKcPuIYUXPDtOUDKqCBis8mZSkCxeiJ
         IhnaumS8JVU/UwmYkDM5AfB3crqgv/aDZpWl+Lo1D/UICwaALP5CsIasWMYXR8THOF3s
         t1t3/OWxJa/xepoZFLPfglPsp7DFaeifdJGkqkQjWhTVbRDVncA4NSsLT07G7FY2AzQw
         9oJA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530iN7G0XNdv8LJAJQgH5ebcaAfGGWZqxjPL7Z+e3UltPRCQEJuX
	Gv9DHoz2y39dMcFFHNkbFhQ=
X-Google-Smtp-Source: ABdhPJzS2k+3wkRvN4wF6dpMbtHngpK1ES2J+x4FMZhm94FA1qqUANtq93+OB7bFgHSG+GFRNGdmTQ==
X-Received: by 2002:a92:c88c:: with SMTP id w12mr7062893ilo.204.1604830229185;
        Sun, 08 Nov 2020 02:10:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:10a:: with SMTP id t10ls159231ilm.10.gmail; Sun, 08
 Nov 2020 02:10:28 -0800 (PST)
X-Received: by 2002:a92:700d:: with SMTP id l13mr6392083ilc.158.1604830228772;
        Sun, 08 Nov 2020 02:10:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604830228; cv=none;
        d=google.com; s=arc-20160816;
        b=Dh8NHVsY1tesy4UfqzYBc50A5gHRraQIm2iAN40cBqlgOS2kHPYerg8Ir7MAbJXv1m
         Vh55mW3yeOvdO6tDURVHMnPSp4nVaomKtOIYdUZYmTz3lFSX+z6rijQpc7WPRcs7MWW7
         t1KDj4aEZXoaeQ+iBH49NMZpRizwCqElldenqZo/XE8MeXLgc8HCYDanHiJb9b9bau1m
         FGwb0f/Xte6N1XqVrTIA1oBRDjmOvGJxALY3k1XycX4h2KXWccPAjrgXjeooFr2baJZ6
         fd/6p1rqIRCLBVKEL0XYfM4oqMs8Df2NfFJyMk0TPUp835Eyn4GYrGe36r6C5uKzqQFN
         CFlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=m+6R1yDC3T4qzqChf5tlcU4UFrIJuVX8vVUykjJnbDk=;
        b=mpY1fq+36/Yp+cz/xOfK2MkNOzkMmi3MTt7tZHK2wZehbF39egKiHZL5CB+wESBgiV
         t/KbiEZYuD/UsGKCgQ5H+C2er1U2SwbJUTA8iBosmdkGcM2nfNmflhIieB1VsylN6KLT
         Xz590K6ozRYSHlLXE/HsK0ooz/2i2Gf36t22eXV7nNkyFMKXHI3W8LVLK6OtZ26lGHN+
         CjlGg/MNGRTVQTFAJXnN8Y04Bx0sW2w8ne+/zDu/a9f4ki7PV/G4L2aRABiDaqQfLk+6
         DKIBn5AWJstTBjL93qmtBMJ7r9MP1jI1vgmumW/kcwPzWaHeiVh6QDSw0yuHv/A7Q5z+
         GSmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.139 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0139.hostedemail.com. [216.40.44.139])
        by gmr-mx.google.com with ESMTPS id h8si338282iog.4.2020.11.08.02.10.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Nov 2020 02:10:28 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.139 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.139;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay02.hostedemail.com (Postfix) with ESMTP id EA59A1730869;
	Sun,  8 Nov 2020 10:10:27 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:800:967:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2198:2199:2393:2525:2553:2565:2682:2685:2828:2859:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3353:3622:3865:3866:3867:3868:3870:3871:3872:3873:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:5007:6119:6742:7557:7903:8957:9025:10004:10400:10848:11232:11658:11914:12043:12294:12297:12438:12555:12740:12760:12895:13069:13095:13311:13357:13439:14181:14659:14721:14777:21080:21433:21451:21627:21811:21939:30012:30054:30070:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:364,LUA_SUMMARY:none
X-HE-Tag: bone67_5b0d737272e3
X-Filterd-Recvd-Size: 3142
Received: from XPS-9350.home (unknown [47.151.133.149])
	(Authenticated sender: joe@perches.com)
	by omf01.hostedemail.com (Postfix) with ESMTPA;
	Sun,  8 Nov 2020 10:10:25 +0000 (UTC)
Message-ID: <5e3265c241602bb54286fbaae9222070daa4768e.camel@perches.com>
Subject: Re: [PATCH] netfilter: conntrack: fix -Wformat
From: Joe Perches <joe@perches.com>
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>, Aditya Srivastava
	 <yashsri421@gmail.com>, Dwaipayan Ray <dwaipayanray1@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Pablo Neira Ayuso
 <pablo@netfilter.org>, Jozsef Kadlecsik <kadlec@netfilter.org>, Florian
 Westphal <fw@strlen.de>, "David S. Miller" <davem@davemloft.net>, Jakub
 Kicinski <kuba@kernel.org>,  Nathan Chancellor <natechancellor@gmail.com>,
 netfilter-devel@vger.kernel.org, coreteam@netfilter.org, 
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, 
 clang-built-linux@googlegroups.com
Date: Sun, 08 Nov 2020 02:10:24 -0800
In-Reply-To: <alpine.DEB.2.21.2011080829080.4909@felia>
References: <20201107075550.2244055-1-ndesaulniers@google.com>
	 <4910042649a4f3ab22fac93191b8c1fa0a2e17c3.camel@perches.com>
	 <alpine.DEB.2.21.2011080829080.4909@felia>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.1-1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.139 is neither permitted nor denied by best guess
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

On Sun, 2020-11-08 at 08:34 +0100, Lukas Bulwahn wrote:
> On Sat, 7 Nov 2020, Joe Perches wrote:
> > On Fri, 2020-11-06 at 23:55 -0800, Nick Desaulniers wrote:
> > > Clang is more aggressive about -Wformat warnings when the format flag
> > > specifies a type smaller than the parameter. Fixes 8 instances of:
> > > 
> > > warning: format specifies type 'unsigned short' but the argument has
> > > type 'int' [-Wformat]
> > 
> > Likely clang's -Wformat message is still bogus.
> > Wasn't that going to be fixed?
> > 
> > Integer promotions are already done on these types to int anyway.
> > Didn't we have this discussion last year?
> > 
> > https://lore.kernel.org/lkml/CAKwvOd=mqzj2pAZEUsW-M_62xn4pijpCJmP=B1h_-wEb0NeZsA@mail.gmail.com/
> > https://lore.kernel.org/lkml/CAHk-=wgoxnmsj8GEVFJSvTwdnWm8wVJthefNk2n6+4TC=20e0Q@mail.gmail.com/
> > https://lore.kernel.org/lkml/a68114afb134b8633905f5a25ae7c4e6799ce8f1.camel@perches.com/
> > 
> > Look at commit cbacb5ab0aa0 ("docs: printk-formats: Stop encouraging use
> > of unnecessary %h[xudi] and %hh[xudi]")
> > 
> > The "h" and "hh" things should never be used. The only reason for them
> > being used if if you have an "int", but you want to print it out as a
> > "char" (and honestly, that is a really bad reason, you'd be better off
> > just using a proper cast to make the code more obvious).
> > 
> Joe, would this be a good rule to check for in checkpatch?
> 
> Can Dwaipayan or Aditya give it a try to create a suitable patch to add 
> such a rule?

$ git grep -P '"[^"]*%[\d\.\*\-]*h+[idux].*"'

I suppose so.
Please avoid warning on scanf and its variants and the asm bits though.

> Dwaipayan, Aditya, if Joe thinks it is worth a rule, it is "first come, 
> first serve" for you to take that task. 


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/5e3265c241602bb54286fbaae9222070daa4768e.camel%40perches.com.
