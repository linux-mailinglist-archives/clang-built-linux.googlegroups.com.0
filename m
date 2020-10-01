Return-Path: <clang-built-linux+bncBDY3NC743AGBBS7T3D5QKGQEPDOPVCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id A1599280853
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Oct 2020 22:19:24 +0200 (CEST)
Received: by mail-oo1-xc3e.google.com with SMTP id r3sf40690ooq.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Oct 2020 13:19:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601583563; cv=pass;
        d=google.com; s=arc-20160816;
        b=dXaeVFx2118yhC5Z4+b2HmSe8ly28hVGVO7mMIcG2CQ0HpHvwzd2TejZcqxgaLEd/a
         YqQYu5Jzu8t4xXWBHpbjClEc/MM+3kdbtPlQPwG9v3Xdem1XUk767KdbIgFXLBMW17Nd
         Wy7DdY4lo9orB2pboj1b95OAFlpBEk/kyzJ/XxQR/9IOoMv7H3x05EtHnnpGAm4y6Mhs
         U1UMlO5YrYjjkjBeYIyL17By4eNnO3YOedp0pQtR5L3J9RtnRDnrPpBKZuBtmM2CDnED
         8fXWJ7gzvC/Arv6IK+yDMX/Q2pU2wgkVC7eiInoI3pIm9vGprBKjWcTk1Q0Z59umFbbM
         KCmA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=RARW9kC+FQT0h7LCBOrYthk/VSpy0rxqWqWRJx9K1Xg=;
        b=vaFWC7of7TnU/R6EvyhgflhYFqIzI0wUnuxY3HdiQmdQEmMmx7Vn4wvOKGlWKvTSQh
         OWe3wLimXkd8kLwFnpy0omcZKNHIxVtVq9hQKgYJ4B9Z8tGpq3v30ztche/tlD6LftmT
         oMe2ouSMvML7LRFcc4zzaUqwOJKV1jdNhyQDkZ8p+wc0Uu17sea7W8jn+kzF+Iw85XIh
         wg+WHmbcUe2yjHwtTlDqpuKqebbcm57QbysZnoQMsEaq6i9JHyI1zMMDr9phF8lgbhCo
         JRgNu8Y6YqZlMt1OEGP92OjMacecnw8JqsinOK077GzzfyvXoHjdUYW8w8Qcv5N3xgGk
         Qqqw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.164 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RARW9kC+FQT0h7LCBOrYthk/VSpy0rxqWqWRJx9K1Xg=;
        b=atgCFDa5J9EIvoruok5bv3ijRubMCEpcZQ8hnaFZ/lYT2Gq1nvYLRvOyV6dll3Paeg
         fN20ScZbbR6X1GqExe7UcKJFICrCfYTuj+98dDjA9lbdYbEaOCKGnsv/RfeJ2vEdrgFs
         Dygi3My8WMYFrOr9hcgAg9xchl6P7N3xV441IET1RKq/rQoyCmtCsWo69KHZPkRoDrk4
         eib59lASOLMJxXTMOG6FLnW5kxN4OhAiuxvZikXwxb0sgnOUDAgt5oNHhtoQo3wtlWzb
         xMgK+CgNpz51Ztero4AxT4rjtEt+kW0VU3PzRcEojgT2C+3HYJpxcVKDwvjiUSLil/i6
         xRZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RARW9kC+FQT0h7LCBOrYthk/VSpy0rxqWqWRJx9K1Xg=;
        b=BzbrwvQGMMCWYWIF07gkrVQHa8u6AiKi6PVErKjZhPX2oM1WJ61KLjp/qnuzKfwxFp
         0juWoLJu3HEpMMiyal7zEOzzamtt3rD7QlKch1sEiZogbnwstA+gjOoIz7LlLN+Xy7kQ
         96U4FNBbj4Xz98HpQGxRvFmJVQ4+8KsQEa45Ec3FogPYXYwqa0xug6TV9NLmz/KzNr17
         1rM3QE5bHcIaz+6Fe/NvtFnuxjmjTGN1VFFKbOeyv4aH1OGC1IVA/K7lWMSSUkDx1xEZ
         4nzxvDWIv+EaHvYzbQNtGeQPsEbMQm6ISd1XPTEMv+M95quITMWVx3wgYA9co1XHcB9i
         eCgg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ywNZh/xJVit0J9UQ1J8GHvj6RlA85mFzSNKaW/8yT5epFzV4X
	lHrKqtqoIbp0ntsvtWdL/IM=
X-Google-Smtp-Source: ABdhPJyKa5FSHY/iCbNx/LnHNDdiXLBIxkq+FaSjHAOJiLlmIo6Dn2xlJcEsB9wnK1MTrSAFaS9Q/Q==
X-Received: by 2002:aca:603:: with SMTP id 3mr1091556oig.49.1601583563340;
        Thu, 01 Oct 2020 13:19:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:119a:: with SMTP id u26ls1715373otq.6.gmail; Thu,
 01 Oct 2020 13:19:23 -0700 (PDT)
X-Received: by 2002:a9d:5503:: with SMTP id l3mr6247300oth.309.1601583562941;
        Thu, 01 Oct 2020 13:19:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601583562; cv=none;
        d=google.com; s=arc-20160816;
        b=BxGhYFLfy/sECCJ0tNOwS7o1gFK28xGxgXYj/Tql3E0knx5ADYfRxTqlQhsB/hKUq7
         o5WGJpkWUy8Em8igHrlszbszGYf/Ni0UDpd7vy0xzOfM9I8UUuuO3Uz4B55LdPyiAqwH
         dciE2KUiXoXf85lWlsByLig8mhuQw2tq2mZn37ZH7q1DTrUJ7lj5FAI35uzD84Z7jsSO
         PdxbaxtxNWtPnevzVaM8zbTWJPVKd3OrgnjDV9Xtt9m0vbAag6hkj7Zzsxa9goP3AsTI
         9mUJoiWUh9wTMuzo/mTfZdf930arJp11DoWTT1IHSjwZlVJKKr4AApOAYJdp117U3bBF
         BCsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=JGT3y+W9ICOXUbMr/rRsscaVpA500wiXQ/vDGAXkQc4=;
        b=ubTtMO866Tu0LN9AudXQjQAenE3FXZi7OXBmsbjFvM9e9MrYmY0YEN3U7rbIYetzM0
         0dykieq+3dqRKa0pnokGfo3AaHPKGk62w/Cj7UlSHLDmBTgkROqWcps70d+RqkmH/i9w
         vyAqcsaBNnWU5YHDXaKthqU1W0ZgWq6f2yddXwZMwRsfwwvDynugxOnfiW/tR2lgRA+1
         PwjI1y29p+HZ3Oa8CCn0RN+ScTeSQhnk7Xpr1uyofhWQbjrHpJSGOdRxDHEPt+KUDXjO
         2I1Zklp7WOnre/ZQyfH2S+FJ8pODVY+KaaKDKrMjWzaTzNyPAslECApLULKShdbUrMYr
         YWSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.164 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0164.hostedemail.com. [216.40.44.164])
        by gmr-mx.google.com with ESMTPS id k144si328872oih.5.2020.10.01.13.19.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2020 13:19:22 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.164 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.164;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay04.hostedemail.com (Postfix) with ESMTP id 283CD180A7FF8;
	Thu,  1 Oct 2020 20:19:22 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1540:1593:1594:1711:1730:1747:1777:1792:2194:2199:2393:2553:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3868:3871:3872:3873:4321:5007:6120:6742:9040:9108:10004:10400:10471:10848:11232:11658:11914:12296:12297:12740:12760:12895:13069:13255:13311:13357:13439:14096:14097:14180:14659:14721:21060:21080:21433:21451:21627:30054:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: mice75_5c06f2d2719e
X-Filterd-Recvd-Size: 2850
Received: from XPS-9350.home (unknown [47.151.133.149])
	(Authenticated sender: joe@perches.com)
	by omf14.hostedemail.com (Postfix) with ESMTPA;
	Thu,  1 Oct 2020 20:19:19 +0000 (UTC)
Message-ID: <61445711991c2d6eb7c8fb05bed2814458e2593b.camel@perches.com>
Subject: Re: [RFC PATCH next-20200930] treewide: Convert macro and uses of
 __section(foo) to __section("foo")
From: Joe Perches <joe@perches.com>
To: Segher Boessenkool <segher@kernel.crashing.org>, Miguel Ojeda
	 <miguel.ojeda.sandonis@gmail.com>
Cc: Kees Cook <keescook@chromium.org>, "Paul E . McKenney"
 <paulmck@kernel.org>,  Nick Desaulniers <ndesaulniers@google.com>, Lai
 Jiangshan <jiangshanlai@gmail.com>, Josh Triplett <josh@joshtriplett.org>,
 Steven Rostedt <rostedt@goodmis.org>, LKML <linux-kernel@vger.kernel.org>,
 rcu@vger.kernel.org, Clang-Built-Linux ML
 <clang-built-linux@googlegroups.com>, Mathieu Desnoyers
 <mathieu.desnoyers@efficios.com>, Sedat Dilek <sedat.dilek@gmail.com>, Paul
 Mackerras <paulus@samba.org>, linuxppc-dev@lists.ozlabs.org
Date: Thu, 01 Oct 2020 13:19:18 -0700
In-Reply-To: <20201001193937.GM28786@gate.crashing.org>
References: <20200929192549.501516-1-ndesaulniers@google.com>
	 <CA+icZUVgfnVQ1=zjUGhGKnJAs9g3Q06sWN3ffNdrfZMZLCEkbA@mail.gmail.com>
	 <133589afbe999347454dfcc46ae782897bf9e3a2.camel@perches.com>
	 <46f69161e60b802488ba8c8f3f8bbf922aa3b49b.camel@perches.com>
	 <CAKwvOdkhyvTpY6pHT+CLSsBFuKRWsXucjbwN_tyJAsryZXvG1A@mail.gmail.com>
	 <417ffa3fd3fba5d4a481db6a0b0c9b48cbbb17c4.camel@perches.com>
	 <CAKwvOd=P+j0RaQfHsXPfB0EL3oRgAu8Q0+spUOn_v-p2+3=3pw@mail.gmail.com>
	 <aefe941251d5d58062d06099afb58dea1d1d4e17.camel@perches.com>
	 <46040e2776a4848add06126ce1cb8f846709294f.camel@perches.com>
	 <CANiq72mSjs4myQQtUoegjRggjTx9UF70nAcWoXRoTeLMOuf0xQ@mail.gmail.com>
	 <20201001193937.GM28786@gate.crashing.org>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.4-0ubuntu1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.164 is neither permitted nor denied by best guess
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

On Thu, 2020-10-01 at 14:39 -0500, Segher Boessenkool wrch/ote:
> Hi!
> 
> On Thu, Oct 01, 2020 at 12:15:39PM +0200, Miguel Ojeda wrote:
> > > So it looks like the best option is to exclude these
> > > 2 files from conversion.
> > 
> > Agreed. Nevertheless, is there any reason arch/powerpc/* should not be
> > compiling cleanly with compiler.h? (CC'ing the rest of the PowerPC
> > reviewers and ML).
> 
> You need to #include compiler_types.h to get this #define?

Actually no, you need to add

#include <linux/compiler_attributes.h>

to both files and then it builds properly.

Ideally though nothing should include this file directly.

> (The twice-defined thing is a warning, not an error.  It should be fixed
> of course, but it is less important; although it may be pointing to a
> deeper problem.)
> 
> 
> Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/61445711991c2d6eb7c8fb05bed2814458e2593b.camel%40perches.com.
